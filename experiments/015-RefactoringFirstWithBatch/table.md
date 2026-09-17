# 015-RefactoringFirstWithBatch: results

Model claude-opus-5, effort high, technique free, 5 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 5 | 5 | 0.42 | 92,933 | 76,940 | 17,063 | 8,581 | 2,458 | 7 | 13,602 | 8 | 8 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | - | - | 0 | 76 | 0 | 47 | 20 | 0.44 | 2 | 88.87 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | 5 | 5 | 0.85 | 393,802 | 364,424 | 31,178 | 14,145 | 4,795 | 11 | 36,909 | 10 | 36 | 7 | 4.38 | 1 | 2 | 46 | 25.0 | 5 | 0 | 0 | 4 | 1 | 4 | 0 | 0 | 0 | - | - | 0 | 139 | 0 | 45 | 22 | 0.49 | 2 | 88.63 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | 5 | 5 | 0.6 | 195,216 | 171,950 | 24,538 | 10,307 | 2,555 | 6 | 32,536 | 5 | 27 | 4 | 6.75 | 0 | 2 | 46 | 24.0 | 7 | 0 | 0 | 1 | 0 | 5 | 0 | 0 | 0 | - | - | 0 | 93 | 0 | 46 | 20 | 0.42 | 2 | 88.63 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 5 | 5 | 1.14 | 353,799 | 310,275 | 39,546 | 22,928 | 8,001 | 13 | 27,644 | 14 | 14 | 0 | - | 1 | 0 | 0 | - | 4 | 0 | 0 | 0 | 0 | 0 | 2 | 1 | 0 | - | - | 0 | 199 | 5 | 90 | 52 | 0.57 | 1 | 95.69 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | 5 | 5 | 1.84 | 1,015,002 | 945,853 | 69,149 | 30,251 | 15,454 | 17 | 59,139 | 14 | 67 | 14 | 4.92 | 2 | 5 | 69 | 13.8 | 8 | 0 | 0 | 22 | 2 | 8 | 4 | 0 | 0 | - | - | 2 | 263 | 5 | 89 | 49 | 0.56 | 4 | 96.43 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | 5 | 5 | 1.49 | 558,586 | 509,941 | 54,412 | 28,705 | 12,179 | 11 | 50,582 | 10 | 38 | 6 | 5.83 | 1 | 3 | 93 | 33.33 | 6 | 0 | 0 | 0 | 0 | 8 | 1 | 0 | 0 | - | - | 0 | 237 | 5 | 87 | 46 | 0.53 | 1 | 96.38 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 4-Refactoring:4-Refactoring+9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +102% | +324% | +374% | +65% | +57% | +171% | +25% | +83% |
| 2019-2c-parcial1 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +43% | +110% | +123% | +20% | -14% | +139% | -38% | +22% |
| 2022-1c-parcial1 | 4-Refactoring:4-Refactoring+9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +61% | +187% | +205% | +32% | +31% | +114% | +0% | +32% |
| 2022-1c-parcial1 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +31% | +58% | +64% | +25% | -15% | +83% | -29% | +19% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.377212 | 77,945 | 62,024 | 7,482 | 7 | 0 | 66 | 0 | 25 | 20260917-043305-24802 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.398905 | 92,933 | 76,940 | 8,023 | 8 | 0 | 70 | 0 | 20 | 20260917-044030-25816 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.436699 | 104,274 | 86,368 | 8,581 | 9 | 0 | 77 | 0 | 29 | 20260917-044945-26944 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.456705 | 97,046 | 79,180 | 9,541 | 9 | 1 | 83 | 0 | 19 | 20260917-045843-28058 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.41954500000000006 | 81,613 | 64,550 | 8,668 | 7 | 0 | 76 | 0 | 20 | 20260917-050906-29181 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 14/14 | 0.7864820000000001 | 393,802 | 364,424 | 12,424 | 10 | 1 | 121 | 0 | 22 | 20260917-043427-25091 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 14/14 | 0.6577115 | 229,225 | 202,773 | 11,675 | 6 | 1 | 121 | 0 | 26 | 20260917-044300-26188 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 14/14 | 0.8777 | 449,168 | 417,630 | 14,145 | 11 | 2 | 139 | 0 | 25 | 20260917-045145-27281 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 14/14 | 0.8467425000000001 | 382,288 | 350,575 | 14,177 | 9 | 0 | 159 | 0 | 20 | 20260917-050154-28420 |
| 2019-2c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 14/14 | 0.8988954999999998 | 479,819 | 448,641 | 14,517 | 10 | 3 | 143 | 0 | 19 | 20260917-051054-29508 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5561 | 195,216 | 171,950 | 9,501 | 5 | 0 | 89 | 0 | 21 | 20260917-043305-24803 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.6019580000000001 | 193,614 | 169,076 | 10,884 | 5 | 0 | 103 | 0 | 18 | 20260917-044156-26002 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5964385 | 197,346 | 172,067 | 10,307 | 5 | 0 | 93 | 0 | 19 | 20260917-045119-27130 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5986640000000001 | 199,290 | 174,258 | 10,451 | 5 | 0 | 96 | 0 | 26 | 20260917-050022-28237 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5062380000000001 | 151,118 | 129,036 | 8,838 | 4 | 0 | 73 | 0 | 20 | 20260917-051038-29368 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 26/26 | 1.191997 | 306,419 | 264,944 | 25,795 | 12 | 1 | 214 | 6 | 52 | 20260917-043451-25244 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.105714 | 356,923 | 318,638 | 22,547 | 16 | 1 | 192 | 6 | 55 | 20260917-044356-26363 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.2814975 | 353,799 | 310,275 | 27,650 | 14 | 3 | 226 | 5 | 47 | 20260917-045307-27485 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.1422540000000003 | 387,014 | 347,468 | 22,928 | 17 | 1 | 199 | 5 | 45 | 20260917-050214-28574 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.0484065 | 301,759 | 263,493 | 21,364 | 12 | 1 | 183 | 5 | 59 | 20260917-051207-29690 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 25/25 | 1.8404465 | 1,015,002 | 945,853 | 27,048 | 14 | 2 | 238 | 5 | 49 | 20260917-043844-25629 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 25/25 | 1.6797455 | 957,951 | 901,881 | 26,731 | 14 | 1 | 239 | 5 | 59 | 20260917-044727-26742 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 25/25 | 1.657231 | 669,011 | 609,372 | 30,251 | 11 | 1 | 263 | 5 | 51 | 20260917-045712-27870 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 25/25 | 2.1723339999999998 | 1,419,347 | 1,349,168 | 31,848 | 18 | 5 | 285 | 5 | 47 | 20260917-050551-28960 |
| 2022-1c-parcial1 | 4-Refactoring | 4-Refactoring+9-BatchFirst | free | completed | 25/25 | 2.294268499999999 | 1,484,041 | 1,407,447 | 32,993 | 19 | 5 | 292 | 5 | 48 | 20260917-051527-30061 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 25/25 | 1.3601105 | 558,586 | 509,941 | 24,752 | 10 | 0 | 207 | 5 | 46 | 20260917-043645-25432 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 25/25 | 1.49446 | 404,653 | 349,020 | 30,548 | 7 | 1 | 249 | 5 | 45 | 20260917-044518-26543 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 25/25 | 1.488943 | 449,588 | 395,176 | 29,893 | 8 | 0 | 244 | 6 | 48 | 20260917-045421-27659 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 25/25 | 1.5327484999999998 | 587,082 | 532,167 | 28,705 | 10 | 2 | 237 | 5 | 46 | 20260917-050450-28776 |
| 2022-1c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 25/25 | 1.3728384999999999 | 594,823 | 544,497 | 23,898 | 11 | 4 | 208 | 5 | 53 | 20260917-051334-29878 |
