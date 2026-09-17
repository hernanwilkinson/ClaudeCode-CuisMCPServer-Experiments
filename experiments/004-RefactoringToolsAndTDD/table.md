# 004-RefactoringToolsAndTDD: results

Model claude-opus-5, effort high, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | define calls | methods defined | methods per define call | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2023-2c-parcial2 | 3-Search | 8-DesignHeuristicsInline | tdd | 1 | 1 | 7.5 | 9,429,687 | 9,314,687 | 115,000 | 68,731 | 35,519 | 158 | 59,682 | 176 | 0 | 78 | 161 | 2.06 | 1,023 | 9 | 77 | 58 | 0.75 | 11 | 99.57 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | free | 1 | 1 | 2.69 | 780,336 | 702,494 | 77,842 | 62,351 | 40,674 | 13 | 60,026 | 26 | 0 | 2 | 153 | 76.5 | 681 | 10 | 80 | 69 | 0.86 | 0 | 95.84 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | tdd | 1 | 1 | 11.44 | 14,970,306 | 14,820,755 | 149,551 | 102,520 | 60,809 | 156 | 95,964 | 237 | 3 | 88 | 149 | 1.69 | 1,415 | 8 | 64 | 43 | 0.67 | 15 | 99.47 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | test-after | 1 | 1 | 2.26 | 579,020 | 511,534 | 67,486 | 53,409 | 33,337 | 11 | 52,638 | 29 | 1 | 2 | 144 | 72.0 | 571 | 11 | 81 | 102 | 1.26 | 5 | 97.38 |
| 2023-2c-parcial2 | 4-Refactoring | 8-DesignHeuristicsInline | tdd | 1 | 1 | 7.19 | 7,781,713 | 7,643,242 | 138,471 | 79,930 | 44,082 | 105 | 74,112 | 174 | 0 | 83 | 166 | 2.0 | 1,047 | 8 | 62 | 48 | 0.77 | 3 | 99.13 |
| 2025-2c-recuperatorio | 3-Search | 8-DesignHeuristicsInline | tdd | 1 | 1 | 5.95 | 6,002,905 | 5,885,214 | 117,691 | 72,282 | 41,191 | 82 | 73,206 | 123 | 1 | 37 | 128 | 3.46 | 2,668 | 0 | 66 | 37 | 0.56 | 3 | 98.14 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | free | 2 | 1 | 2.81 | 958,300 | 873,328 | 84,972 | 61,217 | 36,313 | 17 | 56,371 | 50 | 2 | 4 | 117 | 29.25 | 1,049 | 1 | 64 | 41 | 0.64 | 10 | 99.91 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | tdd | 1 | 1 | 6.15 | 6,826,267 | 6,719,290 | 106,977 | 69,339 | 41,204 | 87 | 78,463 | 123 | 1 | 37 | 103 | 2.78 | 908 | 0 | 63 | 41 | 0.65 | 5 | 96.58 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | test-after | 1 | 1 | 2.19 | 874,513 | 807,290 | 67,223 | 44,576 | 22,579 | 17 | 51,442 | 49 | 3 | 3 | 106 | 35.33 | 486 | 1 | 69 | 41 | 0.59 | 2 | 98.19 |
| 2025-2c-recuperatorio | 4-Refactoring | 8-DesignHeuristicsInline | tdd | 1 | 1 | 7.51 | 8,856,521 | 8,734,017 | 122,504 | 75,445 | 43,753 | 114 | 77,689 | 165 | 1 | 49 | 128 | 2.61 | 2,800 | 0 | 59 | 39 | 0.66 | 3 | 100 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2023-2c-parcial2 | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:free vs 3-Search:8-DesignHeuristicsInline:tdd | -64% | -92% | -92% | -9% | -92% | +1% | -85% | -33% |
| 2023-2c-parcial2 | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:tdd vs 3-Search:8-DesignHeuristicsInline:tdd | +53% | +59% | +59% | +49% | -1% | +61% | +35% | +38% |
| 2023-2c-parcial2 | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:test-after vs 3-Search:8-DesignHeuristicsInline:tdd | -70% | -94% | -95% | -22% | -93% | -12% | -84% | -44% |
| 2023-2c-parcial2 | 4-Refactoring:8-DesignHeuristicsInline:tdd vs 3-Search:8-DesignHeuristicsInline:tdd | -4% | -17% | -18% | +16% | -34% | +24% | -1% | +2% |
| 2025-2c-recuperatorio | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:free vs 3-Search:8-DesignHeuristicsInline:tdd | -53% | -84% | -85% | -15% | -79% | -23% | -59% | -61% |
| 2025-2c-recuperatorio | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:tdd vs 3-Search:8-DesignHeuristicsInline:tdd | +3% | +14% | +14% | -4% | +6% | +7% | +0% | -66% |
| 2025-2c-recuperatorio | 4-Refactoring:4-Refactoring+8-DesignHeuristicsInline:test-after vs 3-Search:8-DesignHeuristicsInline:tdd | -63% | -85% | -86% | -38% | -79% | -30% | -60% | -82% |
| 2025-2c-recuperatorio | 4-Refactoring:8-DesignHeuristicsInline:tdd vs 3-Search:8-DesignHeuristicsInline:tdd | +26% | +48% | +48% | +4% | +39% | +6% | +34% | +5% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2023-2c-parcial2 | 3-Search | 8-DesignHeuristicsInline | tdd | completed | - | 7.500488500000003 | 9,429,687 | 9,314,687 | 68,731 | 176 | 0 | 1,023 | 9 | 58 | 20260911-151410-39007 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | free | completed | - | 2.6865119999999996 | 780,336 | 702,494 | 62,351 | 26 | 0 | 681 | 10 | 69 | 20260911-154139-55181 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | tdd | completed | - | 11.444077500000004 | 14,970,306 | 14,820,755 | 102,520 | 237 | 3 | 1,415 | 8 | 43 | 20260911-153131-54159 |
| 2023-2c-parcial2 | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | test-after | completed | - | 2.2642419999999994 | 579,020 | 511,534 | 53,409 | 29 | 1 | 571 | 11 | 102 | 20260911-153152-54314 |
| 2023-2c-parcial2 | 4-Refactoring | 8-DesignHeuristicsInline | tdd | completed | - | 7.187930999999999 | 7,781,713 | 7,643,242 | 79,930 | 174 | 0 | 1,047 | 8 | 48 | 20260911-151410-39006 |
| 2025-2c-recuperatorio | 3-Search | 8-DesignHeuristicsInline | tdd | completed | 5/5 | 5.9461875000000015 | 6,002,905 | 5,885,214 | 72,282 | 123 | 1 | 2,668 | 0 | 37 | 20260911-155316-55727 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | free | failed | 5/5 | 2.1311825 | 603,688 | 534,265 | 46,870 | 49 | 2 | 2,174 | 2 | 40 | 20260911-165225-59389 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | free | completed | 5/5 | 2.8142389999999997 | 958,300 | 873,328 | 61,217 | 50 | 2 | 1,049 | 1 | 41 | 20260911-174604-62189 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | tdd | completed | 5/5 | 6.14912 | 6,826,267 | 6,719,290 | 69,339 | 123 | 1 | 908 | 0 | 41 | 20260911-163757-57798 |
| 2025-2c-recuperatorio | 4-Refactoring | 4-Refactoring+8-DesignHeuristicsInline | test-after | completed | 5/5 | 2.187705 | 874,513 | 807,290 | 44,576 | 49 | 3 | 486 | 1 | 41 | 20260911-164404-58548 |
| 2025-2c-recuperatorio | 4-Refactoring | 8-DesignHeuristicsInline | tdd | completed | 5/5 | 7.506682000000001 | 8,856,521 | 8,734,017 | 75,445 | 165 | 1 | 2,800 | 0 | 39 | 20260911-155712-56535 |
