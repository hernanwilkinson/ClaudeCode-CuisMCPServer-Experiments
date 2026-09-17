# Portfolio transfers, certificates of deposit and tree printer (Visitor)

## Statement

Exercise: solve the problem posed in PortfolioTreePrinterExercise.

It consists of the accounts allowing two new kinds of transactions: transfers (Transferencias) and creation of certificates of deposit (Plazo Fijo, a fixed-term deposit).

- It must be possible to print the account summary (resumen de cuenta) with the particular details of each transaction.
- It must be possible to compute the net amount transferred.
- It must be possible to compute the net amount invested and how much will be earned from the investments made.

## Pattern presented with the exercise

Visitor: represents an operation to be executed on the elements of an object structure. It allows defining new operations without changing the classes of which the visited objects are instances. Double dispatch is used as its implementation base.

## Behaviour required by the new tests

The test class fixes the domain messages but leaves the querying API to the student: six "test support" methods of `PortfolioTest` are `self shouldBeImplemented` and must be written by the student to call whatever objects he designs: `accountSummaryLinesOf:`, `accountTransferNetOf:`, `investmentEarningsOf:`, `investmentNetOf:`, `portofolioTreeOf:namingAccountWith:` and `reversePortofolioTreeOf:namingAccountWith:`.

Transfers:

1. (test21) `Transfer register: 100 from: fromAccount to: toAccount` leaves `fromAccount balance` = -100 and `toAccount balance` = 100.
2. (test21_01) The transfer is reachable from the transactions: `transfer value` is 100, and `fromAccount transactions first transfer` and `toAccount transactions first transfer` are the transfer (so each account registers a transaction that knows its transfer).

Account summary:

3. (test22) For an account with `Deposit register: 100`, `Withdraw register: 50` and a transfer of 100 to another account, the summary lines are exactly `'Deposito por 100'`, `'Extraccion por 50'`, `'Transferencia por -100'`; the receiving account's summary is the single line `'Transferencia por 100'`.

Net transferred:

4. (test23) With a deposit of 100, a withdraw of 50, a transfer of 100 from A to B and a transfer of 250 from B to A, the transfer net of A is 150 and of B is -150.

Certificates of deposit:

5. (test24) `CertificateOfDeposit register: 100 during: 30 at: 1/10 on: account` (value, number of days, annual nominal rate "tna") withdraws the invested value from the account: after deposit 1000, withdraw 50, transfer 100 out and the certificate, the investment net is 100 and the balance is 750.
6. (test25) The investment earnings of an account are the sum over its certificates of `value * (tna / 360) * days`: for 100 during 30 days at 1/10 and 100 during 60 days at 15/100 the earnings are `(100*((1/10)/360)*30) + (100*((15/100)/360)*60)` (exact fractions).
7. (test26) The summary prints certificates as `'Plazo fijo por 1000 durante 30 dias a una tna de 10%'` (fourth line after deposit, withdraw and transfer).
8. (test27) Certificates do not affect the transfer net (150 / -150 as in test23).

Tree printer:

9. (test28) Given `complexPortfolio := Portfolio with: account1 with: account2` and `composedPortfolio := Portfolio with: complexPortfolio with: account3`, and a `Dictionary` mapping each account or portfolio to its name, the portfolio tree is printed depth first, one line per node, indented with one space per level: `'composedPortfolio'`, `' complexPortfolio'`, `'  account1'`, `'  account2'`, `' account3'`.
10. (test29) The reverse tree printer prints the same lines starting from the leaves: `' account3'`, `'  account2'`, `'  account1'`, `' complexPortfolio'`, `'composedPortfolio'`.

Tests 01 to 20_01 are the portfolio exercise tests; they already pass except test03, because the given `ReceptiveAccount>>balance` adds the value of every transaction and that test registers `Withdraw register: 50` after a deposit of 100 expecting balance 50.

## What the given code contains

`PortfolioTreePrinter-Ejercicio.st` (category `PortfolioTreePrinter-Ejercicio`) defines 13 classes:

- `PortfolioTest` with 32 tests: the 21 portfolio tests (with `manages:` / `registers:` as testing selectors, and `test08` duplicated as `test08Portofolio...`), the 9 new tests above (test21 to test29, plus test21_01), and the six `shouldBeImplemented` support methods.
- The complete solution of the portfolio exercise: `AccountTransaction` (`value` abstract, class `register:on:`), `Deposit`, `Withdraw` (both also define their own class-side `register:on:`), `SummarizingAccount` (`manages:`, `registers:`, `balance`, `transactions`), `Portfolio` (instance variable `accounts`, composite implementation with creation preconditions) and `ReceptiveAccount` (`balance` is `inject:into:` adding `transaction value`, so a `Withdraw` of 50 currently adds 50).
- `CertificateOfDeposit`, an `AccountTransaction` subclass with instance variables `value tna numberOfDays account` and no methods.
- `Transfer`, an `Object` subclass with no instance variables and no methods.

The new tests fail with the given code (`Transfer register:from:to:` and `CertificateOfDeposit register:during:at:on:` do not exist, `Withdraw` adds to the balance, the support methods are not implemented). The work is to model the two new transactions (a transfer affects two accounts, so each account needs a transaction that knows the transfer), to make the balance work for all four kinds, and to add the four operations (summary, transfer net, investment net, investment earnings) over the heterogeneous collection of transactions plus the two tree printers over the composite without asking each object for its class, which is what the Visitor pattern is for.

## Reference solution

There is no separate Cuis solution file. The starting point of the next exercise, `PortfolioTimeConsuming-Ejercicio.st` (copied into `solution/`), contains a solution: `AccountTransaction` gains `accept:` and `affectBalance:` (deposit adds, withdraw and certificate subtract), `ReceptiveAccount>>balance` injects with `affectBalance:` and offers `visitTransactionsWith:`; `Transfer` (value, `depositLeg`, `withdrawLeg`) registers a `TransferWithdraw` on the source and a `TransferDeposit` on the target, both `TransferLeg` transactions that know their transfer; `AccountTransactionVisitor` declares `visitDeposit:`, `visitWithdraw:`, `visitTransferDeposit:`, `visitTransferWithdraw:`, `visitCertificateOfDeposit:` and is subclassed by `AccountSummary` (lines), `AccountTransferNetVisitor`, `InvestmentNetVisitor`, `InvestmentEarningVisitor` and `BalanceVisitor`; `SummarizingAccountVisitor` (`visitPortfolio:`, `visitReceptiveAccount:`) is subclassed by `PortfolioTreePrinter` (keeps a `spaces` counter, `Portfolio>>visitAccountsWith:` iterates the accounts) and `ReversePortfolioTreePrinter` reverses its lines. In that file the tests were renamed to `hasRegistered:` / `doesManage:` and test21_01 was replaced by three tests on the transfer legs; it also contains one-second delays in `AccountSummary>>lines` and in the two investment visitors, added for the time-consuming exercise.
