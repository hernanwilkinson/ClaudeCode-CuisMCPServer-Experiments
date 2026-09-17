---
name: smalltalk-single-initialize
description: Hernán Wilkinson's heuristic for Smalltalk instance creation — a class defines exactly ONE initialize message, and every instance creation message funnels into ONE that runs the preconditions and sends it. Load before writing or editing any Smalltalk class-side instance creation message, `initialize…` method, or class with more than one way to be created.
---

# One initialize, one funnel

A class has **exactly one** `initialize…` message, and **exactly one** instance creation
message that sends it. Every other instance creation message is written in terms of that
one — never in terms of `new` and never sending its own `initialize…`.

The funnel is where the preconditions run, so an object cannot be created invalid through
any of the doors. See `[valid-objects]` and `[complete-objects]`.

## Shape

```smalltalk
"class side — THE funnel: preconditions here, and the only sender of the initialize"
named: aName description: aDescription required: aBoolean absentValue: aBlock

	self assertIsValidName: aName.

	^self new initializeNamed: aName description: aDescription required: aBoolean absentValue: aBlock

"class side — every other creation message is written on the funnel"
named: aName description: aDescription

	^self
		named: aName
		description: aDescription
		required: true
		absentValue: [ :aProperty | aProperty signalNotProvided ]

"instance side — THE one initialize: assignments only, no logic, no validation"
initializeNamed: aName description: aDescription required: aBoolean absentValue: aBlock

	name := aName.
	description := aDescription.
	isRequired := aBoolean.
	absentValue := aBlock
```

## Why

- **One place to validate.** Preconditions live in the funnel, so no door skips them.
- **One place to assign.** Adding an instance variable touches one method, not five.
- **The convenience messages document the defaults.** `named:description:` says, in code, that
  a property with no default is required and signals when absent.

## Applying it

- Count the `initialize…` methods in the class. More than one is the smell.
- Count the class-side creation messages that send `self new`. More than one is the smell —
  the others must send a sibling creation message instead.
- The initialize does assignments and nothing else: no conditionals, no validation, no
  derived state that could fail.
- A convenience creation message supplies defaults and delegates; it never repeats the
  assignments.

## Subclasses

A subclass that adds state defines its own single initialize, which sends `super` first and
then assigns only what it added, and its own single creation message:

```smalltalk
initializeNamed: aName description: aDescription required: aBoolean absentValue: anAbsentValueBlock valuedWith: aValueBlock

	self initializeNamed: aName description: aDescription required: aBoolean absentValue: anAbsentValueBlock.
	valueBlock := aValueBlock
```

Still one initialize per class, still one funnel per class.

## Watch out

Renaming an instance variable rebuilds instances by **name**, so a value whose variable was
renamed is silently lost — including objects already held as compile-time (backtick) literals
in compiled methods. Recompile the methods that build them after any such rename, and check
one instance before trusting the suite.
