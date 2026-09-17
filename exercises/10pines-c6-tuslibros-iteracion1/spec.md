# TusLibros.com - Iteration 1: Shopping Cart

## Context

The publishing house "TusLibros" wants to sell electronically through an on-line REST channel and a batch channel; payments are made with a credit card validated by an external Merchant Processor. Start from the business model, not from the REST API or the Merchant Processor: the first thing to build is the shopping cart.

## Scope of this iteration

There is no starting code. Model the shopping cart of TusLibros.com, that is, the requirements behind `/createCart`, `/addToCart` and `/listCart` without clients, sessions or transport:

1. A cart is created over the publisher's catalog (the collection of the ISBNs the store sells); a newly created cart is empty.
2. A book (an ISBN; no `Book` class, a `String` is enough) can be added to the cart, alone or with a quantity.
   - The book must belong to the catalog (`/addToCart`: "it has to be an ISBN published by TusLibros"); adding one that does not, with any quantity, must fail and leave the cart unchanged.
   - The quantity must be >= 1; adding with a non-positive quantity must fail and leave the cart unchanged.
   - Adding the same book several times, or with a quantity, accumulates.
3. The cart answers whether it is empty, whether it includes a book and how many copies of a book it holds (what `/listCart` will report as `ISBN_1|QUANTITY_1|...`).

Errors are signalled with exceptions carrying a message the test can compare with; negative cases are tested as well as positive ones, and each test creates its own data. Notes: it makes no sense to create a `Cart` class for the first tests, a plain collection will do until the validations arrive; do not write a test for removing books; when checking quantities do not break encapsulation (ask the cart, do not ask its collection).

## What the solution (`TusLibros-18.st`) contains

- `Cart` (category `TusLibros`), instance variables `catalog items`; created with `Cart acceptingItemsOf: aCatalog`. Protocol: `add: anItem`, `add: aQuantity of: anItem`, `includes: anItem`, `occurrencesOf: anItem`, `isEmpty`; error messages `invalidItemErrorMessage` ("Item is not in catalog") and `invalidQuantityErrorMessage` ("Invalid number of items"), signalled with `self error:` from `assertIsValidItem:` and `assertIsValidQuantity:`.
- `CartTest`, 8 tests: `test01NewCartsAreCreatedEmpty`, `test02CanNotAddItemsThatDoNotBelongToStore`, `test03AfterAddingAnItemTheCartIsNotEmptyAnymore`, `test04CanNotAddNonPositiveNumberOfItems`, `test05CanNotAddMoreThanOneItemNotSellByTheStore`, `test06CartRemembersAddedItems`, `test07CartDoesNotHoldNotAddedItems`, `test08CartRemembersTheNumberOfAddedItems`; support methods `createCart`, `defaultCatalog`, `itemSellByTheStore`, `itemNotSellByTheStore`.
- Steps: snapshots 1-2 use an `OrderedCollection` as the cart; `Cart` appears in snapshot 3 with the catalog validation; the quantity, `add:of:` and `occurrencesOf:` follow.

## Out of scope (later iterations)

Prices and the total, the cashier, credit cards, the sales book (iteration 2); the Merchant Processor (iteration 3); clients, cart ids, sessions and the 30-minute validity (iteration 4). The string encoding of the answers, HTTP codes and the batch files are not part of this exercise.
