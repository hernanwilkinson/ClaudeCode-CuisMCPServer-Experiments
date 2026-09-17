# 009-CuisByScripts

## Hypothesis

The environment, not the language, made Java cheaper in experiment 006: Cuis worked through files and a shell, without the MCP server, costs about what Java cost there. One cell, cuis-script: Claude Code with Read, Edit, Write, Bash, Glob and Grep writes Smalltalk scripts and runs each with ./cuis.sh <file.st>, which evaluates it in the image through the VM's -s option (cuis-script-wrapper.st: the value is printed; an error prints ERROR: and leaves the image untouched; a script that ends saves the image). Classes and methods are defined with subclass: and compile:, as through evaluate; ./cuis.sh run-tests.st runs the package's tests. Same image as 006's Cuis cell (1-Evaluate+TestRunning-University), no guidance, free technique, Opus 5 high, one run per exercise: CustomerImporter, Seabed crawler, Sims Hotels. Compared with 006's Cuis-through-MCP and Java cells.

## Design

Started 2026-09-16. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `cuis-script:1-Empty:free`

Exercises:
- `exercises/2022-1c-recuperatorio-parcial1`
- `exercises/2019-2c-parcial2-masked`
- `exercises/2024-1c-parcial1`

## Results

Nine runs on 2026-09-16, all completed and passing their given tests: the three script runs and,
appended the same morning as controls, the two cells of experiment 006 run again (Cuis through
the MCP server, Java). The controls were needed because 006 ran on 2026-09-15, a day on which
every cell of every experiment cost about twice what it cost on the 16th; the comparison that
counts is the same-day one. [table.md](table.md) has every measure.

Cells (same image for the two Cuis cells, 1-Evaluate+TestRunning-University; no guidance; free
technique; Opus 5 high):
- Cuis MCP: `smalltalk_evaluate` and the test tools over the server.
- Java: the Gradle + JUnit translation, Claude Code's file and shell tools.
- Cuis scripts: the same image, Claude Code's file and shell tools, scripts run through the VM's
  `-s` option with `cuis-script-wrapper.st`, definitions with `subclass:` and `compile:`.

Same day (2026-09-16):

| Exercise | Cell | Cost | Input-side tokens | Uncached input | Output | Thinking | API requests | Tool calls | Test runs | Scripts run / failed | Given tests | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter (refactoring, 29 given tests) | Cuis MCP | $0.49 | 116 k | 24 k | 8 k | 2 k | 6 | 7 | 2 | - | 29/29 | 70 |
| CustomerImporter (refactoring, 29 given tests) | Java | $0.66 | 154 k | 32 k | 11 k | 4 k | 6 | 5 | 1 | - | 29/29 | 108 |
| CustomerImporter (refactoring, 29 given tests) | Cuis scripts | $0.79 | 207 k | 36 k | 14 k | 6 k | 9 | 8 | 2 | 6/1 | 29/29 | 154 |
| Seabed crawler (implementing, 16 given tests) | Cuis MCP | $0.98 | 243 k | 31 k | 22 k | 9 k | 11 | 13 | 2 | - | 47/47 | 192 |
| Seabed crawler (implementing, 16 given tests) | Java | $0.91 | 143 k | 33 k | 21 k | 7 k | 6 | 6 | 2 | - | 55/55 | 194 |
| Seabed crawler (implementing, 16 given tests) | Cuis scripts | $1.30 | 357 k | 42 k | 29 k | 13 k | 12 | 11 | 3 | 13/0 | 58/58 | 303 |
| Sims Hotels (refactoring, 39 given tests) | Cuis MCP | $1.03 | 294 k | 40 k | 20 k | 7 k | 10 | 12 | 3 | - | 40/40 | 162 |
| Sims Hotels (refactoring, 39 given tests) | Java | $0.86 | 225 k | 38 k | 16 k | 3 k | 8 | 7 | 1 | - | 39/39 | 135 |
| Sims Hotels (refactoring, 39 given tests) | Cuis scripts | $1.19 | 253 k | 46 k | 25 k | 9 k | 8 | 7 | 3 | 10/0 | 40/40 | 243 |

Against Cuis through the MCP server, same day:

| Exercise | Comparison | Cost | Input-side | Output | Requests | Seconds |
|---|---|---|---|---|---|---|
| CustomerImporter | Java vs Cuis MCP | +35% | +33% | +34% | +0% | +54% |
| CustomerImporter | Cuis scripts vs Cuis MCP | +62% | +79% | +69% | +50% | +120% |
| Seabed crawler | Java vs Cuis MCP | -7% | -41% | -6% | -45% | +1% |
| Seabed crawler | Cuis scripts vs Cuis MCP | +34% | +47% | +31% | +9% | +58% |
| Sims Hotels | Java vs Cuis MCP | -16% | -24% | -23% | -20% | -17% |
| Sims Hotels | Cuis scripts vs Cuis MCP | +15% | -14% | +23% | -20% | +50% |

The 006 runs of the day before, for the record:

| Exercise | Cell | Cost | Input-side tokens | Output | API requests | Tool calls | Given tests | Seconds |
|---|---|---|---|---|---|---|---|---|
| CustomerImporter (refactoring, 29 given tests) | Cuis MCP | $2.08 | 1,017 k | 39 k | 23 | 22 | 29/29 | 480 |
| CustomerImporter (refactoring, 29 given tests) | Java | $1.72 | 702 k | 31 k | 16 | 20 | 29/29 | 363 |
| Seabed crawler (implementing, 16 given tests) | Cuis MCP | $3.00 | 1,876 k | 55 k | 40 | 43 | 16/16 | 641 |
| Seabed crawler (implementing, 16 given tests) | Java | $2.27 | 874 k | 48 k | 19 | 18 | 58/58 | 550 |
| Sims Hotels (refactoring, 39 given tests) | Cuis MCP | $2.03 | 1,089 k | 37 k | 27 | 28 | 40/40 | 417 |
| Sims Hotels (refactoring, 39 given tests) | Java | $1.76 | 673 k | 32 k | 14 | 16 | 39/39 | 342 |

## Conclusion

**Not supported: Cuis through scripts was the most expensive of the three environments on every
exercise**, 15 to 62 percent above Cuis through the MCP server and 20 to 43 percent above Java,
with the same correctness. And with same-day controls the 006 result itself does not hold:
Java against the MCP server came out +35, -7 and -16 percent, a draw within the noise, not the
13 to 24 percent advantage measured the day before.

What made the script cell expensive is visible in the tokens. Output tokens are 23 to 69 percent
above the MCP cell's: every definition travels inside a `compile:` string with its quotes doubled
and its plumbing around it, and two of the three agents wrote a Python generator to turn plain
source into those calls rather than escape by hand. Reading is heavier too: with no source tool,
the agents dumped the whole model's sources from a script (27 KB on Sims Hotels, then read back
with `sed` from the file Claude Code persists large outputs to), where the MCP agent asks for a
class. Requests were equal or more (6 to 12 against 6 to 11), each script run being one call, and
the scripts took longer in wall time because every run starts and saves a 45 MB image (1 to 3
seconds each, 6 to 13 runs per session).

The wrapper worked as designed: 1 failed script in 29, reported and discarded; no hang. Its one
subtlety is worth recording: handling `Error` around a script would take SUnit's test errors
before the runner can record them, so only `UnhandledError` is handled.

What this says for the study. The environment does not explain the 006 numbers; the day does.
Same-day, evaluate through the server and Java through files cost about the same, and Smalltalk
through files costs more, because the script form makes the agent write more text for the same
code. The live image's advantage is real but it is not tokens: it is that a definition is a
tool argument, not a quoted string, and a read is a question, not a dump.

Caveats: one run per cell per day; the two Cuis cells share the image, the Java cell is a
translation; the script agents kept their files in Claude Code's per-session scratchpad rather
than the working directory (collected into `agent-scratchpad/` afterwards, and by the runner
from now on).

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
