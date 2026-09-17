# 013-BatchToolFiveRuns: results

Model claude-opus-5, effort high, technique free, 5 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 5 | 5 | 0.42 | 81,165 | 64,013 | 17,360 | 8,614 | 1,940 | 6 | 13,528 | 7 | 7 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | - | - | 0 | 74 | 0 | 48 | 25 | 0.53 | 2 | 86.65 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | 5 | 5 | 0.53 | 87,157 | 63,921 | 23,524 | 10,040 | 3,010 | 5 | 17,431 | 4 | 21 | 2 | 9.5 | 0 | 2 | 49 | 25.0 | 3 | 0 | 0 | 0 | 0 | 4 | 0 | 0 | 0 | - | - | 0 | 85 | 0 | 47 | 24 | 0.49 | 2 | 88.63 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | 5 | 5 | 0.59 | 196,453 | 172,563 | 24,194 | 9,935 | 2,393 | 6 | 32,742 | 5 | 26 | 3 | 7.33 | 0 | 2 | 49 | 25.0 | 5 | 0 | 0 | 1 | 0 | 10 | 0 | 0 | 0 | - | - | 0 | 94 | 0 | 48 | 25 | 0.52 | 2 | 86.65 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | 5 | 5 | 0.79 | 157,328 | 133,642 | 24,079 | 18,798 | 4,573 | 12 | 13,851 | 13 | 13 | 0 | - | 2 | 0 | 0 | - | 5 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | - | - | 0 | 157 | 8 | 59 | 67 | 1.08 | 5 | 88.71 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | 5 | 5 | 0.95 | 171,161 | 136,014 | 31,708 | 22,068 | 5,786 | 9 | 17,446 | 8 | 26 | 3 | 7.33 | 2 | 2 | 89 | 44.5 | 9 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | - | - | 0 | 177 | 8 | 57 | 61 | 1.07 | 4 | 91.57 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | 5 | 5 | 1.11 | 359,049 | 328,339 | 34,155 | 23,492 | 6,385 | 11 | 32,962 | 10 | 28 | 5 | 5.4 | 2 | 2 | 95 | 45.5 | 11 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | - | - | 0 | 195 | 8 | 63 | 64 | 1.08 | 3 | 92.86 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +26% | +7% | -0% | +17% | -17% | +29% | -43% | +15% |
| 2019-2c-parcial1 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +40% | +142% | +170% | +15% | +0% | +142% | -29% | +27% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +20% | +9% | +2% | +17% | -25% | +26% | -38% | +13% |
| 2025-2c-parcial2 | 4-Refactoring:9-BatchFirst:free vs 1-Evaluate+TestRunning:1-Empty:free | +41% | +128% | +146% | +25% | -8% | +138% | -23% | +24% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.4374435 | 97,237 | 79,877 | 8,959 | 7 | 1 | 74 | 0 | 21 | 20260917-014758-38084 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.39165599999999995 | 78,786 | 62,552 | 7,924 | 7 | 0 | 66 | 0 | 29 | 20260917-015442-39194 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.4246305 | 81,165 | 63,401 | 8,614 | 8 | 0 | 93 | 0 | 27 | 20260917-020059-40342 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.4142915 | 80,935 | 64,013 | 8,525 | 7 | 0 | 69 | 0 | 20 | 20260917-021053-41536 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.45414999999999994 | 107,449 | 88,860 | 8,956 | 8 | 0 | 78 | 0 | 25 | 20260917-021725-42566 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.506362 | 66,698 | 43,324 | 10,040 | 3 | 0 | 77 | 0 | 27 | 20260917-014758-38085 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5491415000000002 | 67,993 | 43,313 | 11,229 | 3 | 0 | 89 | 0 | 21 | 20260917-015603-39466 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5269565 | 111,547 | 88,023 | 9,911 | 4 | 0 | 275 | 0 | 26 | 20260917-020248-40549 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5080705 | 87,157 | 63,921 | 9,752 | 4 | 0 | 76 | 0 | 21 | 20260917-021201-41711 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | 14/14 | 0.5333289999999999 | 88,682 | 64,628 | 10,421 | 4 | 0 | 85 | 0 | 24 | 20260917-021859-42759 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.7412340000000002 | 155,100 | 111,378 | 9,935 | 4 | 0 | 87 | 0 | 25 | 20260917-014928-38451 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5863035 | 235,426 | 211,967 | 9,832 | 6 | 0 | 94 | 0 | 25 | 20260917-015604-39505 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5702465 | 196,453 | 172,563 | 9,805 | 5 | 0 | 90 | 0 | 20 | 20260917-020428-40757 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.6479410000000001 | 245,844 | 218,032 | 10,435 | 6 | 0 | 94 | 0 | 25 | 20260917-021217-41860 |
| 2019-2c-parcial1 | 4-Refactoring | 9-BatchFirst | free | completed | 14/14 | 0.5781725 | 154,109 | 129,915 | 10,853 | 4 | 0 | 98 | 0 | 25 | 20260917-022040-43031 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.7870945 | 180,069 | 156,149 | 18,798 | 14 | 2 | 155 | 8 | 67 | 20260917-014931-38535 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.8031915000000001 | 156,164 | 132,063 | 19,850 | 9 | 0 | 170 | 8 | 69 | 20260917-015748-39805 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.7665795 | 145,078 | 120,999 | 18,616 | 11 | 0 | 157 | 8 | 60 | 20260917-020614-40993 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.9420350000000002 | 311,931 | 284,610 | 21,068 | 20 | 4 | 211 | 8 | 67 | 20260917-021332-42040 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 0.769611 | 157,328 | 133,642 | 18,642 | 13 | 2 | 157 | 8 | 64 | 20260917-022044-43108 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 1.0432620000000001 | 171,161 | 136,014 | 24,955 | 8 | 2 | 194 | 8 | 58 | 20260917-015111-38757 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.890113 | 136,783 | 105,796 | 21,097 | 7 | 1 | 170 | 8 | 61 | 20260917-015754-39904 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.9627455 | 191,902 | 159,841 | 22,493 | 10 | 4 | 177 | 8 | 61 | 20260917-020739-41171 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.9455284999999999 | 185,425 | 153,717 | 22,068 | 10 | 3 | 181 | 8 | 66 | 20260917-021408-42203 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 9-BatchFirst | free | completed | - | 0.8360924999999999 | 144,228 | 115,085 | 19,488 | 7 | 1 | 161 | 7 | 60 | 20260917-022234-43301 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 1.1410770000000001 | 368,624 | 333,674 | 24,994 | 10 | 2 | 201 | 8 | 79 | 20260917-015224-38951 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 1.114122 | 270,820 | 234,034 | 25,173 | 7 | 2 | 198 | 8 | 68 | 20260917-020054-40249 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 0.9708845 | 359,049 | 328,339 | 19,989 | 10 | 2 | 157 | 8 | 57 | 20260917-020907-41354 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 1.054525 | 290,185 | 256,030 | 23,402 | 8 | 2 | 186 | 8 | 64 | 20260917-021721-42489 |
| 2025-2c-parcial2 | 4-Refactoring | 9-BatchFirst | free | completed | - | 1.116119 | 428,504 | 395,378 | 23,492 | 12 | 6 | 195 | 8 | 60 | 20260917-022338-43468 |
