# 015-RefactoringFirstWithBatch

## Hypothesis

Told to refactor with the refactoring tools and to batch, the agent uses the tools and the cell costs no more than the batch cell without that clause. In 008, 013 and 004-B the refactoring tools were offered and not used (0 to 1 calls per run, refactorings done by hand with define and delete), so their cost so far has been the 69 KB schema per request without any use. Three cells on the plain Cuis base, refactoring exercises only: 1-Evaluate+TestRunning with no guidance (control); 4-Refactoring with 9-BatchFirst (tools offered, batch first, nothing said about refactoring); 4-Refactoring with 4-Refactoring + 9-BatchFirst (refactoring tools first, batched). Ada's Coffee (2019-2c-parcial1, 14 given tests) and Formula One (2022-1c-parcial1, 26 given tests), 5 runs per cell, Opus 5 high, free, two in parallel, interleaved, one day. Measured: refactoring tool calls and failed ones, hand-made refactorings, tokens, requests, and the design measures.

## Design

Started 2026-09-17. Model `claude-opus-5`, effort high, technique `free`,
5 repetitions per cell, budget $15 and 2400 s per run, Claude Code 2.1.268 (Claude Code).

Cells (scenario:configuration[:technique]):
- `1-Evaluate+TestRunning:1-Empty:free`
- `4-Refactoring:9-BatchFirst:free`
- `4-Refactoring:4-Refactoring+9-BatchFirst:free`

Exercises:
- `exercises/2019-2c-parcial1`
- `exercises/2022-1c-parcial1`

## Results

Thirty runs between 04:33 and 05:20 on 2026-09-17, all completed and all passing the given tests
(Formula One agents merged one given test in most runs, 25 of 26; the statement allows it).
Medians of the five runs per cell; [table.md](table.md) has every measure. Cells: 1 = evaluate +
tests, no guidance; 4b = refactoring tools + batch first; 4r = refactoring tools + refactoring
first + batch first.

| Exercise | Cell | Input-side | Uncached input | Cache read | Output | Thinking | Requests | Input per request | Calls | Operations | Batches | Steps per batch | Evaluate calls | Refactoring calls | Failed | Hand-made refactorings | Tool errors | Seconds | Ifs | Mentor findings | Coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1: evaluate only | 93 k | 17 k | 77 k | 9 k | 2 k | 7 | 14 k | 8 | 8 | 0 | - | 5 | 0 | 0 | 0 | 0 | 76 | 0 | 20 | 88.9 |
| Ada's Coffee | 4b: tools, batch first | 195 k | 25 k | 172 k | 10 k | 3 k | 6 | 33 k | 5 | 27 | 4 | 6.8 | 0 | 1 | 0 | 5 | 0 | 93 | 0 | 20 | 88.6 |
| Ada's Coffee | 4r: refactoring first, batched | 394 k | 31 k | 364 k | 14 k | 5 k | 11 | 37 k | 10 | 36 | 7 | 4.4 | 0 | 4 | 1 | 4 | 1 | 139 | 0 | 22 | 88.6 |
| Formula One | 1: evaluate only | 354 k | 40 k | 310 k | 23 k | 8 k | 13 | 28 k | 14 | 14 | 0 | - | 10 | 0 | 0 | 0 | 1 | 199 | 5 | 52 | 95.7 |
| Formula One | 4b: tools, batch first | 559 k | 54 k | 510 k | 29 k | 12 k | 11 | 51 k | 10 | 38 | 6 | 5.8 | 2 | 0 | 0 | 8 | 1 | 237 | 5 | 46 | 96.4 |
| Formula One | 4r: refactoring first, batched | 1,015 k | 69 k | 946 k | 30 k | 15 k | 17 | 59 k | 14 | 67 | 14 | 4.9 | 3 | 22 | 2 | 8 | 2 | 263 | 5 | 49 | 96.4 |

Against evaluate alone (medians):

| Exercise | Cell | Input-side | Uncached input | Output | Requests | Calls |
|---|---|---|---|---|---|---|
| Ada's Coffee | 4b: tools, batch first | +110% | +44% | +20% | -14% | -38% |
| Ada's Coffee | 4r: refactoring first, batched | +324% | +83% | +65% | +57% | +25% |
| Formula One | 4b: tools, batch first | +58% | +38% | +25% | -15% | -29% |
| Formula One | 4r: refactoring first, batched | +187% | +75% | +32% | +31% | +0% |

What the refactoring-first cell did with the tools, per run:

| Exercise | Run | Refactoring calls | Failed | Hand-made | Tools used most |
|---|---|---|---|---|---|
| Ada's Coffee | `20260917-043427-25091` | 4 | 1 | 9 | extract_method_from_similar_code 2, push_up_method, remove_instance_variable |
| Ada's Coffee | `20260917-044300-26188` | 3 | 1 | 3 | extract_method_from_similar_code 2, remove_instance_variable |
| Ada's Coffee | `20260917-045145-27281` | 5 | 2 | 4 | extract_method_from_similar_code 3, remove_instance_variable, inline_method |
| Ada's Coffee | `20260917-050154-28420` | 4 | 0 | 4 | extract_method_from_similar_code, inline_method, push_up_method, remove_instance_variable |
| Ada's Coffee | `20260917-051054-29508` | 13 | 3 | 5 | extract_method_from_similar_code 2, extract_as_parameter 2, inline_method 2, extract_method, add_parameter, rename_selector |
| Formula One | `20260917-043844-25629` | 22 | 2 | 8 | remove_instance_variable 5, push_down_method_to_one_subclass 5, remove_parameter 3, rename_selector 2, extract_method 2 |
| Formula One | `20260917-044727-26742` | 11 | 0 | 13 | push_down_method_to_one_subclass 3, remove_unreferenced_instance_variables 2, extract_method 2 |
| Formula One | `20260917-045712-27870` | 14 | 0 | 9 | rename_selector 3, remove_instance_variable 3, remove_parameter 2 |
| Formula One | `20260917-050551-28960` | 24 | 5 | 4 | extract_method_from_similar_code 4, push_down_method_to_one_subclass 4, extract_method 3, move_to_instance_or_class_method 3 |
| Formula One | `20260917-051527-30061` | 33 | 4 | 5 | remove_instance_variable 5, push_down_method_to_one_subclass 5, rename_selector 4, extract_method 4, extract_method_from_similar_code 3, extract_to_temporary 3 |

Every run:

| Exercise | Cell | Given tests | Input-side | Uncached | Output | Requests | Calls | Batches | Tool errors | Seconds | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Ada's Coffee | 1 | 14/14 | 78 k | 16 k | 7 k | 6 | 7 | 0 | 0 | 66 | `20260917-043305-24802` |
| Ada's Coffee | 1 | 14/14 | 93 k | 16 k | 8 k | 7 | 8 | 0 | 0 | 70 | `20260917-044030-25816` |
| Ada's Coffee | 1 | 14/14 | 104 k | 18 k | 9 k | 7 | 9 | 0 | 0 | 77 | `20260917-044945-26944` |
| Ada's Coffee | 1 | 14/14 | 97 k | 18 k | 10 k | 7 | 9 | 0 | 1 | 83 | `20260917-045843-28058` |
| Ada's Coffee | 1 | 14/14 | 82 k | 17 k | 9 k | 6 | 7 | 0 | 0 | 76 | `20260917-050906-29181` |
| Ada's Coffee | 4b | 14/14 | 195 k | 23 k | 10 k | 6 | 5 | 4 | 0 | 89 | `20260917-043305-24803` |
| Ada's Coffee | 4b | 14/14 | 194 k | 25 k | 11 k | 6 | 5 | 4 | 0 | 103 | `20260917-044156-26002` |
| Ada's Coffee | 4b | 14/14 | 197 k | 25 k | 10 k | 6 | 5 | 4 | 0 | 93 | `20260917-045119-27130` |
| Ada's Coffee | 4b | 14/14 | 199 k | 25 k | 10 k | 6 | 5 | 4 | 0 | 96 | `20260917-050022-28237` |
| Ada's Coffee | 4b | 14/14 | 151 k | 22 k | 9 k | 5 | 4 | 3 | 0 | 73 | `20260917-051038-29368` |
| Ada's Coffee | 4r | 14/14 | 394 k | 29 k | 12 k | 11 | 10 | 7 | 1 | 121 | `20260917-043427-25091` |
| Ada's Coffee | 4r | 14/14 | 229 k | 26 k | 12 k | 7 | 6 | 3 | 1 | 121 | `20260917-044300-26188` |
| Ada's Coffee | 4r | 14/14 | 449 k | 32 k | 14 k | 12 | 11 | 7 | 2 | 139 | `20260917-045145-27281` |
| Ada's Coffee | 4r | 14/14 | 382 k | 32 k | 14 k | 10 | 9 | 8 | 0 | 159 | `20260917-050154-28420` |
| Ada's Coffee | 4r | 14/14 | 480 k | 31 k | 15 k | 13 | 10 | 10 | 3 | 143 | `20260917-051054-29508` |
| Formula One | 1 | 26/26 | 306 k | 41 k | 26 k | 10 | 12 | 0 | 1 | 214 | `20260917-043451-25244` |
| Formula One | 1 | 25/25 | 357 k | 38 k | 23 k | 13 | 16 | 0 | 1 | 192 | `20260917-044356-26363` |
| Formula One | 1 | 25/25 | 354 k | 44 k | 28 k | 13 | 14 | 0 | 3 | 226 | `20260917-045307-27485` |
| Formula One | 1 | 25/25 | 387 k | 40 k | 23 k | 14 | 17 | 0 | 1 | 199 | `20260917-050214-28574` |
| Formula One | 1 | 25/25 | 302 k | 38 k | 21 k | 10 | 12 | 0 | 1 | 183 | `20260917-051207-29690` |
| Formula One | 4b | 25/25 | 559 k | 49 k | 25 k | 11 | 10 | 5 | 0 | 207 | `20260917-043645-25432` |
| Formula One | 4b | 25/25 | 405 k | 56 k | 31 k | 8 | 7 | 6 | 1 | 249 | `20260917-044518-26543` |
| Formula One | 4b | 25/25 | 450 k | 54 k | 30 k | 9 | 8 | 5 | 0 | 244 | `20260917-045421-27659` |
| Formula One | 4b | 25/25 | 587 k | 55 k | 29 k | 11 | 10 | 6 | 2 | 237 | `20260917-050450-28776` |
| Formula One | 4b | 25/25 | 595 k | 50 k | 24 k | 12 | 11 | 7 | 4 | 208 | `20260917-051334-29878` |
| Formula One | 4r | 25/25 | 1,015 k | 69 k | 27 k | 17 | 14 | 13 | 2 | 238 | `20260917-043844-25629` |
| Formula One | 4r | 25/25 | 958 k | 56 k | 27 k | 17 | 14 | 14 | 1 | 239 | `20260917-044727-26742` |
| Formula One | 4r | 25/25 | 669 k | 60 k | 30 k | 12 | 11 | 9 | 1 | 263 | `20260917-045712-27870` |
| Formula One | 4r | 25/25 | 1,419 k | 70 k | 32 k | 24 | 18 | 18 | 5 | 285 | `20260917-050551-28960` |
| Formula One | 4r | 25/25 | 1,484 k | 77 k | 33 k | 22 | 19 | 16 | 5 | 292 | `20260917-051527-30061` |

## Conclusion

**The clause makes the tools used, and using them costs: the refactoring-first cell is 2.0
and 1.8 times the input side of the same tools without the clause, and 4.2 and 2.9 times
evaluate alone.** Told to refactor with the tools, the agent made 3 to 13 refactoring calls per
run on Ada's Coffee and 11 to 33 on Formula One (rename, extract, inline, push up and down,
remove parameter and instance variable, extract from similar code), against 0 to 1 when only
told to batch. Batching did not absorb them: the refactoring-first cell sends 7 and 14 batches
per run of 4 to 5 steps, twice the batches and 57 and 31 percent more requests than evaluate,
because a refactoring's result is read before the next one is chosen. Output is up 65 and 32
percent (the calls' arguments and the reads between them).

The refactorings replaced part of the hand work but not all of it: 4 and 8 hand-made
refactorings per run remain in the refactoring-first cell against 5 and 8 in the batch-only
cell. The tools failed 0 to 5 times per run, and one failure repeats in 9 of the 10 runs:
`extract_method_from_similar_code` refused with "the number of arguments in the given selector
is not correct", the agent giving a selector whose arity does not match the parameters it
chose. That tool's contract is the thing to fix or to describe better; the other failures were
one `remove_parameter` blocked by references and one `extract_as_parameter` on a non-unary
selector.

Quality did not move: 0 ifs on Ada's Coffee and 5 on Formula One in all 30 runs, coverage
within 1 point, mentor findings within 6, all given tests passing. On these two exercises the
automated refactorings bought no measurable design over the hand-made ones, at 2 to 4 times
the tokens.

The batch-only refactoring cell (4b) repeats 013 with new draws: +110 and +58 percent input-side
over evaluate (+142 and +128 in 013), fewer requests and calls, the schema riding on every
request (33 and 51 k input per request against 14 and 28 k).

Caveats: two exercises, both refactoring; the refactoring-first clause is the one from
configuration 4 (tools take precedence over defining by hand); a tool schema of 69 KB in both
scenario 4 cells; the hand-made count only sees define-and-delete pairs.

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.

## Conclusion

(pending)

## Layout

`cells/<scenario>_<config>_<technique>/<exercise>/<run-id>/` holds every run with its
`manifest.json`, `analysis.json`, transcript, call log, output package and saved image;
`logs/` has the runner output per run, `plan.txt` the order they were planned in and
`runs.txt` the order they finished in.
