# 016-LanguageComparisonRepeated: results

Model claude-opus-5, effort high, technique free, 5 repetitions per cell planned. Medians over the runs that passed the acceptance tests.

| Exercise | Scenario | Config | Technique | Runs | Passed | cost USD | input-side tokens | cache-read tokens | uncached + cache-write | output tokens | thinking tokens | API requests | input tokens per request | tool calls | operations (batch steps counted) | batch calls | steps per batch | tool errors | define calls | methods defined | methods per define call | exploration calls before first change | LiveTyping tool calls | actual-scope refactorings | refactoring tool calls | failed refactoring calls | hand-made refactorings | MessageNotUnderstood answers | failed test runs | methods outside package | cryptic names left (classes+selectors+ivars) | original names recovered | rename tool calls | seconds | ifs in model | methods in model | mentor findings | mentor findings per method | test smells | coverage % |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | 5 | 5 | 0.94 | 188,664 | 153,657 | 31,493 | 21,988 | 8,173 | 9 | 20,405 | 10 | 10 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 1 | 0 | - | - | 0 | 194 | 7 | 112 | 53 | 0.48 | 2 | 95.72 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | 5 | 5 | 1.11 | 230,382 | 192,518 | 37,864 | 25,643 | 9,878 | 9 | 25,598 | 8 | 8 | 0 | - | 0 | - | - | - | 8 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 256 | 7 | 117 | 55 | 0.46 | 5 | 95.88 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | 5 | 5 | 0.92 | 183,089 | 151,727 | 32,481 | 20,342 | 5,624 | 8 | 24,318 | 7 | - | - | - | 0 | - | - | - | 4 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 167 | 10 | 113 | - | - | - | - |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 5 | 5 | 0.61 | 192,131 | 164,139 | 26,861 | 10,687 | 2,745 | 8 | 23,019 | 9 | 9 | 0 | - | 1 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 2 | 0 | 0 | - | - | 0 | 104 | 8 | 147 | 48 | 0.33 | 1 | 80.47 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | 5 | 5 | 0.66 | 190,031 | 158,101 | 31,133 | 11,479 | 4,400 | 8 | 21,991 | 7 | 7 | 0 | - | 1 | - | - | - | 7 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 118 | 9 | 149 | 49 | 0.33 | 1 | 80.32 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | 5 | 5 | 0.67 | 183,011 | 150,927 | 32,084 | 10,905 | 4,000 | 7 | 26,144 | 6 | - | - | - | 0 | - | - | - | 6 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 94 | 12 | 137 | - | - | - | - |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | 5 | 5 | 0.96 | 318,763 | 285,543 | 37,824 | 19,101 | 6,541 | 11 | 29,738 | 13 | 13 | 0 | - | 0 | 0 | 0 | - | 2 | 0 | 0 | 0 | 0 | 0 | 1 | 0 | 0 | - | - | 0 | 154 | 4 | 89 | 47 | 0.53 | 8 | 89.1 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | 5 | 5 | 1.14 | 254,228 | 210,242 | 45,112 | 22,646 | 8,038 | 9 | 30,871 | 9 | 9 | 0 | - | 0 | - | - | - | 9 | 0 | 0 | 0 | - | - | - | - | 0 | - | - | 0 | 202 | 4 | 83 | 42 | 0.51 | 5 | 89.29 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | 5 | 5 | 0.93 | 248,721 | 213,892 | 38,376 | 16,202 | 4,189 | 9 | 29,822 | 8 | - | - | - | 0 | - | - | - | 8 | 0 | 0 | 0 | - | - | - | - | - | - | - | 0 | 131 | 7 | 91 | - | - | - | - |

## Each cell against the first, per exercise (medians)

| Exercise | Comparison | cost USD | input-side tokens | cache-read tokens | output tokens | API requests | input tokens per request | tool calls | seconds |
|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +18% | +22% | +25% | +17% | +0% | +25% | -20% | +32% |
| 2019-2c-parcial2-masked | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -2% | -3% | -1% | -7% | -11% | +19% | -30% | -14% |
| 2022-1c-recuperatorio-parcial1 | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +8% | -1% | -4% | +7% | +0% | -4% | -22% | +13% |
| 2022-1c-recuperatorio-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +10% | -5% | -8% | +2% | -12% | +14% | -33% | -10% |
| 2024-1c-parcial1 | cuis-script:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | +19% | -20% | -26% | +19% | -18% | +4% | -31% | +31% |
| 2024-1c-parcial1 | java-gradle:1-Empty:free vs 1-Evaluate+TestRunning-University:1-Empty:free | -3% | -22% | -25% | -15% | -18% | +0% | -38% | -15% |

## Every run

| Exercise | Scenario | Config | Technique | Status | Acceptance | cost USD | input-side tokens | cache-read tokens | output tokens | tool calls | tool errors | seconds | ifs in model | mentor findings | Run |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 48/48 | 0.9842390000000001 | 200,530 | 167,868 | 22,951 | 11 | 0 | 201 | 7 | 60 | 20260917-052332-31857 |
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 47/47 | 0.8853884999999998 | 223,303 | 194,477 | 20,000 | 10 | 0 | 181 | 8 | 56 | 20260917-053711-36986 |
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 48/48 | 0.9406155 | 183,644 | 152,151 | 21,988 | 10 | 0 | 194 | 7 | 49 | 20260917-055100-42019 |
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 49/49 | 1.1126435000000001 | 188,664 | 153,657 | 27,433 | 8 | 0 | 251 | 10 | 43 | 20260917-060352-46963 |
| 2019-2c-parcial2-masked | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 43/43 | 0.8331985000000001 | 152,462 | 124,407 | 19,621 | 9 | 0 | 173 | 7 | 53 | 20260917-061807-51921 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 52/52 | 1.541833 | 507,185 | 460,886 | 33,942 | 14 | 3 | 322 | 3 | 56 | 20260917-052725-32813 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 44/44 | 1.127284 | 230,382 | 192,518 | 26,099 | 8 | 0 | 256 | 1 | 30 | 20260917-054044-37881 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 51/51 | 1.09402 | 206,350 | 168,150 | 25,121 | 7 | 0 | 252 | 7 | 58 | 20260917-055445-42950 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 57/57 | 1.0666065 | 162,109 | 124,333 | 25,070 | 6 | 0 | 245 | 8 | 55 | 20260917-060710-47919 |
| 2019-2c-parcial2-masked | cuis-script | 1-Empty | free | completed | 53/53 | 1.114974 | 251,173 | 214,498 | 25,643 | 9 | 0 | 261 | 7 | 52 | 20260917-062131-52827 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 59/59 | 0.8683095000000001 | 138,142 | 106,279 | 19,864 | 6 | 0 | 163 | 10 | - | 20260917-052505-32178 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 53/53 | 0.987498 | 230,496 | 196,576 | 22,004 | 8 | 0 | 182 | 9 | - | 20260917-053838-37234 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 53/53 | 0.9688660000000001 | 170,223 | 135,952 | 22,330 | 6 | 0 | 183 | 10 | - | 20260917-055224-42307 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 53/53 | 0.8688535000000001 | 183,089 | 151,727 | 19,178 | 7 | 0 | 152 | 9 | - | 20260917-060430-47161 |
| 2019-2c-parcial2-masked | java-gradle | 1-Empty | free | completed | 53/53 | 0.916319 | 198,559 | 166,078 | 20,342 | 8 | 0 | 167 | 10 | - | 20260917-061856-52134 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.6233905000000001 | 207,173 | 180,571 | 10,687 | 9 | 2 | 104 | 8 | 47 | 20260917-052112-30458 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.6083764999999999 | 125,364 | 98,503 | 11,623 | 7 | 0 | 107 | 7 | 49 | 20260917-053306-35351 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.697125 | 217,491 | 188,510 | 12,526 | 10 | 1 | 129 | 7 | 45 | 20260917-054716-40315 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.47831999999999997 | 109,756 | 87,040 | 8,308 | 8 | 0 | 74 | 8 | 55 | 20260917-060025-45324 |
| 2022-1c-recuperatorio-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 29/29 | 0.6063095 | 192,131 | 164,139 | 9,776 | 9 | 1 | 92 | 8 | 48 | 20260917-061402-50190 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.6390390000000001 | 196,269 | 167,668 | 10,771 | 7 | 2 | 118 | 9 | 49 | 20260917-052245-31254 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.689079 | 153,940 | 121,808 | 12,277 | 6 | 0 | 113 | 9 | 51 | 20260917-053623-36280 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.6585030000000001 | 152,790 | 121,716 | 11,479 | 6 | 0 | 118 | 7 | 44 | 20260917-055003-41292 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.6245225 | 197,948 | 166,815 | 9,195 | 8 | 1 | 94 | 9 | 51 | 20260917-060233-46181 |
| 2022-1c-recuperatorio-parcial1 | cuis-script | 1-Empty | free | completed | 29/29 | 0.7119855 | 190,031 | 158,101 | 12,549 | 8 | 1 | 121 | 9 | 48 | 20260917-061633-51143 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.61968 | 151,271 | 119,810 | 9,809 | 6 | 1 | 85 | 12 | - | 20260917-052112-30457 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.6477065 | 153,395 | 121,443 | 10,701 | 5 | 0 | 94 | 12 | - | 20260917-053530-35565 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.7243404999999999 | 219,811 | 186,591 | 11,957 | 7 | 0 | 105 | 13 | - | 20260917-054908-40691 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.6688585 | 183,011 | 150,927 | 10,905 | 6 | 0 | 93 | 12 | - | 20260917-060211-45590 |
| 2022-1c-recuperatorio-parcial1 | java-gradle | 1-Empty | free | completed | 29/29 | 0.74656 | 186,702 | 151,720 | 12,838 | 7 | 0 | 113 | 11 | - | 20260917-061606-50550 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 39/39 | 0.8775015 | 318,763 | 285,543 | 16,106 | 14 | 0 | 136 | 4 | 47 | 20260917-052756-33508 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 39/39 | 0.9619555 | 287,075 | 251,181 | 19,101 | 12 | 0 | 154 | 4 | 48 | 20260917-054147-38610 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 39/39 | 0.9432539999999999 | 268,082 | 230,258 | 17,999 | 10 | 0 | 153 | 5 | 47 | 20260917-055533-43670 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 41/41 | 1.1973924999999999 | 396,498 | 352,265 | 23,162 | 13 | 0 | 198 | 4 | 50 | 20260917-060834-48529 |
| 2024-1c-parcial1 | 1-Evaluate+TestRunning-University | 1-Empty | free | completed | 40/40 | 1.0537855000000003 | 327,122 | 287,371 | 20,508 | 13 | 1 | 175 | 4 | 45 | 20260917-062150-53458 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 39/39 | 1.1354425000000001 | 216,097 | 170,985 | 23,956 | 8 | 0 | 202 | 4 | 33 | 20260917-053241-34753 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 39/39 | 1.2313609999999997 | 400,813 | 350,642 | 22,178 | 11 | 1 | 211 | 4 | 52 | 20260917-054519-39545 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 40/40 | 1.0011165 | 196,213 | 156,723 | 21,117 | 6 | 0 | 177 | 4 | 49 | 20260917-055917-44605 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 40/40 | 1.3467399999999998 | 468,452 | 418,150 | 25,391 | 12 | 0 | 228 | 4 | 42 | 20260917-061226-49439 |
| 2024-1c-parcial1 | cuis-script | 1-Empty | free | completed | 40/40 | 1.111041 | 254,228 | 210,242 | 22,646 | 9 | 1 | 199 | 5 | 42 | 20260917-062612-54535 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 0.8028044999999999 | 208,755 | 170,379 | 13,357 | 6 | 0 | 112 | 7 | - | 20260917-053042-33823 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 43/43 | 0.9265869999999999 | 224,262 | 186,474 | 18,222 | 8 | 0 | 140 | 7 | - | 20260917-054449-38930 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 0.773871 | 248,721 | 213,892 | 12,749 | 8 | 0 | 104 | 7 | - | 20260917-055833-43946 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 39/39 | 0.9693080000000001 | 290,173 | 248,556 | 17,158 | 8 | 0 | 140 | 7 | - | 20260917-061134-48859 |
| 2024-1c-parcial1 | java-gradle | 1-Empty | free | completed | 40/40 | 0.9647615 | 300,000 | 256,863 | 16,202 | 9 | 0 | 131 | 7 | - | 20260917-062519-53824 |
