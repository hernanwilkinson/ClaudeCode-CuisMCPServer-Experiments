# Account summary with a time-consuming calculation (Future)

## Statement

Exercise: solve the problem posed in TimeConsumingExercise.

Since the time it takes to compute the investments to be earned is long, we want that value to be computed while the account summary is being generated.

## Pattern presented with the exercise

Future: represent a "value" even though it is not yet available. It uses concurrency.

## Behaviour required by the new tests

Both tests build `fromAccount` with `Deposit register: 100`, `Withdraw register: 50`, `Transfer register: 100 from: fromAccount to: toAccount` and `CertificateOfDeposit register: 1000 during: 360 at: 1/10 on: fromAccount`, and use the assertion `should: aBlock notTakeMoreThanMilliseconds: 1100` (defined in the test class as `aBlock timeToRun <= aTimeInMillis`).

1. (test30) `(AccountSummaryWithInvestmentEarnings for: fromAccount) lines` must not take more than 1100 ms and must answer 5 lines: `'Deposito por 100'`, `'Extraccion por 50'`, `'Transferencia por -100'`, `'Plazo fijo por 1000 durante 360 dias a una tna de 10%'`, `'Ganancias por 100'`.
2. (test31) `(AccountSummaryWithAllInvestmentInformation for: fromAccount) lines` must not take more than 1100 ms and must answer 6 lines: the five above followed by `'Inversiones por 1000'`.

## What the given code contains

`PortfolioTimeConsuming-Ejercicio.st` (category `PortfolioTimeConsuming-Ejercicio`) defines 39 classes: the complete solution of the tree-printer exercise plus the two summary classes under test.

- `PortfolioTest` with 35 tests: tests 01-20_01 (portfolio composite, with `doesManage:` / `hasRegistered:`), 21 and 21_01-21_03 (transfers with `depositLeg` / `withdrawLeg` that know their transfer), 22-29 (summary, transfer net, certificates, investment net and earnings, tree printers) and the two new tests 30 and 31. The support methods are implemented: `accountSummaryLinesOf:` answers `(AccountSummary for: account) lines`, the nets and earnings answer `(AccountTransferNetVisitor for: account) value`, `(InvestmentNetVisitor for: account) value`, `(InvestmentEarningVisitor for: account) value`, and the trees use `PortfolioTreePrinter of:namingAccountsWith:` and `ReversePortfolioTreePrinter`.
- Transactions: `AccountTransaction` (`value`, `affectBalance:`, `accept:`), `Deposit`, `Withdraw`, `CertificateOfDeposit` (`value tna numberOfDays account`, `earnings` = `value*(tna/360)*numberOfDays`, `days`, `tna`), `Transfer` (`value depositLeg withdrawLeg`, class `register:from:to:`), `TransferLeg` with `TransferDeposit` and `TransferWithdraw`.
- Accounts: `SummarizingAccount`, `ReceptiveAccount` (`balance` injects `affectBalance:`, `visitTransactionsWith:`, `accept:`), `Portfolio` (composite, `visitAccountsWith:`, `accept:`).
- Visitors: `AccountTransactionVisitor` with `AccountSummary`, `AccountTransferNetVisitor`, `BalanceVisitor`, `InvestmentEarningVisitor`, `InvestmentNetVisitor`; `SummarizingAccountVisitor` with `PortfolioTreePrinter`; and `ReversePortfolioTreePrinter`.
- The slow parts, simulated with `(Delay forSeconds: 1) wait` at the beginning of `AccountSummary>>lines`, `InvestmentEarningVisitor>>value` and `InvestmentNetVisitor>>value`.
- `AccountSummaryWithInvestmentEarnings` (instance variable `account`, class `for:`): `lines` creates an `InvestmentEarningVisitor`, gets `(AccountSummary for: account) lines`, then adds `'Ganancias por ', investmentEarnings value printString` and answers the lines. Sequentially this takes 2 seconds.
- `AccountSummaryWithAllInvestmentInformation`: `lines` creates an `InvestmentNetVisitor`, gets `(AccountSummaryWithInvestmentEarnings for: account) lines`, adds `'Inversiones por ', investmentEarnings value printString`. Sequentially this takes 3 seconds.

With the given code tests 30 and 31 fail because of the elapsed time (the lines themselves are right); the other 33 tests pass. The work is to compute the investment values concurrently with the summary, so that the total time is about one second, and to decide how the "value that is not yet available" is represented in the summary classes.

## Reference solutions

Two solution files are given, each with its own copy of the whole package (categories `PortfolioTimeConsuming-FutureNoPolimorfico` and `PortfolioTimeConsuming-FuturePolimorfico`, 33 tests with the older `manages:` / `registers:` selectors and without tests 21_02 and 21_03):

- Non-polymorphic future: `Future` is an `Object` subclass with `readySemaphore` and `value`; `Future class>>evaluating: aBlock` forks a process that evaluates the block and signals the semaphore, and `Future>>value` waits on the semaphore and answers the value. `AccountSummaryWithInvestmentEarnings>>lines` does `investmentEarnings := Future evaluating: [(InvestmentEarningVisitor for: account) value]` and later sends `investmentEarnings value` explicitly.
- Polymorphic future: the same `Future` but as a `ProtoObject` subclass with `doesNotUnderstand:` forwarding every message to `self value`, so the summary code sends `printString` directly to the future, which is polymorphic with the number (it also redefines `inspectorClass` and `instVarAt:put:` so the inspector works).
- In both files `AccountSummaryWithAllInvestmentInformation>>lines` deliberately does not use the future: it forks the `InvestmentNetVisitor` evaluation with an explicit `Semaphore` and waits on it, "so that you see what the solution would look like without it" (comment by Hernán). Both files also keep `affectBalance:` implemented in the transactions with a comment saying it is left so the alternative to a balance visitor can be seen.
