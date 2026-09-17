# 000-PipelineChecks

## Purpose

Not an experiment: the runs made while building and checking the pipeline (scripts 1 to 5),
all with Haiku at low or medium effort on the `smoke` exercise or on Ada's Coffee. They are
kept because each exercised one piece of the harness (starting-code fileIn, the server's call
log, skill inlining, the runner restructure, the matrix plumbing). Their numbers say nothing
about the hypotheses; do not put them in any table.

`plan.txt`, `parameters.json`, `job.sh`, `logs/`, `runs.txt`, `results.json` and `table.md`
come from the `plumbing-test` matrix (2026-09-10), the first use of `5-runMatrix.sh`.

## Isolation check (2026-09-11)

Run `20260911-103241-51716` was made after moving the neutral working directory out of
`$HOME` (to `/private/tmp/claude-cells/`): its transcript carries no injected memory and its
call log has no read of the heuristics file, unlike the runs made with Claude Code 2.1.267/268
under the project directory (`20260910-175120` and later, which do carry
`~/.claude/CLAUDE.md`).

## Runs

| Run | Scenario | Config | Technique | Exercise | Model | Status | Note |
|---|---|---|---|---|---|---|---|
| 20260909-184523 | 1-Evaluate+TestRunning | 1-Empty | free | smoke | haiku-4-5-20251001 | completed | pipeline smoke test |
| 20260909-185346 | 3-Search | 7-DesignHeuristics | tdd | smoke | haiku-4-5-20251001 | completed | skills path smoke test |
| 20260909-201046 | 2-ModelStructure+Package | 1-Empty | free | 2019-2c-parcial1 | haiku-4-5-20251001 | completed | starting-code fileIn smoke test |
| 20260910-155605 | 1-Evaluate+TestRunning | 1-Empty | free | smoke | haiku-4-5-20251001 | completed | call log smoke test |
| 20260910-163321 | 4-Refactoring | 1-Empty | free | 2019-2c-parcial1 | haiku-4-5-20251001 | completed | call log test on the refactoring scenario |
| 20260910-171939 | 1-Evaluate+TestRunning | 7-DesignHeuristics | free | smoke | haiku-4-5-20251001 | completed | skill inlining test |
| 20260910-175120 | 1-Evaluate+TestRunning | 1-Empty | free | smoke | haiku-4-5-20251001 | completed | runner restructure smoke test |
| 20260910-191901 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | smoke | haiku-4-5-20251001 | completed | matrix plumbing-test, repetition 1 |
| 20260910-191901 | 1-Evaluate+TestRunning | 1-Empty | free | smoke | haiku-4-5-20251001 | completed | matrix plumbing-test, repetition 1 |
