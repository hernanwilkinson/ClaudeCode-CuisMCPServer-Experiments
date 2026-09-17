# 011-ModelStructureToolsCleanRerun: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 3 | 3 | 0.4 | 78,899 | 62,500 | 16,399 | 8,013 | 1,906 | 6 | 13,150 | 7 | 7 | 0 | - | 0 | 0 | 0 | - | 1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | - | - | 0 | 66 | 0 | 48 | 25 | 0.5 | 2 | 86.65 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 3 | 3 | 0.53 | 120,165 | 97,717 | 23,660 | 8,830 | 1,995 | 7 | 17,635 | 6 | 23 | 4 | 5.25 | 2 | 2 | 45 | 22.5 | 5 | 0 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | - | - | 0 | 71 | 0 | 45 | 22 | 0.49 | 2 | 88.63 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 3 | 3 | 1.26 | 354,985 | 311,107 | 43,878 | 25,935 | 10,452 | 12 | 29,582 | 15 | 15 | 0 | - | 0 | 0 | 0 | - | 3 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | - | - | 0 | 211 | 5 | 89 | 49 | 0.55 | 1 | 95.58 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 3 | 3 | 1.53 | 445,633 | 391,843 | 56,395 | 30,853 | 14,314 | 11 | 40,512 | 11 | 34 | 5 | 6.33 | 2 | 2 | 101 | 50.5 | 5 | 0 | 0 | 0 | 0 | 7 | 1 | 0 | 0 | - | - | 0 | 248 | 5 | 88 | 55 | 0.64 | 1 | 96.4 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +32% | +52% | +56% | +10% | +17% | +34% | -14% | +8% |
| 2022-1c-parcial1 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +21% | +26% | +26% | +19% | -8% | +37% | -27% | +18% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.39550499999999994 | 78,899 | 62,500 | 8,013 | 7 | 0 | 66 | 0 | 25 | 20260917-005838-10403 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.386562 | 78,274 | 62,194 | 7,789 | 6 | 0 | 65 | 0 | 22 | 20260917-010407-12475 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.43045349999999993 | 100,146 | 82,817 | 8,633 | 8 | 1 | 76 | 0 | 27 | 20260917-010916-14248 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.528799 | 109,259 | 81,498 | 8,420 | 5 | 0 | 69 | 0 | 26 | 20260917-005838-10404 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.5339235000000001 | 123,447 | 99,787 | 9,900 | 6 | 2 | 80 | 0 | 19 | 20260917-010430-12706 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.4940184999999999 | 120,165 | 97,717 | 8,830 | 6 | 2 | 71 | 0 | 22 | 20260917-011049-15081 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.2572885 | 354,985 | 311,107 | 26,523 | 15 | 0 | 226 | 5 | 49 | 20260917-010000-10829 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 25/25 | 1.140065 | 283,231 | 242,560 | 24,487 | 11 | 0 | 207 | 5 | 54 | 20260917-010530-13071 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 27/27 | 1.27119 | 376,373 | 330,610 | 25,935 | 15 | 1 | 211 | 6 | 42 | 20260917-011050-15113 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 25/25 | 1.5349475000000004 | 455,960 | 399,565 | 30,853 | 11 | 2 | 248 | 5 | 55 | 20260917-010003-10905 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 28/28 | 1.633478 | 401,474 | 339,746 | 33,857 | 9 | 2 | 263 | 6 | 59 | 20260917-010607-13362 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 25/25 | 1.4781115 | 445,633 | 391,843 | 29,776 | 12 | 0 | 238 | 5 | 52 | 20260917-011218-19221 |
