# 020-PythonVsJava: results

Model claude-opus-5, effort high, technique free, 5 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | 5 | 4 | 2.0 | 614,356 | 551,368 | 62,022 | 43,338 | 21,478 | 15.0 | 42,447 | 15.0 | - | - | - | 1.0 | - | - | - | 15.0 | 0.0 | 0.0 | 0.0 | - | - | - | - | - | - | - | 0.0 | 475 | 9.5 | 126 | - | - | - | - |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | 5 | 5 | 2.11 | 621,576 | 561,517 | 62,597 | 47,278 | 26,039 | 16 | 44,398 | 17 | - | - | - | 0 | - | - | - | 17 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 513 | 6 | 132 | - | - | - | - |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | 5 | 5 | 1.55 | 688,256 | 627,102 | 55,774 | 27,426 | 17,299 | 16 | 42,100 | 19 | - | - | - | 0 | - | - | - | 19 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 307 | 12 | 151 | - | - | - | - |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | 5 | 5 | 1.85 | 848,942 | 785,331 | 61,056 | 28,145 | 15,890 | 20 | 42,447 | 19 | - | - | - | 0 | - | - | - | 15 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 308 | 13 | 144 | - | - | - | - |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | 5 | 4 | 1.71 | 827,478 | 764,182 | 64,340 | 28,371 | 14,012 | 19.0 | 44,878 | 18.0 | - | - | - | 0.0 | - | - | - | 18.0 | 0.0 | 0.0 | 0.0 | - | - | - | - | - | - | - | 0.0 | 294 | 7.0 | 94.5 | - | - | - | - |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | 5 | 4 | 1.7 | 813,222 | 750,224 | 62,997 | 28,000 | 14,240 | 18.5 | 42,865 | 18.0 | - | - | - | 0.0 | - | - | - | 18.0 | 0.0 | 0.0 | 0.0 | - | - | - | - | - | - | - | 0.0 | 298 | 7.0 | 85.5 | - | - | - | - |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | python-pytest:1-Empty:free vs java-gradle:1-Empty:free | +5% | +1% | +2% | +9% | +7% | +5% | +13% | +8% |
| 2022-1c-recuperatorio-parcial1 | python-pytest:1-Empty:free vs java-gradle:1-Empty:free | +19% | +23% | +25% | +3% | +25% | +1% | +0% | +0% |
| 2024-1c-parcial1 | python-pytest:1-Empty:free vs java-gradle:1-Empty:free | -1% | -2% | -2% | -1% | -3% | -4% | +0% | +2% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 56/56 | 1.701827 | 546,989 | 495,104 | 37,423 | 15 | 1 | 402 | 10 | - | 20260921-202808-59615 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 57/57 | 2.0983225 | 625,684 | 561,245 | 46,938 | 15 | 1 | 508 | 3 | - | 20260921-204934-85557 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 64/64 | 1.892985 | 603,029 | 541,490 | 40,280 | 14 | 0 | 442 | 10 | - | 20260921-210827-1958 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 55/55 | 2.2130984999999996 | 919,221 | 856,717 | 46,396 | 21 | 1 | 512 | 9 | - | 20260921-212555-19812 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | failed | 16/16 | 1.741659 | 437,191 | 391,299 | 39,333 | 15 | 3 | 724 | 3 | - | 20260921-214358-38088 |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | completed | 58/58 | 2.3716669999999995 | 910,626 | 840,174 | 49,890 | 18 | 0 | 525 | 4 | - | 20260921-202806-59410 |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | completed | 56/56 | 1.6515650000000002 | 430,388 | 376,010 | 36,796 | 13 | 1 | 390 | 11 | - | 20260921-204513-77784 |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | completed | 55/55 | 2.1088195 | 621,576 | 558,979 | 48,140 | 13 | 0 | 513 | 6 | - | 20260921-210220-97414 |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | completed | 57/57 | 1.6847285 | 613,140 | 561,517 | 35,516 | 17 | 0 | 388 | 10 | - | 20260921-212215-18237 |
| 2019-2c-parcial2-masked | python-pytest | 1-Empty | free | completed | 58/58 | 2.3171815000000002 | 1,027,543 | 962,103 | 47,278 | 23 | 0 | 520 | 6 | - | 20260921-213927-34997 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.5476715 | 694,016 | 639,223 | 27,212 | 21 | 0 | 298 | 12 | - | 20260921-202259-53404 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.774841 | 688,256 | 627,102 | 33,996 | 19 | 0 | 373 | 12 | - | 20260921-204311-76559 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.9101744999999997 | 704,192 | 639,969 | 37,924 | 16 | 0 | 415 | 13 | - | 20260921-210125-96481 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.5281320000000003 | 660,885 | 606,764 | 27,348 | 19 | 0 | 302 | 15 | - | 20260921-212042-13301 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 1.5521410000000002 | 673,596 | 617,822 | 27,426 | 18 | 1 | 307 | 12 | - | 20260921-213846-32199 |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | completed | 29/29 | 1.8860095000000001 | 1,205,265 | 1,144,209 | 28,145 | 28 | 0 | 308 | 13 | - | 20260921-202259-53403 |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | completed | 29/29 | 1.8987829999999997 | 977,189 | 911,626 | 31,502 | 21 | 0 | 344 | 13 | - | 20260921-203929-73794 |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | completed | 29/29 | 1.2871764999999997 | 485,563 | 437,213 | 23,408 | 13 | 0 | 248 | 15 | - | 20260921-205812-95418 |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | completed | 29/29 | 1.8532005 | 848,942 | 785,331 | 32,985 | 19 | 0 | 355 | 18 | - | 20260921-211617-6449 |
| 2022-1c-recuperatorio-parcial1 | python-pytest | 1-Empty | free | completed | 29/29 | 1.309215 | 546,499 | 497,450 | 22,806 | 15 | 0 | 248 | 13 | - | 20260921-213435-24827 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 2.0548500000000005 | 1,131,009 | 1,065,630 | 34,739 | 22 | 0 | 371 | 7 | - | 20260921-203652-64546 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 40/40 | 1.681761 | 737,284 | 675,522 | 29,062 | 16 | 0 | 296 | 7 | - | 20260921-205623-93767 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 40/40 | 1.7309459999999999 | 917,673 | 852,842 | 26,257 | 20 | 0 | 273 | 7 | - | 20260921-211557-5789 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 1.6208225000000003 | 644,813 | 580,965 | 27,680 | 15 | 0 | 292 | 7 | - | 20260921-213427-24179 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | failed | 39/39 | 0 | 0 | 0 | 0 | 0 | 0 | 142 | 24 | - | 20260921-215532-49821 |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | completed | 39/39 | 1.4843890000000002 | 646,194 | 590,178 | 25,172 | 18 | 0 | 269 | 7 | - | 20260921-203459-63160 |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | completed | 40/40 | 1.5802019999999999 | 719,591 | 659,174 | 25,865 | 17 | 0 | 276 | 7 | - | 20260921-205145-86356 |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | completed | 39/39 | 1.8295575 | 906,852 | 841,275 | 30,134 | 19 | 1 | 321 | 7 | - | 20260921-211055-3645 |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | completed | 39/39 | 1.9967119999999998 | 935,715 | 860,434 | 32,555 | 18 | 0 | 342 | 7 | - | 20260921-212844-21650 |
| 2024-1c-parcial1 | python-pytest | 1-Empty | free | failed | 15/39 | 0.769073 | 149,436 | 115,836 | 15,009 | 7 | 0 | 441 | 14 | - | 20260921-214809-44112 |
