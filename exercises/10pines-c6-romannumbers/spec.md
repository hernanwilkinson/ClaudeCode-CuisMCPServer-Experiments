# Roman Numbers

## Description

Convert Arabic numbers to the string representation of Roman numerals:

| Arabic | Roman |
|---|---|
| 1 | I |
| 2 | II |
| 3 | III |
| 4 | IV |
| 5 | V |
| 6-8 | VI, VII, VIII |
| 9 | IX |
| 10 | X |
| ... | ... |
| 50 | L |
| ... | ... |
| 100 | C |
| 500 | D |
| 1000 | M |

This exercise is an "anxiolytic" (ansiolítico): be patient. See the format and the requirements below.

## Format: Randori - Wilkinson

- One person/group goes to the front to do either:
  1. Step 1 and Step 2 (write a test and make it pass), or
  2. Step 3 (refactoring).
- Once done, the group synchronises with what was done. EVERYBODY MUST HAVE THE SAME CODE.
- Nobody may comment on or give opinions about what the person at the front is doing. If they are making a mistake, let them.
- The person at the front may ask for help.
- After the 10th test a 2-minute limit is set. If it is not finished, the change is rolled back.

## Constraints on the solution

- Recursion may not be used.
- Generalising is only allowed by removing repeated code.
- Every refactoring must make the solution more descriptive.
- Refactorings may not add accidental complexity.

## The kata as recorded in the reference solution (`solution/RomanNumbers-34.st`)

The solution converts with `anInteger asRomanString` (an extension of `Integer` in category `*RomanNumbers`). Its tests, `RomanNumbersTest` (21 tests), follow the order of the description and stop at 99, so the table's `C`, `D` and `M` rows are implemented by generalisation but not tested:

- `test01` .. `test14`: 1 -> `I`, 2 -> `II`, 3 -> `III`, 4 -> `IV`, 5 -> `V`, 6 -> `VI`, 7 -> `VII`, 8 -> `VIII`, 9 -> `IX`, 10 -> `X`, 11 -> `XI`, 12 -> `XII`, 13 -> `XIII`, 14 -> `XIV`.
- `test15`: 15 -> `XV`, 16 -> `XVI`, 17 -> `XVII`, 18 -> `XVIII`; `test19`: 19 -> `XIX`.
- `test20To29`: 20 `XX`, 23 `XXIII`, 24 `XXIV`, 28 `XXVIII`, 29 `XXIX`; `test30To39`: 30, 33, 34, 38, 39; `test40To49`: 40 `XL`, 43, 44, 48, 49 `XLIX`; `test50To89`: 50 `L`, 63 `LXIII`, 74 `LXXIV`, 88 `LXXXVIII`, 89 `LXXXIX`; `test90to99`: 90 `XC`, 99 `XCIX`.

The final design (version 34) is an `ArabigNumberToRomanStringConverter` that streams the hundreds, tens and units through three `DigitToRomanStringConverter`s (`dividingWith: 100 asOne: $C asFive: $D asTen: $M`, `10 / $X $L $C`, `1 / $I $V $X`); each one writes its digit with the four cases 1-3, 4, 5-8 and 9, without recursion. Version 1 is the first step of the Randori: `asRomanString ^'I'` and `test01`.
