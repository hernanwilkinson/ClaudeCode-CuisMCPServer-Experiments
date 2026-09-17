# Stack without ifs

## Statement

Implement a stack (LIFO collection) called `Stack` so that the tests given in `StackTest` pass, and design it so that the empty / not-empty decision is not taken with an `if`.

The behaviour required by the tests is:

1. A new `Stack` is empty (`isEmpty`).
2. `push:` adds an element to the stack; after a push the stack is not empty.
3. `pop` removes the last pushed element; after pushing one element and popping it, the stack is empty again.
4. `pop` returns the last pushed element.
5. The stack behaves LIFO: after pushing `'First'` and then `'Second'`, the first `pop` returns `'Second'`, the second `pop` returns `'First'`, and the stack is then empty.
6. `top` returns the last pushed element.
7. `top` does not remove the element: after one push and one `top`, `size` is 1.
8. Sending `pop` to an empty stack raises an `Error` whose `messageText` is `Stack stackEmptyErrorDescription` (the string `'Stack is empty'`, already given as a class-side method).
9. Sending `pop` to a stack after popping its last element raises the same error.
10. Sending `top` to an empty stack raises the same error.

The first implementation you will naturally write needs a conditional such as `self isEmpty ifTrue: [ self error: ... ]` in `top` (and therefore in `pop`). The exercise is to make the tests pass first and then remove that `if`:

1. Create a polymorphic hierarchy with one abstraction per "condition" (here: the stack being empty and the stack not being empty).
2. Distribute the "body of the if" among those abstractions using the same message name (use polymorphism).
3. Name the message of the previous step.
4. Name the abstractions.
5. Replace the `if` by a polymorphic message send.
6. Look up the polymorphic object if necessary.

Two lines of solution are provided as reference, each with an intermediate step (tests green, `if`/`nil` check still present) and a final step (no conditional):

- "with States": the stack keeps an `OrderedCollection` and asks a `StackState` object (`EmptyStackState` / `NotEmptyStackState`, chosen with `canHandle:`) for `topFor:`, which calls back `topWhenEmpty` / `topWhenNotEmpty` on the stack.
- "with Recursion": the stack keeps only its `top` element; elements are a linked chain of `PushedObject` (element + previous), and the bottom of the chain is a `StackBase` null object that answers `isEmpty`, `size` 0 and raises the error on `element`.

## What the given code contains

`Stack-Exercise.st` (category `Stack-Exercise`) defines:

- `StackTest`, a `TestCase` with the 10 tests listed above (`test01NewStacksMustBeEmpty` through `test10CannotTopFromAnEmptyStack`) and a factory method `emptyStack` that answers `Stack new`. The error tests use `should:raise:withExceptionDo:` and compare `anError messageText` with `Stack stackEmptyErrorDescription`.
- `Stack`, an `Object` subclass with no instance variables and no instance methods; its only method is the class-side `stackEmptyErrorDescription`, answering `'Stack is empty'`.

With the given code no test passes: even `test01` sends `isEmpty`, which `Stack` does not yet understand. The whole protocol (`isEmpty`, `push:`, `pop`, `top`, `size`) must be written.
