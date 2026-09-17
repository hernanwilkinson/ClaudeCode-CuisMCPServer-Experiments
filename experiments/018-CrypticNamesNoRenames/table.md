# 018-CrypticNamesNoRenames: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 0.8 | 301,391 | 264,564 | 36,827 | 11,956 | 5,844 | 7 | 43,056 | 7 | 24 | 5 | 4.6 | 0 | 2 | 42 | 21.0 | 5 | 0 | 0 | 1 | 0 | 3 | 0 | 0 | 0 | - | - | 0 | 108 | 7 | 93 | 46 | 0.5 | 6 | 77.42 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 0.75 | 349,082 | 321,626 | 30,250 | 11,938 | 5,974 | 9 | 38,787 | 10 | 20 | 2 | 5.67 | 0 | 3 | 44 | 14.0 | 4 | 0 | 0 | 1 | 0 | 11 | 0 | 0 | 0 | 117 | 1 | 0 | 111 | 7 | 98 | 34 | 0.34 | 35 | 78.18 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 0.93 | 287,303 | 250,369 | 35,366 | 16,200 | 7,996 | 7 | 41,043 | 7 | 28 | 4 | 5.0 | 0 | 2 | 66 | 33.0 | 10 | 0 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | - | - | 0 | 138 | 6 | 66 | 19 | 0.29 | 1 | 94.19 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 1.04 | 340,542 | 303,273 | 37,269 | 19,911 | 11,454 | 8 | 42,568 | 8 | 24 | 5 | 4.5 | 0 | 3 | 68 | 21.67 | 7 | 0 | 0 | 0 | 0 | 6 | 0 | 0 | 0 | 53 | 11 | 0 | 178 | 6 | 69 | 18 | 0.26 | 20 | 94.72 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 1.82 | 867,196 | 797,875 | 62,439 | 33,840 | 16,752 | 14 | 59,269 | 13 | 43 | 7 | 5.0 | 0 | 5 | 96 | 18.4 | 8 | 0 | 0 | 0 | 0 | 13 | 1 | 1 | 0 | - | - | 0 | 275 | 5 | 95 | 49 | 0.53 | 1 | 94.32 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | 3 | 3 | 1.61 | 662,484 | 607,728 | 54,887 | 30,429 | 16,762 | 12 | 55,207 | 11 | 50 | 7 | 6.71 | 0 | 3 | 93 | 31.0 | 7 | 0 | 0 | 5 | 0 | 11 | 1 | 0 | 0 | 81 | 1 | 0 | 261 | 4 | 94 | 37 | 0.39 | 26 | 95.64 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.7662925 | 294,447 | 259,935 | 11,651 | 7 | 0 | 102 | 7 | 51 | 20260917-072756-61689 |
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.8797235000000001 | 359,793 | 321,787 | 13,554 | 7 | 0 | 122 | 7 | 46 | 20260917-073758-62834 |
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.799382 | 301,391 | 264,564 | 11,956 | 6 | 0 | 108 | 7 | 46 | 20260917-074746-63976 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.688358 | 349,082 | 321,626 | 10,123 | 9 | 0 | 97 | 7 | 38 | 20260917-072847-61855 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.7881805000000001 | 404,911 | 374,661 | 11,938 | 12 | 0 | 111 | 7 | 34 | 20260917-073827-62996 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 27/27 | 0.7468135 | 310,032 | 279,737 | 12,163 | 10 | 0 | 115 | 7 | 32 | 20260917-074807-64140 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 0.9634795 | 287,303 | 250,369 | 18,761 | 6 | 0 | 156 | 6 | 19 | 20260917-072011-60988 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 0.8620800000000001 | 280,928 | 247,090 | 16,009 | 7 | 0 | 134 | 6 | 16 | 20260917-072957-62039 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 0.9306180000000002 | 379,462 | 344,096 | 16,200 | 9 | 0 | 138 | 6 | 28 | 20260917-074018-63192 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 1.0416215 | 340,542 | 303,273 | 20,695 | 8 | 0 | 190 | 6 | 13 | 20260917-072011-60987 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 1.105364 | 476,754 | 437,878 | 19,911 | 13 | 0 | 178 | 6 | 18 | 20260917-073042-62217 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 18/18 | 0.887814 | 316,025 | 283,998 | 17,025 | 8 | 0 | 155 | 8 | 20 | 20260917-074036-63358 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 26/26 | 1.7946669999999998 | 711,233 | 648,794 | 33,840 | 12 | 1 | 273 | 5 | 50 | 20260917-072303-61292 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 25/25 | 2.1068575 | 867,196 | 797,875 | 40,594 | 13 | 0 | 312 | 4 | 47 | 20260917-073228-62399 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 26/26 | 1.8208075 | 938,494 | 878,155 | 31,140 | 15 | 0 | 275 | 5 | 49 | 20260917-074252-63551 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 25/25 | 1.8627310000000001 | 895,950 | 836,102 | 33,854 | 15 | 0 | 292 | 4 | 37 | 20260917-072337-61451 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 25/25 | 1.5495245 | 597,866 | 542,979 | 29,171 | 10 | 0 | 252 | 4 | 34 | 20260917-073356-62598 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline+10-NoRenames | free | completed | 25/25 | 1.6120290000000002 | 662,484 | 607,728 | 30,429 | 11 | 0 | 261 | 4 | 42 | 20260917-074327-63727 |
