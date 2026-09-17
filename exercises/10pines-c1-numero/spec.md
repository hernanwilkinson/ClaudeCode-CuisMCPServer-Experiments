# Numero: Entero and Fraccion arithmetic

## Statement

A model of numbers is given: the abstract class `Numero` with the subclasses `Entero` (integer, wrapping an `Integer` in `value`) and `Fraccion` (fraction, with `numerator` and `denominator` that are themselves `Entero`s). Make the 26 given tests pass, then remove the conditionals that ask objects for their class (`isKindOf:`) and replace them with polymorphism.

The rules the tests define are:

1. `zero` (`Entero with: 0`) `isZero`; only zero is zero (`one` and `two` are not).
2. `one` (`Entero with: 1`) `isOne`; only one is one (`zero` and `two` are not).
3. `Entero + Entero`, `Entero * Entero` and `Entero / Entero` work: `one + one = two`, `two * two = four`, `two / two = one`.
4. Fractions add, multiply and divide with fractions. The test comments give the formulas:
   - Addition: `a/b + c/d = (a.d + c.b) / (b.d)`. "If you are thinking about fraction reduction, don't worry! That case is not being tested yet." Example: `oneFifth + oneHalf = sevenTenths` (7/10).
   - Multiplication: `(a/b) * (c/d) = (a.c) / (b.d)`. Example: `oneFifth * twoFifth = twoTwentyfifth` (2/25).
   - Division: `(a/b) / (c/d) = (a.d) / (b.c)`. Example: `oneHalf / oneFifth = fiveHalfs` (5/2).
5. "Now the fun begins!" — integers and fractions must operate with each other, in both orders:
   - `one + oneFifth = six / five` and `oneFifth + one = six / five`
   - `two * oneFifth = twoFifth` and `oneFifth * two = twoFifth`
   - `one / twoFifth = fiveHalfs` and `twoFifth / five = twoTwentyfifth`
6. A fraction can be equal to an integer: `four / two = two`.
7. Apparent fractions are equal: `oneHalf = two / four`.
8. Adding, multiplying or dividing fractions can return an `Entero`: `oneHalf + oneHalf = one`, `(two/five) * (five/two) = one`, `oneHalf / oneHalf = one`.
9. Dividing integers can return a `Fraccion`: `two / four = oneHalf`.
10. It is not possible to divide by zero: `one / zero` and `oneHalf / zero` raise an `Error` whose `messageText` equals `Numero canNotDivideByZeroErrorDescription` (`'No se puede dividir por cero'`).
11. A `Fraccion` is never zero and never one (`oneHalf isZero` and `oneHalf isOne` are false).

The given code already reduces fractions and collapses them to an `Entero` when the denominator is one (`Fraccion class>>with:over:`), and `Fraccion>>initializeWith:over:` has preconditions ("a fraction cannot be zero", "a fraction cannot have denominator 1 because then it is an integer") that the author added "in case mistakes are made in the implementation". `Entero class>>with:` checks that its argument is an `Integer` "in case you make a mistake and want to create an Entero passing something other than an Integer". `Entero>>integerValue` is used instead of `value` "so that there are no problems with the message value implemented in Object".

What is missing is the mixed arithmetic: `Entero>>+`, `*`, `/` send `integerValue` to their argument and `Fraccion>>+`, `*`, `/` send `numerator` / `denominator` to theirs, so they only work when the argument is of the receiver's own class (by inspection, tests 11 to 16 and test 24 do not pass with the given code).

The expected path (the two reference solutions) is:

- Intermediate: make every test pass by checking the argument's class (`(anAdder isKindOf: Fraccion) ifTrue: [...]`, `(aMultiplier isKindOf: Entero) ifTrue: [...]`, and so on) inside `+`, `*` and `/` of both classes.
- Final: remove those conditionals with double dispatch. `Entero>>+ anAdder` becomes `^anAdder masEntero: self`, `Fraccion>>+ anAdder` becomes `^anAdder masFraccion: self`, and each class implements `masEntero:`, `masFraccion:`, `porEntero:`, `porFraccion:`, `divididoEntero:`, `divididoFraccion:` with the concrete arithmetic. `Numero` also offers `invalidNumberType` (raising `Numero invalidNumberTypeErrorDescription`, `'Tipo de numero invalido'`) for an argument that is not a valid number.

## What the given code contains

`Numero-Exercise.st` (category `Numero-Exercise`) defines:

- `NumeroTest`, a `TestCase` whose `setUp` builds `zero`, `one`, `two`, `four`, `five`, `six` (`Entero with:`) and `oneHalf`, `oneFifth`, `twoFifth`, `twoTwentyfifth`, `fiveHalfs` (built by dividing `Entero`s), and 26 tests `test01CeroIsIdenticalToCero` through `test26AFraccionCannotBeOne` that check the rules above with `assert:equals:`, `assert:`/`deny:` on `isZero`/`isOne`, and `should:raise:withExceptionDo:` for the division-by-zero cases.
- `Numero`, abstract: `isOne`, `isZero`, `+`, `*`, `/` are `subclassResponsibility`; `invalidNumberType`; class-side `canNotDivideByZeroErrorDescription` and `invalidNumberTypeErrorDescription`.
- `Entero`: `value`, `integerValue`, `initalizeWith:` (sic), `=` and `hash`, `isOne`, `isZero`, `+`, `*`, `/` (answers `Fraccion with: self over: aDivisor`), `//`, `greatestCommonDivisorWith:`, class-side `with:`.
- `Fraccion`: `numerator`, `denominator`, `=` (cross multiplication) and `hash`, `+`, `*`, `/` (fraction-only formulas), `isOne` and `isZero` answering false, `initializeWith:over:` with the preconditions, class-side `with:over:` that raises the division-by-zero error, answers the dividend when it is zero, reduces by the greatest common divisor and answers the numerator (an `Entero`) when the denominator is one.
