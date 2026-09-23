# 020-PythonVsJava

## Hypothesis

The same task costs fewer tokens in Python than in Java. Two cells, same model, effort, technique and guidance (none): Python with pytest and Java with Gradle and JUnit 5, both driven by Claude Code with Read, Edit, Write, Bash, Glob and Grep and no MCP server. Exercises: CustomerImporter (2022-1c-recuperatorio-parcial1, refactoring, 29 given tests), Seabed crawler (2019-2c-parcial2-masked, implementing on a hierarchy, 16 given tests), Sims Hotels (2024-1c-parcial1, refactoring, 39 given tests), each in a Python translation made from the Java one with the same classes, methods, tests and smells. 5 runs per cell, Opus 5 high, free, two in parallel, interleaved, one day. Read against 010's spread: five same-day runs resolve about 25 percent on the input side and 10 percent on output.

## Design

Started 2026-09-21. Model `claude-opus-5`, effort high, technique `free`,
5 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `python-pytest:1-Empty:free`
- `java-gradle:1-Empty:free`

Exercises:
- `exercises/2022-1c-recuperatorio-parcial1`
- `exercises/2019-2c-parcial2-masked`
- `exercises/2024-1c-parcial1`

## Results

Thirty runs between 20:24 on 2026-09-21 and the small hours of the 22nd. Three of them died on API
errors, not on the task: two `529 Overloaded` and one `500 Internal server error`, all between 21:43
and 21:55, when the API was under load. They are excluded, so the Java Seabed crawler, the Java Sims
Hotels and the Python Sims Hotels cells have four runs, the other three five. They were not rerun:
a rerun the next day would mix in the day effect this experiment is built to avoid. Every completed
run passes its given tests. Medians of the completed runs; [table.md](table.md) has every measure.

| Exercise | Language | Runs | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Calls | Test runs | Seconds |
|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter (refactoring, 29 given tests) | Java | 5 | 688 k | 56 k | 627 k | 27 k | 17 k | 16 | 19 | 3 | 307 |
| CustomerImporter (refactoring, 29 given tests) | Python | 5 | 849 k | 61 k | 785 k | 28 k | 16 k | 20 | 19 | 4 | 308 |
| Seabed crawler (implementing, 16 given tests) | Java | 4 | 614 k | 62 k | 551 k | 43 k | 21 k | 15 | 15 | 4 | 475 |
| Seabed crawler (implementing, 16 given tests) | Python | 5 | 622 k | 63 k | 562 k | 47 k | 26 k | 16 | 17 | 9 | 513 |
| Sims Hotels (refactoring, 39 given tests) | Java | 4 | 827 k | 64 k | 764 k | 28 k | 14 k | 19 | 18 | 2.5 | 294 |
| Sims Hotels (refactoring, 39 given tests) | Python | 4 | 813 k | 63 k | 750 k | 28 k | 14 k | 18.5 | 18 | 8.5 | 299 |

Python against Java (medians):

| Exercise | Input-side | Uncached input | Output | Thinking | Requests | Calls | Seconds |
|---|---|---|---|---|---|---|---|
| CustomerImporter | +23% | +9% | +3% | -8% | +25% | +0% | +0% |
| Seabed crawler | +1% | +1% | +9% | +21% | +7% | +13% | +8% |
| Sims Hotels | -2% | -2% | -1% | +2% | -3% | +0% | +2% |

Spread inside each cell (completed runs):

| Exercise | Language | Input-side min / median / max | CV % | Output min / max | CV % |
|---|---|---|---|---|---|
| CustomerImporter | Java | 661 / 688 / 704 k | 2 | 27 / 38 k | 16 |
| CustomerImporter | Python | 486 / 849 / 1,205 k | 37 | 23 / 33 k | 17 |
| Seabed crawler | Java | 547 / 614 / 919 k | 25 | 37 / 47 k | 11 |
| Seabed crawler | Python | 430 / 622 / 1,028 k | 34 | 36 / 50 k | 16 |
| Sims Hotels | Java | 645 / 827 / 1,131 k | 25 | 26 / 35 k | 13 |
| Sims Hotels | Python | 646 / 813 / 936 k | 18 | 25 / 33 k | 12 |

What the code looked like at the end (regular expressions over the sources; compare within a
language, and across languages only as sizes):

| Exercise | Language | Lines of code | Methods | Ifs |
|---|---|---|---|---|
| CustomerImporter | Java | 663 | 151 | 12 |
| CustomerImporter | Python | 476 | 144 | 13 |
| Seabed crawler | Java | 584 | 126 | 10 |
| Seabed crawler | Python | 397 | 132 | 6 |
| Sims Hotels | Java | 369 | 95 | 7 |
| Sims Hotels | Python | 236 | 86 | 7 |

Every run:

| Exercise | Language | Status | Given tests | Input-side | Uncached | Output | Thinking | Requests | Calls | Test runs | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| CustomerImporter | Java | completed | 29/29 | 694 k | 55 k | 27 k | 15 k | 17 | 21 | 3 | 298 | `20260921-202259-53404` |
| CustomerImporter | Java | completed | 29/29 | 688 k | 61 k | 34 k | 23 k | 15 | 19 | 3 | 373 | `20260921-204311-76559` |
| CustomerImporter | Java | completed | 29/29 | 704 k | 64 k | 38 k | 28 k | 14 | 16 | 3 | 415 | `20260921-210125-96481` |
| CustomerImporter | Java | completed | 29/29 | 661 k | 54 k | 27 k | 17 k | 16 | 19 | 3 | 302 | `20260921-212042-13301` |
| CustomerImporter | Java | completed | 29/29 | 674 k | 56 k | 27 k | 16 k | 16 | 18 | 3 | 307 | `20260921-213846-32199` |
| CustomerImporter | Python | completed | 29/29 | 1,205 k | 61 k | 28 k | 16 k | 28 | 28 | 4 | 308 | `20260921-202259-53403` |
| CustomerImporter | Python | completed | 29/29 | 977 k | 66 k | 32 k | 17 k | 21 | 21 | 5 | 344 | `20260921-203929-73794` |
| CustomerImporter | Python | completed | 29/29 | 486 k | 48 k | 23 k | 13 k | 13 | 13 | 3 | 248 | `20260921-205812-95418` |
| CustomerImporter | Python | completed | 29/29 | 849 k | 64 k | 33 k | 22 k | 20 | 19 | 4 | 355 | `20260921-211617-6449` |
| CustomerImporter | Python | completed | 29/29 | 546 k | 49 k | 23 k | 13 k | 15 | 15 | 4 | 248 | `20260921-213435-24827` |
| Seabed crawler | Java | completed | 56/56 | 547 k | 52 k | 37 k | 20 k | 15 | 15 | 4 | 402 | `20260921-202808-59615` |
| Seabed crawler | Java | completed | 57/57 | 626 k | 64 k | 47 k | 28 k | 14 | 15 | 3 | 508 | `20260921-204934-85557` |
| Seabed crawler | Java | completed | 64/64 | 603 k | 62 k | 40 k | 20 k | 15 | 14 | 4 | 442 | `20260921-210827-1958` |
| Seabed crawler | Java | completed | 55/55 | 919 k | 63 k | 46 k | 23 k | 20 | 21 | 8 | 512 | `20260921-212555-19812` |
| Seabed crawler | Java | **failed** (API error) | 16/16 | 437 k | 46 k | 39 k | 21 k | 14 | 15 | 0 | 724 | `20260921-214358-38088` |
| Seabed crawler | Python | completed | 58/58 | 911 k | 70 k | 50 k | 28 k | 19 | 18 | 9 | 525 | `20260921-202806-59410` |
| Seabed crawler | Python | completed | 56/56 | 430 k | 54 k | 37 k | 20 k | 12 | 13 | 5 | 390 | `20260921-204513-77784` |
| Seabed crawler | Python | completed | 55/55 | 622 k | 63 k | 48 k | 30 k | 14 | 13 | 6 | 513 | `20260921-210220-97414` |
| Seabed crawler | Python | completed | 57/57 | 613 k | 52 k | 36 k | 19 k | 16 | 17 | 9 | 388 | `20260921-212215-18237` |
| Seabed crawler | Python | completed | 58/58 | 1,028 k | 65 k | 47 k | 26 k | 22 | 23 | 10 | 520 | `20260921-213927-34997` |
| Sims Hotels | Java | completed | 39/39 | 1,131 k | 65 k | 35 k | 16 k | 23 | 22 | 4 | 371 | `20260921-203652-64546` |
| Sims Hotels | Java | completed | 40/40 | 737 k | 62 k | 29 k | 13 k | 17 | 16 | 2 | 296 | `20260921-205623-93767` |
| Sims Hotels | Java | completed | 40/40 | 918 k | 65 k | 26 k | 11 k | 21 | 20 | 3 | 273 | `20260921-211557-5789` |
| Sims Hotels | Java | completed | 39/39 | 645 k | 64 k | 28 k | 15 k | 14 | 15 | 1 | 292 | `20260921-213427-24179` |
| Sims Hotels | Java | **failed** (API error) | 39/39 | 0 k | 0 k | 0 k | 0 k | 1 | 0 | 0 | 142 | `20260921-215532-49821` |
| Sims Hotels | Python | completed | 39/39 | 646 k | 56 k | 25 k | 13 k | 16 | 18 | 6 | 269 | `20260921-203459-63160` |
| Sims Hotels | Python | completed | 40/40 | 720 k | 60 k | 26 k | 11 k | 18 | 17 | 9 | 276 | `20260921-205145-86356` |
| Sims Hotels | Python | completed | 39/39 | 907 k | 66 k | 30 k | 16 k | 20 | 19 | 9 | 321 | `20260921-211055-3645` |
| Sims Hotels | Python | completed | 39/39 | 936 k | 75 k | 33 k | 16 k | 19 | 18 | 8 | 342 | `20260921-212844-21650` |
| Sims Hotels | Python | **failed** (API error) | 15/39 | 149 k | 34 k | 15 k | 11 k | 8 | 7 | 1 | 441 | `20260921-214809-44112` |

## Conclusion

**Not supported. Python does not cost fewer tokens than Java: the two are a draw.** Input-side
tokens are +23, +1 and -2 percent, output tokens +3, +9 and -1 percent, requests +25, +7 and -3
percent. The one difference of any size, CustomerImporter's +23 percent input, comes from a Python
cell whose runs spread from 486 to 1,205 k (CV 37 percent) and sits inside what five runs resolve;
the output differences are within ten percent everywhere. Correctness is the same: every completed
run passes its given tests.

**The surprise is that a third fewer lines buys nothing.** The Python code the agents left is 28 to
36 percent shorter than the Java for the same design (476 against 663 lines, 397 against 584, 236
against 369), and the output tokens are the same. The reason is in the output itself: thinking is
50 to 63 percent of it in both languages, and what the agent writes besides thinking is not only
code but the commands, the heredocs and the text around them. The language's verbosity moves a
minority of the output, and the input side follows the number of requests, which the language does
not change.

**Where the languages do differ is how often the tests run.** The Python agents ran the tests 4, 9
and 8.5 times per run against 3, 4 and 2.5 for Java: pytest answers in a fraction of a second,
Gradle compiles first. It did not cost them anything measurable, because both agents make the same
number of Bash calls (18 against 19, 17 against 15, 17.5 against 18) and in Python more of those
calls are test runs. Both agents again worked through Bash only, with no Read, Edit or Write call.

**The day, again.** The same Java cell on the same three exercises cost 3.3 to 3.8 times the
input-side tokens it cost in experiment 016 five days earlier (688 k against 183 k on
CustomerImporter, 614 against 183 on the Seabed crawler, 827 against 249 on Sims Hotels), on a day
on which the API also returned overload errors. Only the same-day comparison above means anything.

Caveats: the Python code is a translation of the Java translation, verified by the same tests but a
translation; three cells have four runs; the code measures are regular expressions and do not
compare across languages beyond size; no guidance in either cell.

## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
