# 012-ToolsVersusGuidance: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 3 | 3 | 0.41 | 80,302 | 63,458 | 16,844 | 8,271 | 1,879 | 6 | 13,384 | 8 | 8 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | - | - | 0 | 69 | 0 | 45 | 21 | 0.46 | 2 | 88.63 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | 3 | 3 | 0.58 | 119,597 | 94,947 | 24,650 | 10,878 | 2,311 | 6 | 19,933 | 5 | 25 | 4 | 5.67 | 0 | 2 | 54 | 24.5 | 5 | 0 | 0 | 0 | 0 | 5 | 0 | 0 | 0 | - | - | 0 | 85 | 0 | 52 | 22 | 0.44 | 2 | 85.94 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 3 | 3 | 0.57 | 132,930 | 107,228 | 24,419 | 10,505 | 2,824 | 7 | 18,990 | 6 | 26 | 5 | 5.0 | 2 | 2 | 48 | 24.0 | 6 | 0 | 0 | 0 | 0 | 3 | 0 | 0 | 0 | - | - | 0 | 84 | 0 | 47 | 25 | 0.56 | 2 | 88.93 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | 3 | 3 | 0.51 | 87,138 | 64,411 | 23,389 | 10,014 | 2,793 | 5 | 17,428 | 4 | 21 | 2 | 9.5 | 0 | 1 | 48 | 42.0 | 3 | 0 | 0 | 0 | 0 | 4 | 0 | 0 | 0 | - | - | 0 | 79 | 0 | 47 | 26 | 0.57 | 2 | 85.18 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | 3 | 3 | 0.85 | 259,010 | 233,167 | 25,595 | 19,070 | 4,113 | 16 | 15,497 | 16 | 16 | 0 | - | 2 | 0 | 0 | - | 6 | 0 | 0 | 0 | 0 | 0 | 3 | 0 | 0 | - | - | 0 | 160 | 8 | 58 | 57 | 1.0 | 3 | 92.37 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 1-Empty | free | 3 | 3 | 0.95 | 197,986 | 167,257 | 31,100 | 22,467 | 5,794 | 11 | 19,799 | 10 | 29 | 5 | 5.2 | 3 | 2 | 97 | 48.5 | 8 | 0 | 0 | 0 | 0 | 0 | 3 | 0 | 0 | - | - | 0 | 183 | 8 | 61 | 61 | 1.02 | 4 | 86.17 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 3 | 3 | 0.94 | 226,134 | 194,106 | 32,622 | 21,840 | 6,458 | 10 | 22,613 | 9 | 28 | 5 | 4.86 | 0 | 3 | 95 | 35.0 | 9 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | - | - | 0 | 169 | 8 | 65 | 66 | 1.02 | 5 | 91.27 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | 3 | 3 | 0.95 | 182,501 | 151,690 | 31,600 | 22,252 | 5,266 | 10 | 18,359 | 9 | 25 | 3 | 6.33 | 2 | 2 | 87 | 42.5 | 9 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | - | - | 0 | 180 | 8 | 56 | 60 | 1.05 | 4 | 94.6 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package:1-Empty:free vs 1-Evaluate+TestRunning:1-Empty:free | +41% | +49% | +50% | +32% | +0% | +49% | -38% | +23% |
| 2019-2c-parcial1 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +39% | +66% | +69% | +27% | +17% | +42% | -25% | +22% |
| 2019-2c-parcial1 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +24% | +9% | +2% | +21% | -17% | +30% | -50% | +14% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:1-Empty:free vs 1-Evaluate+TestRunning:1-Empty:free | +12% | -24% | -28% | +18% | -31% | +28% | -38% | +14% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +11% | -13% | -17% | +15% | -38% | +46% | -44% | +6% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +12% | -30% | -35% | +17% | -38% | +18% | -44% | +12% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.41090899999999997 | 80,302 | 63,458 | 8,432 | 7 | 0 | 69 | 0 | 19 | 20260917-011723-20580 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.399577 | 79,787 | 63,014 | 8,016 | 8 | 0 | 67 | 0 | 21 | 20260917-012623-32475 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.4280685 | 117,543 | 100,427 | 8,271 | 9 | 1 | 73 | 0 | 37 | 20260917-013623-36258 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | completed | 14/14 | 0.5816104999999999 | 143,910 | 118,881 | 10,878 | 6 | 0 | 85 | 0 | 22 | 20260917-011723-20579 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | completed | 14/14 | 0.5775135 | 119,597 | 94,947 | 11,344 | 5 | 0 | 92 | 0 | 27 | 20260917-012714-32642 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 1-Empty | free | completed | 14/14 | 0.533783 | 110,887 | 87,366 | 10,198 | 5 | 0 | 81 | 0 | 21 | 20260917-013711-36427 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.5024815 | 66,683 | 43,293 | 9,879 | 4 | 0 | 76 | 0 | 22 | 20260917-011850-21170 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.574739 | 132,930 | 107,228 | 10,567 | 6 | 2 | 84 | 0 | 25 | 20260917-012747-33051 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.5715105 | 153,970 | 129,551 | 10,505 | 7 | 2 | 85 | 0 | 28 | 20260917-013752-36594 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.4994255 | 87,138 | 64,411 | 9,600 | 4 | 0 | 77 | 0 | 27 | 20260917-011904-21387 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5538075 | 89,856 | 64,895 | 10,872 | 4 | 0 | 87 | 0 | 21 | 20260917-012902-35221 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5058845000000001 | 66,758 | 43,369 | 10,014 | 3 | 0 | 79 | 0 | 26 | 20260917-013848-36799 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.8516035000000002 | 259,010 | 233,167 | 19,070 | 16 | 2 | 160 | 8 | 66 | 20260917-012022-25000 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.8700354999999999 | 267,176 | 241,581 | 19,739 | 18 | 6 | 171 | 8 | 57 | 20260917-012928-35381 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.817344 | 232,462 | 207,908 | 18,720 | 15 | 2 | 156 | 9 | 57 | 20260917-013933-36973 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 1-Empty | free | completed | - | 0.9312435 | 197,986 | 167,257 | 21,617 | 9 | 1 | 180 | 8 | 61 | 20260917-012037-25160 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 1-Empty | free | completed | - | 0.9483415000000001 | 182,653 | 151,553 | 22,467 | 10 | 3 | 183 | 8 | 60 | 20260917-013046-35590 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 1-Empty | free | completed | - | 1.0838305000000001 | 272,209 | 237,761 | 24,824 | 12 | 7 | 197 | 8 | 74 | 20260917-014023-37149 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | - | 0.935783 | 226,134 | 194,106 | 20,742 | 9 | 0 | 164 | 8 | 59 | 20260917-012321-31906 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | - | 1.2814070000000002 | 343,382 | 296,694 | 26,652 | 11 | 6 | 211 | 8 | 71 | 20260917-013235-35812 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | - | 0.9368850000000002 | 162,112 | 129,490 | 21,840 | 8 | 0 | 169 | 9 | 66 | 20260917-014226-37363 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.9840455 | 171,381 | 138,251 | 23,348 | 7 | 1 | 182 | 8 | 61 | 20260917-012355-32228 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.9241550000000001 | 182,501 | 151,690 | 21,612 | 9 | 3 | 169 | 8 | 60 | 20260917-013405-36019 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.948194 | 183,588 | 151,988 | 22,252 | 9 | 2 | 180 | 8 | 55 | 20260917-014357-37574 |
