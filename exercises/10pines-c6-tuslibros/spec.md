# TusLibros.com

## Statement

The publishing house "TusLibros" wants to sell electronically, so it has decided to open two sales channels with its customers: an on-line one using REST and a batch one using files.

In both cases payment is made with a credit card, which must be validated with an external Merchant Processor.

The system must store all the purchases made by the customers to manage the stock, generate sales statistics, etc.

In the REST interface the authentication of customers is very important, because it is an interface open to the public (there is no network-level control whatsoever, such as filtering by IP, MAC, etc.).

The batch interface does not need that kind of authentication, because the files are received by email and a person makes sure they come from the right customer.

The Merchant Processor charges on a per-transaction basis, so the system must validate as much information as possible before sending it to the Merchant Processor.

The Merchant Processor has a development environment for testing, but it also charges per transaction, so the development team must avoid using it as much as possible unless it is necessary (that is, the Merchant Processor's development environment is only to be used in the integration environment of the system being developed).

## Merchant Processor interface

The Merchant Processor provides a REST interface to debit the credit cards. It is executed doing a POST to `https://merchant.com/debit` (on the production environment) and `https://merchanttest.com/debit` (on the development environment) and has the following parameters:

1. `creditCardNumber`: number of the credit card used to pay the purchase.
2. `creditCardExpiration`: credit card expiration date, with 2 digits for the month and 4 digits for the year.
3. `creditCardOwner`: credit card owner's name. Maximum 30 characters.
4. `transactionAmount`: purchase amount, with a maximum of 15 digits for the integer part and 2 digits for the decimal part, using a dot to separate the integer part from the decimal one. The decimal part must always be generated, even when it is zero. (The original spells this parameter `transactionAmout` in the list and `transactionAmount` in the example.)

For example:

```
https://merchant.com/debit?creditCardNumber=5400000000000001&creditCardExpiration=072011&creditCardOwner=PEPE%20SANCHEZ&transactionAmount=123.50
```

These example values are the ones the Merchant Processor's development environment uses as valid data.

If some parameter does not have the specified format, the server returns HTTP 400 (Bad request); otherwise it returns HTTP 200 with the following content:

1. In case of success: `0|TRANSACTION_ID`
2. If the debit could not be done: `1|ERROR_DESCRIPTION`

If the transaction did not succeed, the user of the system must receive the Merchant Processor's error description.

## On-line REST interface offered by the system

The on-line REST interface the system will offer must allow to create a cart (which is going to be valid for 30 minutes after the last operation performed with it), to add a book with its quantity to a created cart, to query a cart's content, to check out a cart and to query the purchases made by a customer. The API is:

### 1. Resource: `/createCart`

| Parameter | Description |
|---|---|
| `clientId` | ID of the customer who is creating the cart |
| `password` | Password used to validate that the customer can operate on TusLibros.com |

Output:

- On success: `0|CART_ID`
- On error: `1|ERROR_DESCRIPTION`

### 2. Resource: `/addToCart`

| Parameter | Description |
|---|---|
| `cartId` | Cart id created using `/createCart` |
| `bookIsbn` | ISBN of the book the customer wishes to add. It has to be an ISBN published by TusLibros |
| `bookQuantity` | The number of books to add. Must be >= 1 |

Output:

- On success: `0|OK`
- On error: `1|ERROR_DESCRIPTION`

### 3. Resource: `/listCart`

| Parameter | Description |
|---|---|
| `cartId` | Cart id created using `/createCart` |

Output:

- On success: `0|ISBN_1|QUANTITY_1|ISBN_2|QUANTITY_2|....|ISBN_N|QUANTITY_N`
- On error: `1|ERROR_DESCRIPTION`

### 4. Resource: `/checkOutCart`

| Parameter | Description |
|---|---|
| `cartId` | Cart id created using `/createCart` |
| `ccn` | Credit card number |
| `cced` | Credit card expiration date, with 2 digits for the month and 4 digits for the year |
| `cco` | Credit card owner's name |

Output:

- On success: `0|TRANSACTION_ID`
- On error: `1|ERROR_DESCRIPTION`

### 5. Resource: `/listPurchases`

| Parameter | Description |
|---|---|
| `clientId` | ID of the customer who wants to see the purchases he/she made |
| `password` | Password used to validate that the customer can operate with TusLibros.com |

Output:

- On success: `0|ISBN_1|QUANTITY_1|....|ISBN_N|QUANTITY_N|TOTAL_AMOUNT`
- On error: `1|ERROR_DESCRIPTION`

If the request does not comply with the syntactic rules, the system must return HTTP 400 (Bad request). If it complies with the syntax, it has to return HTTP 200 (OK).

## Batch interface

The files used as the batch interface are:

**Input:** `CLIENTE_INPUT_AAAA_MM_DD.csv` (`CLIENTE` is the customer's id and `AAAA_MM_DD` the date as year, month and day), with the following format: `RecordType,RestOfRecord`, where:

1. Record type 1
   - Meaning: add a book to the cart.
   - Format: `ISBN,QUANTITY` (create the cart if it does not exist).
2. Record type 2
   - Meaning: check out the cart.
   - Format: `card_number,expiration_date,owner_name`.

**Output:** `CLIENTE_OUTPUT_AAAA_MM_DD.csv`, where each record has the following format:

- Transaction result: 0 for success, 1 on error.
- On success: `transaction_id,transaction_total`.
- On error: `error_description`.

Example:

File `TEMATIKA_INPUT_2010_02_01.csv`

```
1,0321146530,2
1,1933988274,1
2,5400000000000001,072011,PEPE SANCHEZ
1,1933988274,3
2,5400000000000002,132012,KENT BECK
```

File `TEMATIKA_OUTPUT_2010_02_01.csv`

```
1,10533,60.53
```

> Translator's notes. (1) The PDF's output example ends with the line above; the `.doc` the PDF was generated from (`EjercicioTusLibrosV3.doc`) has a second line, `2,INVALID EXPIRATION DATE`, for the second check-out (expiration `132012` is an invalid month). (2) The example's result codes (1 for the successful check-out, 2 for the failed one) do not match the stated "0 for success, 1 on error"; the inconsistency is in the original. (3) V3 no longer says what to do when the Merchant Processor is down; the previous version (V2) required saving the transaction to a file for batch processing.

## Iterations

Start from the business model, not from the REST API or the Merchant Processor, and follow the API's functionality with business objects.

The reference solution is a sequence of 78 snapshots grouped in four iterations; each one is a separate exercise (`10pines-c6-tuslibros-iteracionN`), whose `spec.md` details it:

1. **Iteration 1 - Shopping cart** (`TusLibros-1.st` to `-18.st`, solution `TusLibros-18.st`): class `Cart` over the publisher's catalog: created empty, `add:` / `add:of:` with the validations of `/addToCart` (the item must be in the catalog, the quantity must be positive, signalled with `self error:` and leaving the cart unchanged), `includes:`, `occurrencesOf:`, `isEmpty`. `CartTest`, 8 tests.
2. **Iteration 2 - Cashier, credit card and sales book** (`-19.st` to `-29.st`, solution `-29.st`): class `Cashier` created `toCheckout:charging:on:registeringOn:` with the preconditions "the cart is not empty" and "the credit card is not expired on the given date"; `checkOut` computes the total from the catalog (now a price list, a `Dictionary` ISBN -> price), registers a `Sale of:` the total in the sales book and answers the total. `CreditCard expiringOn:` a `Month`, `Sale`, `StoreTestObjectsFactory` (the test data factory). No Merchant Processor yet. `CashierTest`, 4 tests (12 in total).
3. **Iteration 3 - Merchant Processor simulation** (`-30.st` to `-33.st`, solution `-33.st`): the cashier debits the total through a Merchant Processor collaborator (`throught:`) with the message `debit:from:`; the test case itself plays the Merchant Processor with a configurable block, checks the debited amount and card, and checks that when the debit fails ("Credit card has no credit") the error reaches the caller and nothing is registered in the sales book. `Cart>>total`; 2 more tests (14 in total).
4. **Iteration 4 - System facade, sessions and time** (`-34.st` to `-78.st`, solution `-78.st`): `TusLibrosSystemFacade` (named `RestInterface` during most of the steps) offers the five operations of the statement as messages: `createCartFor:authenticatedWith:` (client authentication, answers a cart id), `add:of:toCartIdentifiedAs:`, `listCartIdentifiedAs:`, `checkOutCartIdentifiedAs:withCreditCardNumbered:ownedBy:expiringOn:` and `listPurchasesOf:authenticatingWith:` (ISBN -> amount spent). Carts live in a `CartSession` that expires 30 minutes after its last use; time comes from a `Clock` that the tests replace with a `ManualClock` (`advanceTime:` / `revertTime:`). The cashier now produces a `Ticket` of `LineItem`s and a `Sale` per customer; an abstract `MerchantProcessor` documents `debit:from:`. `TusLibrosSystemFacadeTest`, 19 tests (33 in total). **Not implemented in any snapshot:** the `0|...` / `1|ERROR_DESCRIPTION` string encoding, HTTP 200/400, the batch files of V3 (or V2's file for when the Merchant Processor is down), and the validation of the card number and owner name (the `CreditCard` only knows its expiration).
