# 017-CrypticNamesHiddenDomain: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 0.84 | 404,283 | 367,422 | 36,861 | 11,653 | 4,466 | 9 | 44,660 | 9 | 30 | 5 | 5.4 | 0 | 3 | 50 | 16.67 | 6 | 0 | 0 | 1 | 0 | 4 | 0 | 0 | 0 | - | - | 0 | 101 | 7 | 98 | 46 | 0.47 | 6 | 78.75 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 0.74 | 269,227 | 240,059 | 30,726 | 13,033 | 7,104 | 7 | 38,461 | 7 | 24 | 4 | 3.4 | 0 | 3 | 47 | 15.67 | 4 | 0 | 0 | 0 | 0 | 10 | 0 | 0 | 0 | 111 | 1 | 0 | 127 | 7 | 97 | 32 | 0.31 | 35 | 77.67 |
| 2020-2c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 0.77 | 319,373 | 287,942 | 31,431 | 12,362 | 6,249 | 8 | 39,922 | 9 | 26 | 5 | 4.6 | 0 | 3 | 45 | 14.67 | 6 | 0 | 0 | 1 | 0 | 12 | 0 | 0 | 0 | 115 | 1 | 0 | 117 | 7 | 100 | 33 | 0.33 | 35 | 76.34 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 0.93 | 331,377 | 295,941 | 35,436 | 16,461 | 6,879 | 8 | 41,422 | 7 | 29 | 5 | 5.4 | 0 | 2 | 66 | 33.0 | 9 | 0 | 0 | 0 | 0 | 6 | 0 | 0 | 0 | - | - | 0 | 133 | 6 | 54 | 20 | 0.36 | 1 | 99.07 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 1.29 | 424,904 | 376,976 | 46,285 | 22,035 | 10,648 | 10 | 42,490 | 10 | 27 | 5 | 4.75 | 0 | 2 | 73 | 34.5 | 11 | 0 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | 0 | 16 | 0 | 210 | 8 | 51 | 19 | 0.37 | 0 | 97.89 |
| 2021-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 1.1 | 442,635 | 404,859 | 37,776 | 20,712 | 11,449 | 11 | 44,264 | 10 | 24 | 5 | 4.67 | 1 | 2 | 72 | 36.0 | 7 | 0 | 0 | 0 | 0 | 6 | 0 | 0 | 0 | 55 | 0 | 0 | 184 | 6 | 58 | 14 | 0.24 | 20 | 94.43 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 1.74 | 761,356 | 700,919 | 60,437 | 31,356 | 14,824 | 13 | 58,566 | 12 | 39 | 8 | 4.44 | 0 | 5 | 102 | 23.8 | 8 | 0 | 0 | 0 | 0 | 7 | 1 | 0 | 0 | - | - | 0 | 253 | 5 | 92 | 52 | 0.57 | 0 | 96.53 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 1.82 | 546,142 | 484,053 | 61,716 | 35,745 | 20,392 | 10 | 54,614 | 11 | 39 | 6 | 6.5 | 0 | 2 | 114 | 57.0 | 8 | 0 | 0 | 0 | 0 | 4 | 1 | 0 | 0 | 33 | 7 | 0 | 302 | 4 | 90 | 41 | 0.46 | 0 | 97.52 |
| 2022-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | 3 | 3 | 1.86 | 682,123 | 622,938 | 62,807 | 34,355 | 17,833 | 12 | 58,501 | 12 | 45 | 6 | 6.5 | 0 | 3 | 118 | 39.33 | 8 | 0 | 0 | 11 | 0 | 4 | 1 | 0 | 0 | 41 | 4 | 9 | 297 | 5 | 91 | 31 | 0.34 | 0 | 96.86 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.821391 | 356,646 | 319,612 | 11,653 | 8 | 0 | 98 | 7 | 46 | 20260917-064146-56753 |
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.8484114999999999 | 446,596 | 411,663 | 11,734 | 11 | 0 | 105 | 7 | 49 | 20260917-065729-58522 |
| 2020-2c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.8403560000000001 | 404,283 | 367,422 | 11,525 | 9 | 0 | 101 | 7 | 46 | 20260917-071300-60236 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.7018895 | 269,227 | 240,059 | 11,610 | 7 | 0 | 112 | 7 | 32 | 20260917-064343-56990 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.7381645 | 227,805 | 197,079 | 13,297 | 5 | 0 | 127 | 7 | 29 | 20260917-065933-58717 |
| 2020-2c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.8285665 | 409,672 | 378,303 | 13,033 | 12 | 0 | 134 | 7 | 34 | 20260917-071459-60454 |
| 2020-2c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.7672509999999999 | 319,373 | 287,942 | 12,362 | 8 | 0 | 117 | 7 | 32 | 20260917-064454-57158 |
| 2020-2c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.7119720000000002 | 309,908 | 280,974 | 11,289 | 9 | 0 | 107 | 7 | 34 | 20260917-070027-58908 |
| 2020-2c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 0.850686 | 372,813 | 339,282 | 13,833 | 9 | 0 | 134 | 7 | 33 | 20260917-071629-60638 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.1556449999999998 | 428,259 | 372,460 | 16,461 | 9 | 0 | 133 | 6 | 19 | 20260917-063036-55583 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 0.9329255 | 331,377 | 295,941 | 17,227 | 7 | 0 | 151 | 6 | 20 | 20260917-064553-57360 |
| 2021-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 0.8809889999999999 | 283,161 | 247,858 | 16,164 | 6 | 0 | 131 | 6 | 22 | 20260917-070157-59096 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.2853419999999998 | 424,904 | 368,634 | 21,537 | 9 | 0 | 191 | 8 | 24 | 20260917-063036-55584 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.1324230000000002 | 416,292 | 376,976 | 22,035 | 10 | 0 | 210 | 7 | 19 | 20260917-064709-57533 |
| 2021-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.362702 | 527,659 | 481,374 | 26,371 | 11 | 0 | 228 | 8 | 8 | 20260917-070232-59256 |
| 2021-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.0978895 | 442,635 | 404,859 | 20,712 | 10 | 1 | 184 | 6 | 12 | 20260917-063305-55887 |
| 2021-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.06196 | 438,717 | 402,800 | 20,060 | 10 | 2 | 182 | 6 | 14 | 20260917-064840-57717 |
| 2021-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 18/18 | 1.1622505 | 486,981 | 448,971 | 22,311 | 12 | 0 | 186 | 5 | 20 | 20260917-070423-59447 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 2.066669 | 927,020 | 857,048 | 37,543 | 14 | 0 | 318 | 5 | 52 | 20260917-063403-56057 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 25/25 | 1.7385995 | 761,356 | 700,919 | 31,356 | 12 | 0 | 253 | 4 | 44 | 20260917-065054-57918 |
| 2022-1c-parcial1 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 26/26 | 1.5586615000000001 | 558,095 | 501,433 | 29,657 | 10 | 0 | 234 | 5 | 54 | 20260917-070636-59649 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 25/25 | 1.6872215000000002 | 481,585 | 422,183 | 35,288 | 8 | 0 | 302 | 4 | 41 | 20260917-063625-56267 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 26/26 | 1.8218415 | 546,142 | 484,053 | 38,361 | 11 | 0 | 314 | 5 | 47 | 20260917-065157-58088 |
| 2022-1c-parcial1-cryptic | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 25/25 | 1.8250880000000003 | 690,562 | 628,846 | 35,745 | 13 | 0 | 298 | 4 | 27 | 20260917-070745-59822 |
| 2022-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 27/27 | 1.8649095000000002 | 819,016 | 756,209 | 34,355 | 13 | 0 | 297 | 5 | 31 | 20260917-063939-56483 |
| 2022-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 25/25 | 1.7262490000000001 | 682,123 | 622,938 | 32,922 | 12 | 0 | 284 | 4 | 27 | 20260917-065526-58326 |
| 2022-1c-parcial1-cryptic3 | 4-Refactoring | 2-EvaluateAsLastResource+8-DesignHeuristicsInline | free | completed | 29/29 | 1.9214895 | 661,226 | 596,359 | 38,990 | 10 | 0 | 321 | 6 | 42 | 20260917-071049-60035 |
