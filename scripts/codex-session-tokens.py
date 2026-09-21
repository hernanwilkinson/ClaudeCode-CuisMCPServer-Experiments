#!/usr/bin/env python3
"""Tokens of a Codex session, in the shape session-tokens.py writes for Claude Code, so that
one analysis reads both agents.

    codex-session-tokens.py <rollout.jsonl> --json

Codex writes one `token_usage_record` per API response into the session rollout
($CODEX_HOME/sessions/YYYY/MM/DD/rollout-*.jsonl), each with the usage of that response:

    {"usage": {"input_tokens", "cached_input_tokens", "cache_write_input_tokens",
               "output_tokens", "reasoning_output_tokens", "total_tokens"}}

The two accountings line up field by field, with one difference in what `input_tokens` means:
Anthropic reports the uncached input apart from the cache reads and writes, OpenAI reports the
whole input and the cached part of it. So the uncached input is the subtraction. In both
`output` includes the reasoning or thinking tokens and `thinking` is that subset, so the sum
`input + cache_write + cache_read` is the input side of a request in either agent.

Cost is left out: the price of the Codex models used here is not recorded anywhere in this
repository, and every comparison in the study is made in tokens.
"""
import json
import sys
from collections import defaultdict


def empty():
    return dict(input=0, cache_write_5m=0, cache_write_1h=0, cache_read=0,
                output=0, thinking=0, web_search=0, web_fetch=0, requests=0)


def read(path):
    per_model = defaultdict(empty)
    model = "unknown"
    for line in open(path):
        try:
            record = json.loads(line)
        except ValueError:
            continue
        payload = record.get("payload") or {}
        if record.get("type") == "turn_context":
            model = payload.get("model") or model
        elif record.get("type") == "session_meta":
            model = ((payload.get("turn_context") or {}).get("model")) or payload.get("model") or model
        elif record.get("type") == "token_usage_record":
            usage = payload.get("usage") or {}
            bucket = per_model[model]
            cached = usage.get("cached_input_tokens", 0)
            bucket["input"] += max(0, usage.get("input_tokens", 0) - cached)
            bucket["cache_read"] += cached
            bucket["cache_write_1h"] += usage.get("cache_write_input_tokens", 0)
            bucket["output"] += usage.get("output_tokens", 0)
            bucket["thinking"] += usage.get("reasoning_output_tokens", 0)
            bucket["requests"] += 1
    for bucket in per_model.values():
        bucket["cost_usd"] = None
    return dict(per_model)


def main():
    path = sys.argv[1]
    per_model = read(path)
    result = {"session": "codex-rollout", "subagent_transcripts": 0,
              "per_model": per_model, "main_only": per_model}
    if "--json" in sys.argv:
        json.dump(result, sys.stdout, indent=2)
        print()
        return
    header = f"{'model':<22}{'reqs':>6}{'input':>10}{'cache wr':>11}{'cache rd':>11}{'output':>10}{'think':>10}"
    print(header)
    for model, b in per_model.items():
        print(f"{model:<22}{b['requests']:>6}{b['input']:>10,}{b['cache_write_1h']:>11,}"
              f"{b['cache_read']:>11,}{b['output']:>10,}{b['thinking']:>10,}")


if __name__ == "__main__":
    main()
