# Extract method from similar code: two failures found while refactoring the Ada's Coffee Shop tests

Date: 2026-09-10
Image: MCP-4-Refactoring.image, test class CoffeeShopTest (category IngSof1-2019-2C-1Parcial-Tests)
Tool: smalltalk_refactor_extract_method_from_similar_code (ExtractMethodFromSimilarCode refactoring)

## 1. The sales check in tests 2 and 3: wrong varying part chosen

Piece selected in test02CanQuerySalesByCustomer, expecting the customer and the combo to become the parameters of assertOnlySaleMadeTo:is: :

    salesToCustomer := salesSystem salesMadeTo: adaLovelace.
    self assert: 1 equals: salesToCustomer size.
    self assert: 1 equals: (salesToCustomer count: [ :aProduct | aProduct = self combo1 ])

The refactoring applied, but produced:

    assertOnlySaleMadeTo: aCustomer is: anExpectedProduct
        | salesToCustomer |
        salesToCustomer := salesSystem salesMadeTo: aCustomer.
        self assert: 1 equals: salesToCustomer size.
        self assert: 1 equals: anExpectedProduct

    "test02"
    self assertOnlySaleMadeTo: adaLovelace is: (salesToCustomer count: [ :aProduct | aProduct = self combo1 ])

    "test03"
    salesToCustomer := self assertOnlySaleMadeTo: adaLovelace is: (salesToCustomer count: [ :aProduct | aProduct = self combo1 ]).
    salesToCustomer := self assertOnlySaleMadeTo: alanKay is: (salesToCustomer count: [ :aProduct | aProduct = self combo2 ])

Both tests errored afterwards: the call sites reference salesToCustomer, which is assigned inside the extracted piece.

Cause: ParameterizableNodesFinder>>allParameterizableNodesBetween:and: compares only the top-level arguments of each statement (plus the receiver when it is a temporary) and never descends into an argument. The real difference, self combo1 versus self combo2, is inside a block, so the smallest node it could parameterize was the whole (salesToCustomer count: [...]) expression. That parameter depends on a temporary declared by the extracted code, and the precondition anyParameterContainsReturnOrAssignment only rejects parameters containing an assignment or a return, so the invalid result was not detected.

The three earlier errors "The number of arguments in the given selector is not correct" (ExtractMethodNewMethod) came from the same comparison: with temporaries named salesToAdaLovelace and salesToAlanKay, those temporary receivers counted as varying parts too, so the tool expected more than the two parameters named. Renaming the temporaries to a single name (salesToCustomer) made the count match but did not change which node was chosen.

Workaround used: the helper and tests 2 and 3 were written by hand.

## 2. The three sale registrations in tests 12 to 14: repeated variable refused

Piece selected in test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds, to become registerSalesOf600MillilitersTo: with one parameter:

    salesSystem registerSaleTo: adaLovelace of: self combo1.
    salesSystem registerSaleTo: adaLovelace of: self combo1.
    salesSystem registerSaleTo: adaLovelace of: self combo2

Answer, with and without the trailing period: "Cannot apply the refactoring due to a duplicate temporary variable".

Cause: the finder correctly saw adaLovelace varying against tests 13 and 14 (alanKay, billGates) in three positions and collected three arguments. ExtractMethodReplacementsFinder>>assertArgumentsAreValid: refuses whenever two collected arguments are equivalent variable nodes. Its comment states the limitation: "Up to now, if there is a temp var duplicated we cannot apply the refactoring". Naming three parameters would have produced a selector taking the same customer three times.

Workaround used: registerSalesOf350MillilitersTo: and registerSalesOf600MillilitersTo: were written by hand.

## Summary

- The tool compares statement arguments as whole units; a difference nested inside an argument (for example inside a block) widens the parameter to the whole argument, even when that argument depends on a temporary of the extracted code.
- The tool cannot yet merge repeated occurrences of one variable into a single parameter.

Both cases are candidates for new test cases in the refactoring's own suite.
