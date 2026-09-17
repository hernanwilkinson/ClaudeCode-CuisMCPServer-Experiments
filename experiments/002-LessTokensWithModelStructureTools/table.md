# 002-LessTokensWithModelStructureTools: results

Model claude-opus-5, effort high, technique free, 3 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | tool errors | seconds | ifs in model | mentor findings | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | 3 | 3 | 1.0 | 356,772 | 319,790 | 35,577 | 19,522 | 10,682 | 14 | 25,484 | 17 | 1 | 230 | 0 | 17 | 89.82 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | 3 | 3 | 1.53 | 916,990 | 872,136 | 45,409 | 25,663 | 11,128 | 27 | 32,766 | 104 | 0 | 304 | 0 | 17 | 88.93 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | 3 | 3 | 3.56 | 1,585,099 | 1,495,713 | 101,706 | 66,620 | 40,807 | 31 | 65,358 | 34 | 2 | 727 | 5 | 30 | 95.61 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | 3 | 3 | 4.12 | 3,199,703 | 3,094,103 | 105,600 | 61,342 | 30,734 | 47 | 68,079 | 207 | 0 | 691 | 5 | 46 | 96.44 |

## Second cell against first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 2-ModelStructure+Package vs 1-Evaluate+TestRunning | +53% | +157% | +173% | +31% | +93% | +29% | +512% | +32% |
| 2022-1c-parcial1 | 2-ModelStructure+Package vs 1-Evaluate+TestRunning | +16% | +102% | +107% | -8% | +52% | +4% | +509% | -5% |

## Every run

| Exercise | Scenario | Config | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 14/14 | 1.0123 | 356,772 | 319,790 | 19,309 | 17 | 0 | 231 | 0 | 14 | 20260910-192329-84725 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 14/14 | 1.0006065 | 361,039 | 326,073 | 19,522 | 17 | 1 | 221 | 0 | 17 | 20260910-202352-30225 |
| 2019-2c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 14/14 | 1.003683 | 318,463 | 282,886 | 20,264 | 15 | 1 | 230 | 0 | 19 | 20260910-212414-32844 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 14/14 | 1.7016689999999999 | 980,347 | 925,698 | 27,704 | 106 | 0 | 320 | 0 | 13 | 20260910-192329-84724 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 14/14 | 1.525503 | 916,990 | 872,136 | 25,647 | 104 | 0 | 304 | 0 | 20 | 20260910-202353-30261 |
| 2019-2c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 14/14 | 1.482286 | 819,151 | 773,742 | 25,663 | 99 | 0 | 298 | 0 | 17 | 20260910-212415-32884 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 26/26 | 3.8338824999999987 | 2,326,331 | 2,220,485 | 66,620 | 34 | 3 | 727 | 5 | 25 | 20260910-195340-9250 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 26/26 | 3.5633464999999993 | 1,503,239 | 1,401,533 | 73,830 | 28 | 1 | 803 | 5 | 34 | 20260910-205402-32009 |
| 2022-1c-parcial1 | 1-Evaluate+TestRunning | 1-Empty | completed | 26/26 | 3.1621314999999997 | 1,585,099 | 1,495,713 | 60,829 | 35 | 2 | 692 | 5 | 30 | 20260910-215424-33684 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 25/25 | 3.9434805000000006 | 2,890,361 | 2,788,761 | 61,342 | 200 | 0 | 691 | 5 | 47 | 20260910-195340-9276 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 26/26 | 4.848608499999999 | 3,829,731 | 3,713,517 | 73,208 | 215 | 4 | 836 | 5 | 32 | 20260910-205402-32035 |
| 2022-1c-parcial1 | 2-ModelStructure+Package | 2-EvaluateAsLastResource | completed | 25/25 | 4.1249565 | 3,199,703 | 3,094,103 | 60,895 | 207 | 0 | 691 | 5 | 46 | 20260910-215425-33727 |
