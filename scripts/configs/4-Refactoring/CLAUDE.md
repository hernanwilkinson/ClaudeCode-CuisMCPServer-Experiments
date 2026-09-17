## Refactoring tools first

When changing existing classes, methods or source code, the refactoring tools
(`smalltalk_refactor_*`) take precedence over defining or deleting methods and classes by hand.
Rename, extract, inline, move, push up and push down with them, because they keep senders,
implementors and subclasses consistent, which a hand edit does not.
