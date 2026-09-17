# 009-CuisByScripts: results

Model claude-opus-5, effort high, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 0.98 | 243,001 | 211,806 | 31,195 | 22,354 | 8,569 | 11 | 22,091 | 13 | 13 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | - | - | 0 | 192 | 8 | 114 | 58 | 0.51 | 2 | 92.37 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | 1 | 1 | 1.3 | 357,368 | 315,813 | 41,555 | 29,224 | 13,315 | 12 | 29,781 | 11 | 11 | 0 | - | 0 | - | - | - | 11 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 303 | 7 | 95 | 60 | 0.63 | 3 | 96.32 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | 1 | 1 | 0.91 | 142,638 | 109,610 | 33,028 | 21,072 | 7,439 | 6 | 23,773 | 6 | - | - | - | 0 | - | - | - | 3 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 194 | 9 | 108 | - | - | - | - |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 0.49 | 115,668 | 92,002 | 23,666 | 8,209 | 1,586 | 6 | 19,278 | 7 | 7 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | - | - | 0 | 70 | 7 | 150 | 46 | 0.31 | 1 | 80.42 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | 1 | 1 | 0.79 | 207,329 | 171,395 | 35,934 | 13,863 | 5,870 | 9 | 23,037 | 8 | 8 | 0 | - | 1 | - | - | - | 8 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 154 | 8 | 153 | 47 | 0.31 | 1 | 80.72 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | 1 | 1 | 0.66 | 153,632 | 121,536 | 32,096 | 10,982 | 4,177 | 6 | 25,605 | 5 | - | - | - | 0 | - | - | - | 5 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 108 | 13 | 138 | - | - | - | - |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 1.03 | 294,000 | 254,443 | 39,557 | 20,449 | 6,692 | 10 | 29,400 | 12 | 12 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | - | - | 0 | 162 | 4 | 100 | 52 | 0.52 | 7 | 89.51 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | 1 | 1 | 1.19 | 253,304 | 207,629 | 45,675 | 25,185 | 8,842 | 8 | 31,663 | 7 | 7 | 0 | - | 0 | - | - | - | 7 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 243 | 4 | 93 | 46 | 0.49 | 4 | 89.93 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | 1 | 1 | 0.86 | 224,857 | 187,028 | 37,829 | 15,680 | 3,480 | 8 | 28,107 | 7 | - | - | - | 0 | - | - | - | 7 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 135 | 7 | 96 | - | - | - | - |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +33% | +47% | +49% | +31% | +9% | +35% | -15% | +58% |
| 2019-2c-parcial2-masked | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -7% | -41% | -48% | -6% | -45% | +8% | -54% | +1% |
| 2022-1c-recuperatorio-parcial1 | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +61% | +79% | +86% | +69% | +50% | +19% | +14% | +120% |
| 2022-1c-recuperatorio-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +35% | +33% | +32% | +34% | +0% | +33% | -29% | +54% |
| 2024-1c-parcial1 | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +16% | -14% | -18% | +23% | -20% | +8% | -42% | +50% |
| 2024-1c-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -17% | -24% | -26% | -23% | -20% | -4% | -42% | -17% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 47/47 | 0.9765929999999999 | 243,001 | 211,806 | 22,354 | 13 | 0 | 192 | 8 | 58 | 20260916-095405-5922 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 58/58 | 1.3039365 | 357,368 | 315,813 | 29,224 | 11 | 0 | 303 | 7 | 60 | 20260916-094215-515 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 55/55 | 0.9118250000000001 | 142,638 | 109,610 | 21,072 | 6 | 0 | 194 | 9 | - | 20260916-095426-6223 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.487826 | 115,668 | 92,002 | 8,209 | 7 | 0 | 70 | 7 | 46 | 20260916-095228-4782 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.7915225 | 207,329 | 171,395 | 13,863 | 8 | 1 | 154 | 8 | 47 | 20260916-094215-514 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.656218 | 153,632 | 121,536 | 10,982 | 5 | 0 | 108 | 13 | - | 20260916-095228-4783 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 40/40 | 1.0339165 | 294,000 | 254,443 | 20,449 | 12 | 0 | 162 | 4 | 52 | 20260916-095739-7669 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 40/40 | 1.1901095000000002 | 253,304 | 207,629 | 25,185 | 7 | 0 | 243 | 4 | 46 | 20260916-094513-2361 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 0.8637240000000002 | 224,857 | 187,028 | 15,680 | 7 | 0 | 135 | 7 | - | 20260916-095748-7943 |
