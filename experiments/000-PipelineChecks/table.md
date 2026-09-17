# 000-PipelineChecks: results

Model claude-haiku-4-5-20251001, effort low, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | 1 | 1 | 0.24 | 1,004,577 | 969,089 | 35,488 | 14,634 | 0 | 36 | 27,905 | - | - | - | - | - | - | - | - | 0 | - | - | - | - | - | 166 | 13 | 52 | 35 | 0.67 | 2 | 63.53 |
| 2019-2c-parcial1 | 4-Refactoring | 1-Empty | free | 1 | 1 | 0.47 | 2,772,085 | 2,715,999 | 56,086 | 17,757 | 0 | 66 | 42,001 | 111 | 17 | - | - | - | - | - | - | 1 | 0 | 3 | - | - | - | 217 | 7 | 47 | 34 | 0.72 | 2 | 77.41 |
| 2022-1c-recuperatorio-parcial1 | 5-LiveTyping | 5-LiveTyping+8-DesignHeuristicsInline | free | 1 | 1 | 0.29 | 1,245,150 | 1,190,877 | 54,273 | 13,014 | 4,978 | 28 | 44,470 | 32 | 1 | 12 | 68 | 5.67 | 4 | 0 | 0 | 0 | 0 | 5 | 1 | 3 | - | 151 | 28 | 116 | 58 | 0.5 | 1 | 70.74 |
| smoke | 1-Evaluate+TestRunning | 1-Empty | free | 1 | 1 | 0.11 | 419,033 | 401,640 | 17,393 | 6,081 | 1,593 | 32 | 13,095 | 31 | 4 | - | - | - | - | - | - | 0 | 0 | 0 | - | - | - | 80 | 4 | 7 | 57 | 8.14 | 32 | 97.62 |
| smoke | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 1 | 1 | 0.09 | 217,809 | 196,729 | 21,080 | 6,582 | 1,500 | 13 | 16,755 | 35 | 1 | - | - | - | - | - | - | 0 | 0 | 0 | - | - | - | 70 | 4 | 7 | 18 | 2.57 | 13 | 100 |
| smoke-java | java-gradle | 1-Empty | free | 1 | 1 | 0.04 | 118,655 | 110,316 | 8,339 | 1,779 | 517 | 8 | 14,832 | 9 | 0 | - | - | - | 4 | 0 | 0 | 0 | - | - | - | - | - | 24 | 0 | 2 | - | - | - | - |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 4-Refactoring:1-Empty:free vs 2-ModelStructure+Package:1-Empty:free | +96% | +176% | +180% | +21% | +83% | +51% | - | +31% |
| smoke | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | -18% | -48% | -51% | +8% | -59% | +28% | +13% | -12% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | completed | 14/14 | 0.24070289999999997 | 1,004,577 | 969,089 | 14,634 | - | - | 166 | 13 | 35 | 20260909-201046 |
| 2019-2c-parcial1 | 4-Refactoring | 1-Empty | free | completed | 14/14 | 0.4719249 | 2,772,085 | 2,715,999 | 17,757 | 111 | 17 | 217 | 7 | 34 | 20260910-163321 |
| 2022-1c-recuperatorio-parcial1 | 5-LiveTyping | 5-LiveTyping+8-DesignHeuristicsInline | free | completed | 29/29 | 0.29247770000000006 | 1,245,150 | 1,190,877 | 13,014 | 32 | 1 | 151 | 28 | 58 | 20260914-204729-15489 |
| smoke | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.105097 | 419,033 | 401,640 | 6,081 | 31 | 4 | 80 | 4 | 57 | 20260910-191901 |
| smoke | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | - | 0.09463689999999998 | 217,809 | 196,729 | 6,582 | 35 | 1 | 70 | 4 | 18 | 20260910-191901 |
| smoke-java | java-gradle | 1-Empty | free | completed | 1/1 | 0.036538600000000004 | 118,655 | 110,316 | 1,779 | 9 | 0 | 24 | 0 | - | 20260915-110444-37953 |
