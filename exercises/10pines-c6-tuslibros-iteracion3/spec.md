# TusLibros.com - Iteration 3: Merchant Processor Simulation

## Starting code

`starting/TusLibros-29.st`: iterations 1 and 2 (`Cart` over a price list, `Cashier` with the empty-cart and expired-card preconditions, `CreditCard`, `Sale`, `StoreTestObjectsFactory`, `CartTest` 8 tests and `CashierTest` 4 tests). This iteration adds behaviour to it.

## Scope of this iteration

Make the cashier debit the total from the credit card through the Merchant Processor, keeping the tests in control of it:

1. The Merchant Processor charges per transaction, also in its development environment, so the tests must never use the real one: the cashier collaborates with a Merchant Processor object it receives (`throught:`), to which it sends `debit: anAmount from: aCreditCard`. In the tests the test case itself plays the Merchant Processor with a `debitBehavior` block set by each test.
2. When the debit succeeds, the cashier must have sent the sale's total and the customer's credit card to the Merchant Processor (the test records what was debited).
3. When the Merchant Processor rejects the debit (for example "Credit card has no credit"), the error description must reach the caller of `checkOut` and nothing must be registered in the sales book.

Notes: simulate the Merchant Processor; talk about the architecture of an interface, its two faces (the inner one that talks with our objects and the outer one that talks strings); put inside the `should:raise:` only the collaboration that can raise the exception; do not generate files, use streams. The notes also list tests for an invalid card, an owner name longer than 30 characters and the Merchant Processor being down; the code only has the "no credit" case.

## What the solution (`TusLibros-33.st`) contains

- `Cashier toCheckout: aCart charging: aCreditCard throught: aMerchantProcessor on: aDate registeringOn: aSalesBook`; `checkOut` is now `calculateTotal` (`total := cart total`), `debitTotal` (`merchantProcessor debit: total from: creditCard`), `registerSale`, answering the total; new error message `creditCardHasNoCreditErrorMessage` ("Credit card has no credit"), used by the tests' simulator.
- `Cart>>total` (`items sum: [ :anItem | catalog at: anItem ]`), replacing `itemsDo:`. The empty `MonthOfYear` class of iteration 2 is removed. Method categories are cleaned up.
- `CashierTest` gains `debitBehavior` (a two-argument block, `[ :anAmount :aCreditCard | ]` by default in `setUp`) and `debit:from:` delegating to it, so `throught: self`; 2 new tests: `test05CashierChargesCreditCardUsingMerchantProcessor`, `test06CashierDoesNotSaleWhenTheCreditCardHasNoCredit`. 14 tests in total.

## Out of scope (later iteration)

Clients, passwords, cart ids, sessions and the 30-minute validity (iteration 4). The HTTP interface of the real Merchant Processor (URLs, parameter formats, `0|TRANSACTION_ID` / `1|ERROR_DESCRIPTION`), the case of the Merchant Processor being down, the string encoding of the system's answers, HTTP codes and the batch files are not part of this exercise.
