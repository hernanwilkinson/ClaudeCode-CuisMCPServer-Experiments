#!/usr/bin/env python3
"""Summarize token use, cost and tool calls for one Claude Code session.

Usage:
    python3 session-tokens.py <session.jsonl> [--json] [--per-tool]
    python3 session-tokens.py --latest [--json] [--per-tool]

Reads a session transcript from ~/.claude/projects/<escaped-cwd>/<session-id>.jsonl
and the subagent transcripts under <session-id>/subagents/.

Two traps this handles, both of which distort a naive sum:
  * one assistant message is written on several lines, one per content block,
    and every line repeats the same message-level usage. Usage is deduped by
    message id; tool calls are deduped separately by tool_use id, because the
    line carrying a tool_use block is usually not the message's first line.
  * subagents write to their own files under <session-id>/subagents/, so a
    main-transcript-only sum undercounts any session that spawned agents.

Known limitation, measured on Claude Code 2.1.212: subagent transcripts are
not a complete usage record. An agent observed making 103 tool calls logged
only 8 requests, with output_tokens of 2 to 10 each, which cannot be right.
Main-session records look sound: their top-level usage already equals the sum
over the per-request `iterations` array. So treat the subagent share here as a
floor, and use OpenTelemetry (claude_code.api_request events, which carry
query_source=subagent) when subagent cost has to be exact.
"""

import json
import sys
from collections import Counter, defaultdict
from pathlib import Path

# USD per million tokens. Source: platform.claude.com/docs/en/about-claude/pricing
# Columns: base input, 5m cache write, 1h cache write, cache read, output.
PRICES = {
    "claude-fable-5-1":       (10.0, 12.50, 20.0, 0.25, 50.0),
    "claude-mythos-5-1":      (10.0, 12.50, 20.0, 0.25, 50.0),
    "claude-fable-5":         (10.0, 12.50, 20.0, 1.00, 50.0),
    "claude-opus-5":          ( 5.0,  6.25, 10.0, 0.50, 25.0),
    "claude-opus-4-8":        ( 5.0,  6.25, 10.0, 0.50, 25.0),
    "claude-opus-4-5":        ( 5.0,  6.25, 10.0, 0.50, 25.0),
    "claude-sonnet-5":        ( 2.0,  2.50,  4.0, 0.20, 10.0),
    "claude-sonnet-4-5":      ( 3.0,  3.75,  6.0, 0.30, 15.0),
    "claude-haiku-4-5":       ( 1.0,  1.25,  2.0, 0.10,  5.0),
}
WEB_SEARCH_USD = 10.0 / 1000  # per search


def price_for(model):
    if model in PRICES:
        return PRICES[model]
    for known, row in PRICES.items():          # tolerate dated suffixes
        if model and model.startswith(known):
            return row
    return None


def blank():
    return dict(input=0, cache_write_5m=0, cache_write_1h=0, cache_read=0,
                output=0, thinking=0, web_search=0, web_fetch=0, requests=0)


def read_transcript(path, per_model, tools, seen_ids, seen_tool_ids):
    """Accumulate usage per model and tool-call counts from one JSONL file.

    Usage is deduped by message id, tool calls by tool_use id. They need
    separate sets: one assistant message is spread over several lines, and the
    line carrying a tool_use block is usually not the first line of that
    message, so skipping duplicate lines wholesale loses every tool call.
    """
    with open(path, encoding="utf-8") as handle:
        for line in handle:
            line = line.strip()
            if not line:
                continue
            try:
                record = json.loads(line)
            except json.JSONDecodeError:
                continue

            message = record.get("message") or {}

            if record.get("type") == "assistant":
                message_id = message.get("id")
                already = bool(message_id) and message_id in seen_ids
                if message_id:
                    seen_ids.add(message_id)
                usage = message.get("usage") or {}
                if usage and not already:
                    bucket = per_model[message.get("model") or "unknown"]
                    bucket["input"] += usage.get("input_tokens", 0)
                    bucket["cache_read"] += usage.get("cache_read_input_tokens", 0)
                    bucket["output"] += usage.get("output_tokens", 0)
                    bucket["thinking"] += (usage.get("output_tokens_details") or {}).get(
                        "thinking_tokens", 0)
                    bucket["requests"] += 1
                    creation = usage.get("cache_creation") or {}
                    if creation:
                        bucket["cache_write_5m"] += creation.get("ephemeral_5m_input_tokens", 0)
                        bucket["cache_write_1h"] += creation.get("ephemeral_1h_input_tokens", 0)
                    else:                        # older transcripts: no split recorded
                        bucket["cache_write_5m"] += usage.get("cache_creation_input_tokens", 0)
                    server = usage.get("server_tool_use") or {}
                    bucket["web_search"] += server.get("web_search_requests", 0)
                    bucket["web_fetch"] += server.get("web_fetch_requests", 0)

            content = message.get("content")
            if isinstance(content, list):
                for block in content:
                    if not isinstance(block, dict) or block.get("type") != "tool_use":
                        continue
                    block_id = block.get("id")
                    if block_id and block_id in seen_tool_ids:
                        continue
                    if block_id:
                        seen_tool_ids.add(block_id)
                    tools[block.get("name", "?")] += 1


def cost_of(bucket, model):
    row = price_for(model)
    if row is None:
        return None
    inp, write5, write1h, read, out = row
    return (bucket["input"] * inp
            + bucket["cache_write_5m"] * write5
            + bucket["cache_write_1h"] * write1h
            + bucket["cache_read"] * read
            + bucket["output"] * out) / 1e6 + bucket["web_search"] * WEB_SEARCH_USD


def latest_session():
    root = Path.home() / ".claude" / "projects"
    files = sorted(root.glob("*/*.jsonl"), key=lambda p: p.stat().st_mtime)
    if not files:
        sys.exit("no session transcripts found under ~/.claude/projects")
    return files[-1]


def main():
    args = [a for a in sys.argv[1:] if not a.startswith("--")]
    flags = {a for a in sys.argv[1:] if a.startswith("--")}

    main_path = latest_session() if "--latest" in flags else Path(args[0]) if args else None
    if main_path is None:
        sys.exit(__doc__)

    subagent_dir = main_path.with_suffix("") / "subagents"
    subagent_files = sorted(subagent_dir.glob("*.jsonl")) if subagent_dir.is_dir() else []

    per_model, tools = defaultdict(blank), Counter()
    seen, seen_tools = set(), set()
    read_transcript(main_path, per_model, tools, seen, seen_tools)

    sub_model, sub_tools = defaultdict(blank), Counter()
    for path in subagent_files:
        read_transcript(path, sub_model, sub_tools, seen, seen_tools)

    combined = defaultdict(blank)
    for source in (per_model, sub_model):
        for model, bucket in source.items():
            for key, value in bucket.items():
                combined[model][key] += value

    total_cost = 0.0
    unpriced = []
    for model, bucket in combined.items():
        cost = cost_of(bucket, model)
        if cost is None:
            unpriced.append(model)
        else:
            total_cost += cost

    if "--json" in flags:
        print(json.dumps({
            "session": main_path.stem,
            "subagent_transcripts": len(subagent_files),
            "per_model": {m: dict(b, cost_usd=cost_of(b, m)) for m, b in combined.items()},
            "main_only": {m: dict(b) for m, b in per_model.items()},
            "subagents_only": {m: dict(b) for m, b in sub_model.items()},
            "tool_calls": dict(tools + sub_tools),
            "total_cost_usd": round(total_cost, 4),
        }, indent=2))
        return

    print(f"session {main_path.stem}")
    print(f"  transcript      {main_path}")
    print(f"  subagent files  {len(subagent_files)}")
    print()
    header = f"{'model':<22}{'reqs':>6}{'input':>10}{'cache wr':>11}{'cache rd':>11}{'output':>10}{'think':>10}{'USD':>9}"
    print(header)
    print("-" * len(header))
    for model, bucket in sorted(combined.items()):
        cost = cost_of(bucket, model)
        print(f"{model:<22}{bucket['requests']:>6}{bucket['input']:>10,}"
              f"{bucket['cache_write_5m'] + bucket['cache_write_1h']:>11,}"
              f"{bucket['cache_read']:>11,}{bucket['output']:>10,}"
              f"{bucket['thinking']:>10,}"
              f"{('  n/a' if cost is None else f'{cost:>9.2f}')}")
    grand = {k: sum(b[k] for b in combined.values()) for k in blank()}
    print("-" * len(header))
    print(f"{'total':<22}{grand['requests']:>6}{grand['input']:>10,}"
          f"{grand['cache_write_5m'] + grand['cache_write_1h']:>11,}"
          f"{grand['cache_read']:>11,}{grand['output']:>10,}"
          f"{grand['thinking']:>10,}{total_cost:>9.2f}")
    if unpriced:
        print(f"  (no price table for: {', '.join(unpriced)})")
    if grand["web_search"] or grand["web_fetch"]:
        print(f"\n  web searches {grand['web_search']} (billed at $10/1000), "
              f"web fetches {grand['web_fetch']} (free)")

    billed = grand["input"] + grand["cache_write_5m"] + grand["cache_write_1h"] + grand["cache_read"]
    if billed:
        share = 100 * grand["cache_read"] / billed
        print(f"\n  input side is {billed:,} tokens, {share:.0f}% of it cache reads")

    if "--per-tool" in flags:
        print("\ntool calls")
        for name, count in (tools + sub_tools).most_common():
            print(f"  {count:>4}  {name}")


if __name__ == "__main__":
    main()
