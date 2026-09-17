# TusLibros.com - Iteration 2: Cashier, Credit Card and Sales Book

## Starting code

`starting/TusLibros-18.st`: iteration 1 (the `Cart` over the publisher's catalog and `CartTest`, 8 tests). This iteration adds behaviour to it; the catalog changes from a collection of ISBNs to a price list (a `Dictionary` ISBN -> price), so `Cart>>assertIsValidItem:` and the test data factory change accordingly.

## Scope of this iteration

Model the check-out of a cart **without the Merchant Processor yet**, that is, the part of `/checkOutCart` that can be validated locally and the requirement "the system must store all the purchases made by the customers":

1. A cashier is created to check out a cart, charging a credit card, on a given date, registering on a sales book. Creating it must fail when the cart is empty ("Can not check out an empty cart") or when the credit card is expired on that date ("Can not charge an expired credit card"); in both cases nothing is registered in the sales book.
2. A credit card knows its expiration month (`cced`: month and year); it is expired on a date when its month is before the date's month. The date is a parameter, so the test controls it (the test data factory answers `today`, an expired card and a not-expired card relative to it).
3. Checking out computes the total of the sale as the sum of the prices of the books in the cart (quantities included), taken from the publisher's price list.
4. Checking out registers a sale with that total in the sales book (an `OrderedCollection`) and answers the total.

Notes: class `Cashier`; the cashier answers a ticket and creates a `Sale` (not a "purchase") that knows it; class `CreditCard`; a class for months of a year. The notes also list tests on the card data (owner name not empty, valid number); the code only models the expiration.

## What the solution (`TusLibros-29.st`) contains

- `Cashier`: `Cashier toCheckout: aCart charging: aCreditCard on: aDate registeringOn: aSalesBook` (class-side `assertIsNotEmpty:`, `assertIsNotExpired:on:`, error messages `cartCanNotBeEmptyErrorMessage`, `canNotChargeAnExpiredCreditCardErrorMessage`); `checkOut` iterates `cart itemsDo:` adding the price from `cart catalog`, adds `Sale of: total` to the sales book and answers the total.
- `CreditCard expiringOn: aMonth` (a `Month`), `isExpiredOn: aDate`.
- `Sale of: aTotal`, `total`.
- `MonthOfYear`: an empty class with `of:` marked `shouldBeImplemented`, a leftover that iteration 3 removes.
- `StoreTestObjectsFactory` (the test objects factory): `createCart`, `defaultCatalog`, `itemSellByTheStore`, `itemNotSellByTheStore`, `itemSellByTheStorePrice` (10), `notExpiredCreditCard`, `expiredCreditCard`, `today`. `CartTest` and `CashierTest` get it in `setUp`.
- `CashierTest`, 4 tests: `test01CanNotCheckoutAnEmptyCart`, `test02CalculatedTotalIsCorrect`, `test03CanNotCheckoutWithAnExpiredCreditCart`, `test04CheckoutRegistersASale`. 12 tests in total with `CartTest`.

## Out of scope (later iterations)

The Merchant Processor and its simulation (iteration 3); clients, passwords, cart ids, sessions and the 30-minute validity (iteration 4). The card number and owner name, the string encoding, HTTP codes and the batch files are not part of this exercise.
