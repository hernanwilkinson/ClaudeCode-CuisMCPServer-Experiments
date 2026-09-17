# Visitor implementation rule (metaprogramming)

## Statement

Write a `VisitorRule`, an object that uses reflection to verify that a class hierarchy and a visitor class implement the Visitor pattern correctly, following this convention: the root of the visited hierarchy defines an abstract `accept:` message, each concrete subclass `X` implements `accept: aVisitor` as `aVisitor visitX: self`, and the visitor class understands every `visitX:` message.

The rule is created with `VisitorRule on: aHierarchyRoot visitedWith: aVisitorClass` (the concrete subclasses are then found by reflection: all subclasses that define no abstract method, where a method is abstract when it sends `subclassResponsibility`) or with `VisitorRule on: aHierarchyRoot visitedWith: aVisitorClass toAll: aCollectionOfSubclasses`. Sending `value` to the rule verifies it and signals an `Error` with a descriptive message on the first violation; the messages are answered by the rule itself so the tests can compare them.

Behaviour required by the tests (the fixture classes named here are given in the same file):

1. (test01) `VisitorRule on: TransactionWithoutAccept visitedWith: TransactionVisitor` fails with `rule noAcceptMessageErrorDescription` (`'Root of hierarchy does not define accept message'`): the hierarchy root must implement `accept:`.
2. (test02) `VisitorRule on: TransactionAcceptNoAbstract visitedWith: TransactionVisitor` fails with `rule acceptMethodIsNotAbstract` (`'Accept method is not abstract'`): `accept:` in the root must be abstract.
3. (test03) `VisitorRule on: TransactionForInvalidVisitor visitedWith: InvalidTransactionVisitor` fails with `rule visitMessageNotImplementedErrorDescriptionFor: DepositForInvalidVisitor` (`'visitDepositForInvalidVisitor: not implemented'`): the visitor must implement `visitX:` for every concrete subclass X.
4. (test04) `VisitorRule on: TransactionForInvalidVisit visitedWith: TransactionVisitorForInvalidVisit` fails with `rule acceptDoesNotSendVisitMessageErrorDescriptionFor: DepositNotSendingVisit` (`'accept does not send visit message on class DepositNotSendingVisit'`): the `accept:` of each concrete subclass must send the right `visitX:` message to the visitor.
5. (test05) `VisitorRule on: TransactionForInvalidVisit visitedWith: TransactionVisitorForInvalidVisit toAll: (Array with: WithdrawSendingVisitWithOtherObject)` fails with `rule acceptDoesNotPassRightParameterErrorDescriptionFor: WithdrawSendingVisitWithOtherObject` (`'accept sends visit with invalid parameter in class WithdrawSendingVisitWithOtherObject'`): `accept:` must pass the visited object itself as the parameter of `visitX:` (that class sends `visitWithdrawSendingVisitWithOtherObject: 1`).
6. (test06) `VisitorRule on: Transaction visitedWith: TransactionVisitor toAll: (Array with: Deposit with: Withdraw)` does not raise an error: `Transaction` has an abstract `accept:`, `Deposit>>accept:` sends `aVisitor visitDeposit: self`, `Withdraw>>accept:` sends `aVisitor visitWithdraw: self`, and `TransactionVisitor` defines `visitDeposit:` and `visitWithdraw:` (abstract).

The tests use a helper `should: aVisitorRule failWith: anErrorMessage` that evaluates `aVisitorRule value` and compares `messageText` with `assert:equals:`.

## What the given code contains

There is no starting file for Cuis: the only file, `Visitor-ImplementationRule.pck.st` (package `Visitor-ImplementationRule`, Cuis 5.0, April 2020), is the solution and is copied into `solution/`. It contains `VisitorImplementationTests` (6 tests), the fixture classes (`Transaction` with `Deposit` and `Withdraw`, `TransactionVisitor`, `InvalidTransactionVisitor`, `TransactionWithoutAccept`, `TransactionAcceptNoAbstract`, `TransactionForInvalidVisit` with `DepositNotSendingVisit`, `TransactionForInvalidVisitor` with `DepositForInvalidVisitor`, `TransactionVisitorForInvalidVisit`, `WithdrawSendingVisitWithOtherObject`), the rule and its helper:

- `VisitorRule` (`hierarchyRoot visitorProtocol subclasses`): `value` runs `verifyAcceptIsCorrectOnHierarchyRoot` (`compiledMethodAt: #accept: ifAbsent:` and `isAbstract`) and `verifyVisitsAreImplementedCorrectly`, which for each subclass builds the selector `('visit', aSubclass name, ':') asSymbol`, checks `visitorProtocol canUnderstand:` it, and then sends `accept:` to `aSubclass basicNew` with a `MessageEater` as visitor to observe which message `accept:` sends and with which argument.
- `MessageEater`, a `ProtoObject` subclass whose `doesNotUnderstand:` records every received message and answers `self`, with `firstReceivedMessageNamed:ifNone:`.
- Two extension methods on `Behavior`: `concreteSubclasses` (`allSubclasses reject: [:c | c hasAbstractMethods]`) and `hasAbstractMethods`.

To use it as an exercise, a starting point would have to be prepared from the solution by keeping the tests and the fixture classes and removing `VisitorRule`, `MessageEater` and the `Behavior` extensions (or leaving `VisitorRule` with only its error-message methods, which the tests send).

Note on the given solution: `VisitorRule>>verify:for:sentAsParameter:` compares the argument of the observed visit message with the message eater (`visitMessage argument == messageEater`) rather than with the visited object; with `Deposit>>accept:` sending `visitDeposit: self` that comparison is false, so test06 seems to fail as filed (not verified in an image).
