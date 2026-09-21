# 019-CodexSmoke

## Idea

Not an experiment: the plumbing check for running the same cells with OpenAI's Codex instead of
Claude Code. One run of the `smoke` exercise (a bounded stack, greenfield, no given tests) in
`1-Evaluate+TestRunning : 1-Empty : free` with each agent, on 2026-09-21, to see whether the
harness can drive Codex end to end and whether it collects the same measures. The numbers below
compare the two harnesses, not the two agents: the models differ (`gpt-6-astra` against
`claude-haiku-4-5`), the effort settings are not the same scale, and one run says nothing.

## What was added

- `scripts/2-runCell.sh --agent codex`, a branch beside the `claude -p` one. The default is
  unchanged, so every existing cell runs exactly as before.
- `scripts/codex-session-tokens.py`, the counterpart of `session-tokens.py`: it reads the Codex
  session rollout and writes `usage.json` in the same shape, so one analysis reads both agents.

The invocation, with what each flag replaces:

```
codex exec "<prompt>" --json --ignore-user-config --ignore-rules --skip-git-repo-check \
  --sandbox read-only -c approval_policy="never" \
  -c 'mcp_servers.Cuis.default_tools_approval_mode="approve"' \
  --model M -c model_reasoning_effort=E \
  -c 'mcp_servers.Cuis.url="http://127.0.0.1:PORT/mcp"' \
  -c 'mcp_servers.Cuis.bearer_token_env_var="CUIS_MCP_TOKEN"' < /dev/null
```

| Claude Code | Codex |
|---|---|
| `-p` prompt, `--output-format stream-json --verbose` | `codex exec`, `--json` |
| `--setting-sources project` | `--ignore-user-config --ignore-rules`; auth still comes from `CODEX_HOME`, so no credential is copied into the run |
| `CLAUDE.md` | `AGENTS.md` |
| `--mcp-config .mcp.json --strict-mcp-config` | `-c mcp_servers.Cuis.url` and `.bearer_token_env_var`; the server is reached over streamable HTTP with the same per-run token, no shim needed |
| `--permission-mode bypassPermissions` | `-c approval_policy="never"` plus `default_tools_approval_mode="approve"` on the server |
| `--tools ""` | no equivalent, see the caveats |
| `--max-budget-usd` | no equivalent; the watchdog timeout is the only cap |
| transcript in `~/.claude/projects` | rollout in `$CODEX_HOME/sessions/YYYY/MM/DD/rollout-*<thread-id>.jsonl` |

Five things had to be found by running it, each one a silent failure otherwise:

1. **`< /dev/null` is mandatory.** Without it `codex exec` waits on stdin forever, printing
   only "Reading additional input from stdin...".
2. **`approval_policy = "never"` refuses the MCP calls too**, not just shell commands: the
   agent reported "MCP tool call requires approval, but approval policy is never" and delivered
   nothing. The image's tools have to be exempted per server with
   `default_tools_approval_mode="approve"` (`auto` is not enough).
3. **`--ask-for-approval` is a global option that `codex exec` does not accept**; the same
   setting has to go through `-c approval_policy`.
4. **There is no single `result` record.** A session is a sequence of turns; the manifest now
   takes the last agent message as the answer, counts `turn.completed` as turns and reads the
   usage from it.
5. **The guidance file is hashed by name**, so the manifest records `AGENTS.md` or `CLAUDE.md`
   according to the agent.

Everything downstream needed no change at all: `3-analyzeRun.sh`, the analysis image, the
acceptance and coverage measures, the design metrics, the mentor findings and the process
summary, because they read the package the agent produced and the server's own call log.

## Results

| Agent | Model | Status | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Calls | Tool errors | Seconds | Own tests | Classes / methods | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Codex | gpt-6-astra, effort low | completed | 78 k | 5.8 k | 72 k | 1.9 k | 15 | 5 | 5 | 0 | 72 | 16/16 | 1 / 9 | 3 | 20 | 100.0 |
| Claude Code | claude-haiku-4-5, effort low | completed | 432 k | 17.4 k | 415 k | 6.4 k | 1,512 | 34 | 33 | 1 | 78 | 16/16 | 1 / 7 | 4 | 37 | 100.0 |

Tools used, from the server's log:

| Agent | Calls | Evaluate kinds |
|---|---|---|
| Codex | `smalltalk_evaluate` 4, `smalltalk_run_tests_in_category` 1 | 1 reflection, 3 defining code |
| Claude Code | `smalltalk_evaluate` 30, `smalltalk_run_test_class` 2, `smalltalk_save_image` 1 | 30 defining code |

Runs: `20260921-144214-11671` (Codex), `20260921-144419-12403` (Claude Code).

## What it says

**The port works and the measures line up.** Every field the harness collects for Claude Code it
now collects for Codex, with the same meaning: the token buckets map one to one once the
uncached input is derived by subtraction (Anthropic reports the uncached input apart from the
cache, OpenAI reports the whole input and the cached part of it), one `token_usage_record` per
API response gives the request count, and the tool calls and their answers come from the image,
not from the agent, so they were already agent-independent. The only measure with no
counterpart is dollar cost, because no price table for these models exists in this repository.
Every comparison in the study is made in tokens, so nothing depends on it.

**Two things stop this from being a clean cross-agent experiment.**

- **The tool set cannot be taken away.** Scenarios 1 to 7 rest on `--tools ""`: the agent has no
  file, shell or web access, so the image is the only place the work can exist. Codex is built
  around a shell and has no such switch. The closest is `--sandbox read-only` in an empty working
  directory, which forbids writing and the network but still lets the agent run commands. An
  agent that can look around may behave differently from one that cannot, and that is exactly
  the axis the tool-set experiments measure.
- **The agent and the model are bundled.** Codex runs GPT models and Claude Code runs Claude
  models, so a difference cannot be attributed to either. A cross-agent run answers "does the
  mechanism hold elsewhere", not "which agent is cheaper".

**What would be worth running**, given that: the batch and tool-set matrices (012, 013, 015) on
Codex, to see whether the arithmetic behind every result of this study is a property of MCP
servers or of one client. The claims at stake are that a tool call is a request, that the schema
rides on every request, and that batching is what makes granular tools affordable. If they hold
for a second agent on a second model, they are findings about server design; if they do not,
they are findings about Claude Code.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` as in every experiment. The Codex
run has `codex-rollout.jsonl` where a Claude run has `claude-transcript.jsonl`, and its
`workdir/` holds `AGENTS.md` and `codex-mcp.toml` instead of `CLAUDE.md` and `.mcp.json`.
