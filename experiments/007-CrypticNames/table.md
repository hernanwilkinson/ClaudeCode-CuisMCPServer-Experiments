# 007-CrypticNames: results

Model claude-opus-5, effort high, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 2.01 | 1,543,995 | 1,485,213 | 58,782 | 27,202 | 18,193 | 25 | 61,760 | 35 | 0 | 4 | 56 | 14.0 | 6 | 0 | 0 | 1 | 0 | 11 | 0 | 0 | 0 | - | - | 0 | 335 | 7 | 96 | 40 | 0.42 | 6 | 79.29 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 4.43 | 4,992,462 | 4,916,939 | 75,523 | 48,667 | 35,496 | 66 | 75,643 | 66 | 0 | 7 | 76 | 10.86 | 10 | 0 | 0 | 14 | 0 | 12 | 0 | 0 | 0 | 66 | 24 | 14 | 657 | 7 | 81 | 23 | 0.28 | 35 | 81.72 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 2.71 | 1,747,998 | 1,663,625 | 84,373 | 41,480 | 27,850 | 27 | 64,741 | 36 | 1 | 6 | 81 | 13.5 | 9 | 0 | 0 | 0 | 0 | 8 | 0 | 0 | 0 | - | - | 0 | 487 | 7 | 58 | 24 | 0.41 | 0 | 99.75 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 2.58 | 1,484,043 | 1,400,575 | 83,468 | 41,617 | 28,831 | 23 | 64,524 | 34 | 0 | 6 | 68 | 11.33 | 9 | 0 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 | 8 | 0 | 501 | 5 | 48 | 20 | 0.42 | 0 | 99.4 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 5.98 | 5,510,171 | 5,385,175 | 124,996 | 81,366 | 58,481 | 53 | 103,965 | 62 | 1 | 13 | 122 | 9.38 | 13 | 0 | 0 | 2 | 0 | 9 | 1 | 0 | 0 | - | - | 2 | 976 | 5 | 94 | 48 | 0.51 | 3 | 96.82 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 1 | 1 | 5.72 | 4,825,637 | 4,705,096 | 120,541 | 86,520 | 66,685 | 48 | 100,534 | 47 | 0 | 12 | 125 | 10.42 | 9 | 0 | 0 | 0 | 0 | 4 | 1 | 0 | 0 | 0 | 25 | 0 | 1,053 | 4 | 92 | 38 | 0.41 | 0 | 95.13 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 2.0102265 | 1,543,995 | 1,485,213 | 27,202 | 35 | 0 | 335 | 7 | 40 | 20260915-210841-76900 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 4.4297144999999984 | 4,992,462 | 4,916,939 | 48,667 | 66 | 0 | 657 | 7 | 23 | 20260915-211435-77481 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 19/19 | 2.7122725 | 1,747,998 | 1,663,625 | 41,480 | 36 | 1 | 487 | 7 | 24 | 20260915-204213-74190 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 2.5751625 | 1,484,043 | 1,400,575 | 41,617 | 34 | 0 | 501 | 5 | 20 | 20260915-204213-74189 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 5.9761675 | 5,510,171 | 5,385,175 | 81,366 | 62 | 1 | 976 | 5 | 48 | 20260915-212651-78350 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 26/26 | 5.720478 | 4,825,637 | 4,705,096 | 86,520 | 47 | 0 | 1,053 | 4 | 38 | 20260915-205049-75701 |
