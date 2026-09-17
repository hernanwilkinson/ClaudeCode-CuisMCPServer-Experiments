# Portfolio of accounts (Composite)

## Statement

Exercise: solve the problem posed in PortfolioExercise.

It consists of modelling Portfolios:

- Portfolios allow knowing the balance of a set of accounts or portfolios.
- Portfolios allow knowing the transactions made in a set of accounts or portfolios.

## Pattern presented with the exercise

Composite:

- Allows treating the whole as each of its parts.
- The composite must be polymorphic with its parts.
- Problem: how is the composite created?

## Behaviour required by the given tests

Receptive accounts (already implemented):

1. A new `ReceptiveAccount` has balance 0.
2. `Deposit register: 100 on: account` increases the balance by the transaction value (100).
3. `Withdraw register: -50 on: account` after a deposit of 100 leaves balance 50 (the given balance is the sum of the transaction values, so this test registers the withdraw with a negative value).
4. (test03_01) The value of `Withdraw register: 50 on: account` is 50.
5. (test06) An account knows the transactions registered on it (`hasRegistered:` answers true for a registered deposit and withdraw).
6. (test07) It does not know transactions created with `Deposit for: 100` / `Withdraw for: 50` but not registered.
7. (test10, test11) A receptive account manages itself (`doesManage:`) and does not manage another account.
8. (test14) `transactions` answers the registered transactions (size 1, includes the deposit).

Portfolios (to implement):

9. (test04) `Portfolio with: account1 with: account2`: the balance is the sum of the managed accounts' balances (100 + 200 = 300).
10. (test05) A portfolio can manage portfolios: `Portfolio with: complexPortfolio with: account3` has balance 600 when the accounts have 100, 200 and 300.
11. (test08) A portfolio `hasRegistered:` every transaction registered in its managed accounts, through nested portfolios.
12. (test12) A portfolio `doesManage:` its accounts and not others.
13. (test13) A composed portfolio manages the accounts of its inner portfolio, the inner portfolio itself and its direct accounts.
14. (test15) `transactions` of a composed portfolio is the union of its accounts' transactions (size 3, includes the three deposits).
15. (test16, test17) `transactionsOf: anAccount` answers the transactions of a managed account (size 1) or of a managed portfolio (size 2, the deposits of its two accounts).
16. (test18) `transactionsOf:` a not-managed account raises an `Error` whose `messageText` is `Portfolio accountNotManagedMessageDescription` (`'Account not managed'`).
17. (test19) `Portfolio with: account1 with: account1` raises an `Error` with `Portfolio accountAlreadyManagedErrorMessage` (`'Account already managed'`).
18. (test20) `Portfolio with: complexPortfolio with: account1` raises the same error when `complexPortfolio` (created with `Portfolio withAll: (Array with: account1 with: account2 with: account3)`) already manages `account1`.
19. (test21) `Portfolio with: complexPortfolio1 with: complexPortfolio2` raises the same error when both portfolios manage `account1`.

## What the given code contains

`Portfolio-Ejercicio.st` (category `Portfolio-Ejercicio`) defines:

- `PortfolioTest` with the 21 tests above (`test01...` to `test21...`, including `test03_01`; there is no test09).
- `AccountTransaction` (abstract `value`; class-side `register: aValue on: account` creates the transaction with `for:`, registers it on the account and answers it), `Deposit` and `Withdraw` (instance variable `value`, `initializeFor:`, `value`, class `for:`).
- `SummarizingAccount`, the abstract root of accounts and portfolios, with `doesManage:`, `hasRegistered:`, `transactions` and `balance` as subclass responsibilities.
- `ReceptiveAccount`, complete: keeps an `OrderedCollection` of transactions, `register:`, `transactions` (a copy), `balance` (`transactions sum: [:t | t value] ifEmpty: [0]`), `doesManage:` (`self = anAccount`) and `hasRegistered:` (`includes:`).
- `Portfolio`, a `SummarizingAccount` subclass with no instance variables whose methods `balance`, `doesManage:`, `hasRegistered:`, `transactions`, `transactionsOf:` and the class-side `with:with:` and `withAll:` are all `self shouldBeImplemented`; the class-side error messages `accountAlreadyManagedErrorMessage` and `accountNotManagedMessageDescription` are given.

With the given code the receptive-account tests (01, 02, 03, 03_01, 06, 07, 10, 11, 14) pass and the 12 portfolio tests fail. The work is to implement `Portfolio` as a composite polymorphic with `ReceptiveAccount`, including the creation preconditions (no repeated accounts, no account managed twice through nested portfolios).

## Reference solution

There is no separate Cuis solution file. The starting point of the next exercise, `PortfolioTreePrinter-Ejercicio.st` (copied into `solution/`), contains a complete `Portfolio` with instance variable `accounts`: `balance` sums the accounts' balances, `transactions` injects into an `OrderedCollection`, `transactionsOf:` checks `manages:` and raises the error, `manages:` is `self = anAccount or: [accounts anySatisfy: [...]]` (checking in both directions), `registers:` uses `anySatisfy:`, and the class side `withAll:` runs `checkCreationPreconditions:` (accounts unique as a set, and no account manages another of the collection). In that file the testing selectors are `manages:` and `registers:` instead of `doesManage:` and `hasRegistered:`, and test20 builds the inner portfolio with `with:with:` instead of `withAll:` with three accounts.
