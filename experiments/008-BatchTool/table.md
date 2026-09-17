# 008-BatchTool: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 4 | 4 | 0.51 | 117,434 | 95,378 | 23,169 | 9,630 | 2,787 | 8.0 | 15,042 | 9.0 | 9.0 | 0.0 | - | 1.0 | 0.0 | 0.0 | - | 2.5 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 1.0 | 0.0 | 1.0 | - | - | 0.0 | 84.5 | 0.0 | 49.0 | 21.0 | 0.42 | 2.0 | 88.18 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | 4 | 4 | 0.64 | 139,272 | 106,604 | 32,668 | 10,349 | 2,916 | 7.0 | 19,896 | 6.0 | 25.5 | 4.5 | 5.4 | 1.0 | 2.0 | 44.5 | 22.25 | 5.5 | 0.0 | 0.0 | 0.0 | 0.0 | 7.0 | 0.0 | 0.0 | 0.0 | - | - | 0.0 | 90.0 | 0.0 | 46.5 | 20.5 | 0.44 | 2.0 | 89.25 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | 4 | 4 | 0.67 | 194,700 | 167,576 | 33,616 | 10,221 | 2,676 | 6.0 | 32,450 | 5.0 | 27.0 | 4.0 | 6.25 | 0.0 | 2.0 | 47.0 | 23.0 | 6.0 | 0.0 | 0.0 | 0.5 | 0.0 | 3.0 | 0.0 | 0.0 | 0.0 | - | - | 0.0 | 89.5 | 0.0 | 46.5 | 20.5 | 0.44 | 2.0 | 87.62 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | 4 | 4 | 0.87 | 226,632 | 199,836 | 26,796 | 20,328 | 5,542 | 15.0 | 14,876 | 15.5 | 15.5 | 0.0 | - | 2.5 | 0.0 | 0.0 | - | 6.5 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 3.0 | 0.0 | 1.0 | - | - | 0.0 | 174 | 8.0 | 63.0 | 64.5 | 1.05 | 3.0 | 89.2 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | 4 | 4 | 1.03 | 256,802 | 221,867 | 34,936 | 22,934 | 6,164 | 10.5 | 24,192 | 9.5 | 34.0 | 6.0 | 5.17 | 1.5 | 4.5 | 91.5 | 22.31 | 10.5 | 0.0 | 0.0 | 0.0 | 0.0 | 0.5 | 1.0 | 0.0 | 0.0 | - | - | 0.0 | 185 | 8.5 | 57.0 | 59.0 | 1.06 | 3.5 | 92.19 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | 4 | 4 | 1.02 | 371,123 | 339,292 | 31,832 | 21,354 | 6,280 | 10.5 | 34,862 | 9.5 | 29.0 | 4.5 | 5.33 | 2.0 | 3.0 | 81.0 | 30.12 | 9.0 | 0.0 | 0.0 | 0.0 | 0.0 | 0.0 | 2.0 | 0.0 | 0.0 | - | - | 0.0 | 177 | 8.0 | 52.0 | 52.0 | 1.0 | 4.0 | 94.03 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +25% | +19% | +12% | +7% | -12% | +32% | -33% | +7% |
| 2019-2c-parcial1 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +31% | +66% | +76% | +6% | -25% | +116% | -44% | +6% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +18% | +13% | +11% | +13% | -30% | +63% | -39% | +7% |
| 2025-2c-parcial2 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +17% | +64% | +70% | +5% | -30% | +134% | -39% | +2% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 1.1639944999999998 | 611,106 | 575,169 | 20,692 | 25 | 6 | 255 | 0 | 17 | 20260915-224036-81487 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.5768274999999998 | 124,659 | 96,735 | 9,972 | 9 | 1 | 88 | 0 | 17 | 20260916-084038-94320 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.395536 | 110,210 | 94,022 | 7,469 | 9 | 1 | 73 | 0 | 27 | 20260916-084724-95599 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.45058050000000005 | 87,015 | 68,601 | 9,288 | 8 | 0 | 81 | 0 | 25 | 20260916-085358-96874 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 1.1165610000000001 | 455,597 | 412,322 | 19,112 | 14 | 4 | 211 | 0 | 16 | 20260915-224036-81488 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.7095825 | 135,313 | 94,195 | 10,055 | 6 | 2 | 92 | 0 | 21 | 20260916-084038-94319 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.45659849999999996 | 65,182 | 43,377 | 8,676 | 3 | 0 | 71 | 0 | 22 | 20260916-084842-95862 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.567682 | 143,231 | 119,014 | 10,643 | 6 | 0 | 88 | 0 | 20 | 20260916-085534-97125 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 1.3911474999999998 | 650,401 | 592,475 | 20,632 | 14 | 4 | 252 | 0 | 17 | 20260915-224422-81908 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.7793695 | 197,635 | 153,889 | 10,601 | 5 | 0 | 93 | 0 | 19 | 20260916-084221-94755 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5649745 | 191,766 | 168,279 | 9,841 | 5 | 0 | 86 | 0 | 26 | 20260916-084852-95994 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.548867 | 190,078 | 166,874 | 9,338 | 5 | 0 | 79 | 0 | 22 | 20260916-085617-97310 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 2.3342259999999997 | 1,360,214 | 1,299,312 | 43,036 | 45 | 3 | 503 | 8 | 79 | 20260915-224507-82103 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.9330390000000001 | 282,517 | 253,538 | 20,666 | 19 | 2 | 176 | 8 | 60 | 20260916-084225-94833 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.7858780000000001 | 116,056 | 92,036 | 19,990 | 9 | 2 | 171 | 8 | 69 | 20260916-085008-96228 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.8092075000000001 | 170,747 | 146,135 | 19,606 | 12 | 4 | 170 | 8 | 60 | 20260916-085717-97514 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 2.4118734999999996 | 970,772 | 899,977 | 50,167 | 23 | 7 | 535 | 10 | 102 | 20260915-224850-82462 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 1.0684295000000001 | 338,285 | 302,479 | 22,370 | 11 | 1 | 181 | 9 | 49 | 20260916-084409-95102 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.9986375000000001 | 175,320 | 141,255 | 23,498 | 8 | 2 | 189 | 8 | 50 | 20260916-085033-96401 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.8461470000000001 | 161,556 | 132,714 | 19,658 | 7 | 1 | 156 | 8 | 68 | 20260916-085751-97700 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 2.4917640000000003 | 1,069,585 | 997,858 | 51,031 | 20 | 5 | 541 | 8 | 49 | 20260915-225348-82880 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 1.0546745000000002 | 458,906 | 426,599 | 20,737 | 11 | 1 | 172 | 8 | 48 | 20260916-084535-95360 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 0.9299325 | 251,117 | 220,485 | 20,538 | 7 | 2 | 168 | 8 | 55 | 20260916-085315-96691 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 0.988762 | 283,340 | 251,984 | 21,972 | 8 | 2 | 182 | 8 | 64 | 20260916-090022-97985 |
