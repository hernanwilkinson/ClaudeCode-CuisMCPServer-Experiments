# 006-SmalltalkVsJava: results

Model claude-opus-5, effort high, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 3.0 | 1,876,166 | 1,803,142 | 73,024 | 54,577 | 30,296 | 40 | 46,904 | 43 | 4 | 0 | 0 | - | 8 | 0 | 0 | 0 | 0 | 0 | 4 | 0 | 0 | 641 | 5 | 115 | 51 | 0.44 | 2 | 91.28 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | 1 | 1 | 2.27 | 873,529 | 806,845 | 66,684 | 48,023 | 27,017 | 19 | 45,975 | 18 | 0 | - | - | - | 18 | 0 | 0 | 0 | - | - | - | - | - | 550 | 10 | 136 | - | - | - | - |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 2.08 | 1,016,878 | 953,185 | 63,693 | 38,811 | 26,848 | 23 | 44,212 | 22 | 1 | 0 | 0 | - | 5 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | 480 | 7 | 152 | 45 | 0.3 | 1 | 81.43 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | 1 | 1 | 1.72 | 701,682 | 638,970 | 62,712 | 30,790 | 19,765 | 16 | 43,855 | 20 | 0 | - | - | - | 20 | 0 | 0 | 0 | - | - | - | - | - | 363 | 12 | 151 | - | - | - | - |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 1 | 1 | 2.03 | 1,088,723 | 1,030,999 | 57,724 | 37,450 | 18,047 | 27 | 40,323 | 28 | 3 | 0 | 0 | - | 8 | 0 | 0 | 0 | 0 | 0 | 4 | 0 | 0 | 417 | 5 | 81 | 37 | 0.46 | 5 | 90.52 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | 1 | 1 | 1.76 | 673,450 | 608,416 | 65,034 | 32,339 | 15,909 | 14 | 48,104 | 16 | 1 | - | - | - | 16 | 0 | 0 | 0 | - | - | - | - | - | 342 | 7 | 94 | - | - | - | - |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -24% | -53% | -55% | -12% | -52% | -2% | -58% | -14% |
| 2022-1c-recuperatorio-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -17% | -31% | -33% | -21% | -30% | -1% | -9% | -24% |
| 2024-1c-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -13% | -38% | -41% | -14% | -48% | +19% | -43% | -18% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 16/16 | 2.9958360000000006 | 1,876,166 | 1,803,142 | 54,577 | 43 | 4 | 641 | 5 | 51 | 20260915-111535-40127 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 58/58 | 2.2706475 | 873,529 | 806,845 | 48,023 | 18 | 0 | 550 | 10 | - | 20260915-111749-40413 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 2.0835675 | 1,016,878 | 953,185 | 38,811 | 22 | 1 | 480 | 7 | 45 | 20260915-110924-39024 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.7161950000000001 | 701,682 | 638,970 | 30,790 | 20 | 0 | 363 | 12 | - | 20260915-110924-39025 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 40/40 | 2.0287195000000002 | 1,088,723 | 1,030,999 | 37,450 | 28 | 3 | 417 | 5 | 37 | 20260915-112638-41597 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 1.762883 | 673,450 | 608,416 | 32,339 | 16 | 1 | 342 | 7 | - | 20260915-112708-41868 |
