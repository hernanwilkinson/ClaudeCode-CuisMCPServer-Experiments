# 006-SmalltalkVsJava

## Hypothesis

The same task costs fewer tokens in Cuis Smalltalk than in Java: the live image with method-level reads and writes and instant test runs against a Gradle + JUnit project edited through files and run through a build. Two cells, same model, effort and technique, no guidance (configuration 1-Empty): Cuis scenario 1-Evaluate+TestRunning-University (evaluate and the test tools only) and java-gradle (Claude Code's Read, Edit, Write, Bash, Glob and Grep tools on a Gradle project, no MCP server). Exercises: CustomerImporter (refactoring), Seabed crawler (implementing on a hierarchy), Sims Hotels (refactoring, 110 methods), each with its Java translation carrying the same design and smells and its given tests translated one to one. Compared: output tokens, API requests, cost, wall time, test runs, tool calls, acceptance by the given tests.

## Design

Started 2026-09-15. Model `claude-opus-5`, effort high, technique `free`,
1 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning-University:1-Empty:free`
- `java-gradle:1-Empty:free`

Exercises:
- `exercises/2022-1c-recuperatorio-parcial1`
- `exercises/2019-2c-parcial2-masked`
- `exercises/2024-1c-parcial1`

## Results

One run per cell, six runs, all completed and all passing the given tests (on the Seabed
crawler the agents added their tests to the given class, so its count includes them; the
given 16 pass in both). Same model (Opus 5), effort (high), technique (free) and guidance
(none) on both sides. [table.md](table.md) has every measure.

Cells:
- Cuis: scenario 1-Evaluate+TestRunning-University, the image with `smalltalk_evaluate` and
  the test-running tools, no other MCP tool.
- Java: the Gradle + JUnit 5 translation of the same starting code and tests, Claude Code with
  Read, Edit, Write, Bash, Glob and Grep, no MCP server, `gradle test` on the PATH.

Cost and process:

| Exercise | Language | Cost | Input-side tokens | Uncached input | Output | Thinking | API requests | Tool calls | Tool errors | Test runs | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter (refactoring, 29 given tests) | Cuis | $2.08 | 1,017 k | 64 k | 39 k | 27 k | 23 | 22 | 1 | 3 | 480 |
| CustomerImporter (refactoring, 29 given tests) | Java | $1.72 | 702 k | 63 k | 31 k | 20 k | 16 | 20 | 0 | 3 | 363 |
| Seabed crawler (implementing, 16 given tests) | Cuis | $3.00 | 1,876 k | 73 k | 55 k | 30 k | 40 | 43 | 4 | 6 | 641 |
| Seabed crawler (implementing, 16 given tests) | Java | $2.27 | 874 k | 67 k | 48 k | 27 k | 19 | 18 | 0 | 7 | 550 |
| Sims Hotels (refactoring, 39 given tests) | Cuis | $2.03 | 1,089 k | 58 k | 37 k | 18 k | 27 | 28 | 3 | 5 | 417 |
| Sims Hotels (refactoring, 39 given tests) | Java | $1.76 | 673 k | 65 k | 32 k | 16 k | 14 | 16 | 1 | 3 | 342 |

Java against Cuis:

| Exercise | Cost | Input-side | Uncached input | Output | Requests | Tool calls | Test runs | Seconds |
|---|---|---|---|---|---|---|---|---|
| CustomerImporter | -18% | -31% | -2% | -21% | -30% | -9% | 3 → 3 | -24% |
| Seabed crawler | -24% | -53% | -9% | -12% | -52% | -58% | 6 → 7 | -14% |
| Sims Hotels | -13% | -38% | +13% | -14% | -48% | -43% | 5 → 3 | -18% |

What was produced (the code measures are not comparable across languages: Java lines and ifs
are counted by regex over the source, Smalltalk ones by the parser over the model classes):

| Exercise | Language | Given tests | Classes / methods | Lines of code | Ifs |
|---|---|---|---|---|---|
| CustomerImporter (refactoring, 29 given tests) | Cuis | 29/29 | 17 / 152 | 365 | 7 |
| CustomerImporter (refactoring, 29 given tests) | Java | 29/29 | 20 / 151 | 647 | 12 |
| Seabed crawler (implementing, 16 given tests) | Cuis | 16/16 | 20 / 115 | 272 | 5 |
| Seabed crawler (implementing, 16 given tests) | Java | 58/58 | 23 / 136 | 603 | 10 |
| Sims Hotels (refactoring, 39 given tests) | Cuis | 40/40 | 7 / 81 | 183 | 5 |
| Sims Hotels (refactoring, 39 given tests) | Java | 39/39 | 17 / 94 | 364 | 7 |

## Conclusion

**Not supported. Java was cheaper on all three exercises**: 17, 24 and 13 percent less money,
31 to 53 percent fewer input-side tokens, 12 to 21 percent fewer output tokens, 30 to 52 percent
fewer API requests, and 18 to 25 percent less wall time, with the same correctness.

The mechanism is the one every experiment so far has pointed at, and it cut the other way here.
The Java agent never used Read, Edit or Write: all 54 of its calls were Bash, and Bash was to
it what evaluate is to the Cuis agent, a universal batchable tool. One command printed five
source files; one command wrote five files with heredocs; in-place edits were Python scripts
run from Bash; `gradle test 2>&1 | tail -20` trimmed the build log itself. Its calls per
request were 1.1 to 1.3, like the Cuis agent's, but it made fewer of them: 20, 18 and 16 against
22, 43 and 28. The Cuis agent read the model in more, smaller evaluates and had 1 to 4 failed
evaluates per run (Java: 0, 0, 1). The expected Java overheads did not materialise: a Gradle test
run answered in 6 to 1,143 characters after the agent's own `tail`, against 82 for the Cuis
test tool, and no time was lost to builds (the wall-time gap follows the request count).

Output tokens were lower in Java although the Java sources are 1.8 to 2.2 times longer in lines.
The Cuis agent's output is not only code: it re-sends whole method sources inside `compile:`
strings with their quoting, writes the plumbing around them, and thought more (27 K, 30 K and
18 K thinking tokens against 20 K, 27 K and 16 K). The Java agent wrote files once, mostly whole
files, and edited with scripts.

Two things this does not say. It does not say Java is a better environment: the Cuis image
offered the agent only evaluate and the test tools, the thinnest of the scenarios, and the
experiments with more tools cost more, not less, so a Cuis cell that batches better than
evaluate does not exist yet. And it does not measure design: the Java translations carried the
same smells and the agents removed them in both languages, but the mentor and the AST measures
do not exist for Java, and the regex counts of ifs are not comparable.

Caveats: one run per cell; the Java starting code is a translation made for this experiment
(the same classes, methods, tests and smells, verified by the tests, but a translation); the
`--tools` list left the Java agent free to choose Bash over the file tools, which is what it
did; the Cuis cell runs on the University image; guidance was empty on both sides, so the
heuristics cells of the other experiments are not this one's baseline.

## Revisited on 2026-09-16 (experiment 009)

The same two cells rerun the next day, alongside a third one (Cuis through scripts), cost about
half on every exercise, and Java against the MCP server came out +35, -7 and -16 percent: a draw,
not the 13 to 24 percent advantage above. The 006 runs were made on a day on which every cell of
every experiment cost about twice the next day's; the conclusion above about Java being cheaper
does not survive same-day controls. See [009-CuisByScripts](../009-CuisByScripts/README.md).

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
