# 001-InteractiveRefactoringSession

## Idea

Before proving hypotheses, watch Claude Code work in the image with the refactoring tools:
scenario 4-Refactoring with configuration 4-Refactoring (refactor with the refactoring tools
first) on Ada's Coffee (2019-2c-parcial1), Fable 5.1 at high effort, run with
`2-runCell.sh --interactive` on 2026-09-10 so the session could be watched and talked to.

## Runs

- `20260910-170732`: a first short session (172 s), exited early, not analyzed.
- `20260910-171127`: the full session. The collection was interrupted when Claude Code was
  exited (Ctrl-C reached the script) and completed afterwards with `--finish`, so the status is
  `interrupted` and the cost comes from the transcript. At that time the runner did not yet pause
  `~/.claude/CLAUDE.md` and `~/.claude/skills` for interactive sessions, so the agent also saw the
  global instructions (the design-heuristics skill); this run is therefore contaminated and not
  comparable with headless cells.

## Results (run 20260910-171127)

| Acceptance | Coverage % | Ifs in model | Mentor findings | Tool calls | Refactoring tool calls | Cost |
|---|---|---|---|---|---|---|
| 14/14 | 90.15 | 0 | 17 | 154 | 17 | $5.1476 |

## What was learned

- The hand-made extractions the agent did (define + delete instead of a refactoring tool) came
  right after `extract_method_from_similar_code` failed with a RefactoringError (argument
  count, duplicate temporary). Tool robustness decides whether the tools get used; the
  `refactoringOpportunities` section of `analysis.json` records `afterFailedToolCalls` for this.
- Interactive Claude Code loads the user memory and skills whatever `--setting-sources` says;
  the runner now pauses them during an interactive session.
- A skill that names a file cannot be followed without a Read tool; skills copied into a cell
  now get the referenced files inlined.
