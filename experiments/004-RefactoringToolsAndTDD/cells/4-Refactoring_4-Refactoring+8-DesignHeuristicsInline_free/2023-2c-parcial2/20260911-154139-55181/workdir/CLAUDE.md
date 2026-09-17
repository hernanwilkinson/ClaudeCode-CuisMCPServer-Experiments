## Refactoring tools first

When changing existing classes, methods or source code, the refactoring tools
(`smalltalk_refactor_*`) take precedence over defining or deleting methods and classes by hand.
Rename, extract, inline, move, push up and push down with them, because they keep senders,
implementors and subclasses consistent, which a hand edit does not.

## Design heuristics

Follow these design heuristics in every method, class and test you write. They are heuristics,
never "rules".

## Testing
- [testing-for-equality] Prefer `assert: actual equals: expected` over `assert: expected = actual` and over other `assert:`/`deny:` boolean-equality forms, so a failing test shows both the expected and the actual value.
- [testing-for-exception-with-side-effect] Use `should:raise:withExceptionDo:` when testing that a message send has side effects and should signal an exception. Verify that it has one assertion for the exception messageText and at least one other assertion to verify it did not have effects.
- [testing-for-exception-without-side-effect] Use `should:raise:withMessageText:` when testing that a message send has no side effects and should signal an exception.
- [exception-block-single-send] When testing for exceptions, the block to try should have only the message send that should fail.
- [exception-block-should-not-have-assignment] It does not make sense to assign the result of a message send that signals an exception to a variable, neither to assert that that variable `isNil`
- [deny-over-assert-not] Use `deny:` instead of `assert: condition not` when expecting `condition` to be `false`
- [test-name-convention] Test names should synthesize the setup, exercise and verification of the test.
- [testN-prefix-preserved] If you suggest to change the name of a test and that name has the format `testN` where N is an integer of any number of digits, the new name you suggest should start with the original `testN`
- [one-thing-per-test] Test should only exercise one thing to test

## Naming
- [variable-name-reveals-role] Variable names should not be meaningless and it should reveal the role of the object it is naming, not the type of it
- [do-not-use-abbreviated-name] No name for variables, messages, classes or anything that should be named, should used an abbreviated word.
- [parameter-prefix] Parameter should start with `a` or `an` when code is written in English or `un`, `una`, `unos`, `unas` when code is written in Spanish
- [message-keywords-names] The keywords of a message name should always start with lowercase
- [message-names] Message names should help reading the collaboration, that is when the message is sent to a receiver, as prose
- [no-set-get] Message name should not start with get or set for getters or setters
- [no-class-name-prefix] Message names and instance variable names should not have the class name as prefix. In `MCPToolProperty`, `propertyName` and `propertyDefinition` should be `name` and `definition`, because they are already read in the context of their class. The exception is a class side message whose name would shadow the `Class`/`Metaclass`/`Object` protocol (`name`, `definition`, `category`, `comment`, `className` are taken there): prefix only when the protocol says you must, and only on the class side

## Object design
- [error-messages-as-class-methods] Error messages should be define as class methods and not as literal strings
- [complete-objects] Classes should be instantiated with all the necessary parameters so its instances are created completed
- [valid-objects] Objects should be valid from the moment they are created. That means that instance creation messages should have preconditions (assertions) to validate the parameters when necessary and the should obbey the [no-nil-precondition] and [no-type-precondition] . The instance creation assertions should be in the class side, not the instance side, and they should be encapsulated in a message.
- [prefer-immutable] Inmutable objects are preferable over mutable ones.
- [avoid-setters-use-syncWith] Setters should be avoided. If they are necessary and a validation has to be made, use a message `syncWith: anotherInstance` that will copy all instance variables from `anotherInstance` that we know is already valid per previous rule
- [getter-returns-copy] Getter should return a copy of the object if it is mutable to avoid breaking encapsulation
- [avoid-breaking-encapsulation] Avoid breaking encapsulation, do not ask, tell
- [avoid-nil] The use of `nil` should be avoided
- [no-nil-precondition] Preconditions should not test if a parameter is not nil due to [avoid-nil]
- [no-type-precondition] Preconditions should not test for parameters type
- [replace-if-with-polymorphism] When possible, replace if with polymorphism 
- [method-complexity] Methods should not have more than 10 message sends or so.
- [method-declarativity] Methods should be declarative and not imperative. Complex expressions should be extracted to methods whose names should represent the meaning of the expression
- [one-initialize-message] A class should define only one `initialize` message, and it should do assignments and nothing else
- [move-helper-methods-to-right-class] A method that has no references to self, super or any instance variable is a helper method. When the helper method is a general purpose one, it should belong to a class of one of the parameters of the method. Move it there if it is general purpose behavior. Move it as extension method if the class belongs to another package
- [instance-creation-funnel] All instance creation messages should be written based on a single one that runs all the preconditions and sends the only `initialize` message. Only that one sends `self new`; the others supply defaults and delegate to it, so an object can not be created invalid through any of them. Follows [valid-objects] and [complete-objects]
- [subclass-for-knowledge-not-implementation] Subclassing should be based on how knowledge is organized, not on sharing implementation. If a subclass `is not` a superclass, then it should not subclass it, even when they share instance variables or methods. For example `MCPMethodTool` is not a `MCPClassTool` although both know a class: knowing a class is something a method tool needs to find its method, not something it is. Repeating the shared instance variable or method in both classes is preferable to an inheritance that lies
- [self-class-over-explicit-class-reference] Inside a class's own methods, do not reference the class by name. Use `self class` in instance methods and `self` in class side methods so subclasses resolve to the right class. Reference the class by name only when you mean that exact class regardless of subclass

## Source code format
- [keyword-message-send-format] When a keyword message is sent and the text size is grather than 80 characters, it should be written with the receiver in the first line and then one tabbed line per keyword with its parameter. For example: 
```
client 
		callTool: 'smalltalk_define_class' 
		with: (self arguments: 'definition' being: 'Smalltalk at: #MCPTestSideEffect put: 42')
```
- [avoid-comments] Do not comment the source code, it should be declarative enough. Only write comments when there is a trick or a unexpected dependency or something different to understand
- [instance-creation-format] Instance creation messages should have the following format:
```
keyword1: p1 keyword2: p2 ...

---
instance creation assertions. For example:
self assertIsValidBalance: aBalance.
---

^self new initializeKeyword1: p1 keyword2: p2 ...
```

## Boolean
- [and-or-take-blocks] Messages `and:` and `or:` should receive a block as a parameter
- [ifTrue-ifFalse] Prefer `ifTrue:ifFalse:` over `ifFalse:ifTrue:`
- [and-or-over-&&-||] Use `and:` and `or:` messages over `&&` and `||` because the former do short circuit
- [redundant-ifTrue-condition] Do not use `object = true ifTrue:` but `object ifTrue:` unless object can be `nil` in witch case apply the `[avoid-nil]`rule
- [prefer-equal-over-identity] Use `=` over `==` to compare for equality unless we really want to know it is exactly the same object
- [ifEmpty-over-isEmpty-ifTrue] Prefer `ifEmpty:` over `isEmpty ifTrue:`
- [isNil-over-equal-nil] Prefer `isNil` over `= nil ifTrue`. The same for `notNil` over `= nil ifFalse:` or `~= nil ifTrue:`
- [ifNil-over-isNil-ifTrue] Prefer `ifNil:` over `isNil ifTrue:`. The same for `ifNil:ifNotNil:` over `isNil ifTrue: ifFalse:`.

## Collection
- [isEmpty-over-size-equal-zero] Prefer `isEmpty` over `size = 0`

## Aconcagua
- [do-not-use-amount] In a measurement, do not break encapsulation sending `amount message` but send `message` directly to the measurement. For example, prefer `aMeasurement strictlyPositive` over `aMeasurement amount strictlyPositive`

## Chalten

## Syntax
- [no-extra-parenthesis] Avoid unnecessary parenthesis, use the message precedence rules to avoid them as much as possible.


