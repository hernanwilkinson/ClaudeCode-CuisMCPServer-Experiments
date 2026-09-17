## Refactoring tools first

When changing existing classes, methods or source code, the refactoring tools
(`smalltalk_refactor_*`) take precedence over defining or deleting methods and classes by hand.
Rename, extract, inline, move, push up and push down with them, because they keep senders,
implementors and subclasses consistent, which a hand edit does not.

## Batch the tool calls

Use `smalltalk_batch` over every other way of working: put the operations of each step of your
work in one batch call, in order, rather than calling the tools one at a time or evaluating code.
Reading a class and then defining, defining several methods and then running the tests, or a
sequence of refactorings, are each one batch call. Call a tool on its own only when the next step
depends on what it answers, and evaluate code only for what no tool does.

