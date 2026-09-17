# 003-LessTokensWithMultiItemTools: results

Model claude-opus-5, effort high, technique free, 1 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | define calls | methods defined | methods per define call | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | 1 | 1 | 0.71 | 169,174 | 142,567 | 26,607 | 14,745 | 7,162 | 10 | 16,917 | 11 | 1 | 0 | 0 | - | 163 | 0 | 46 | 20 | 0.43 | 2 | 84.32 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 1 | 1 | 0.9 | 287,261 | 248,999 | 38,262 | 15,749 | 7,415 | 11 | 26,115 | 27 | 0 | 2 | 48 | 24.0 | 177 | 0 | 46 | 21 | 0.46 | 2 | 88.93 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | 1 | 1 | 1.77 | 538,427 | 489,118 | 49,309 | 41,245 | 19,861 | 20 | 26,921 | 29 | 1 | 0 | 0 | - | 450 | 8 | 78 | 96 | 1.23 | 1 | 97.39 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | 1 | 1 | 3.12 | 2,084,263 | 2,004,417 | 79,846 | 52,771 | 20,958 | 44 | 47,370 | 83 | 0 | 23 | 143 | 6.22 | 615 | 8 | 64 | 77 | 1.2 | 4 | 97.27 |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +27% | +70% | +75% | +7% | +10% | +54% | +145% | +9% |
| 2025-2c-parcial2 | 2-ModelStructure+Package:2-EvaluateAsLastResource:free vs 1-Evaluate+TestRunning:1-Empty:free | +76% | +287% | +310% | +28% | +120% | +76% | +186% | +37% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | free | completed | 14/14 | 0.7058785 | 169,174 | 142,567 | 14,745 | 11 | 1 | 163 | 0 | 20 | 20260911-124643-18052 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | 14/14 | 0.9007345 | 287,261 | 248,999 | 15,749 | 27 | 0 | 177 | 0 | 21 | 20260911-124643-18053 |
| 2025-2c-parcial2 | 1-Evaluate+TestRunning | 1-Empty | free | completed | - | 1.768574 | 538,427 | 489,118 | 41,245 | 29 | 1 | 450 | 8 | 96 | 20260911-131653-20801 |
| 2025-2c-parcial2 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | free | completed | - | 3.1195034999999995 | 2,084,263 | 2,004,417 | 52,771 | 83 | 0 | 615 | 8 | 77 | 20260911-131653-20821 |
