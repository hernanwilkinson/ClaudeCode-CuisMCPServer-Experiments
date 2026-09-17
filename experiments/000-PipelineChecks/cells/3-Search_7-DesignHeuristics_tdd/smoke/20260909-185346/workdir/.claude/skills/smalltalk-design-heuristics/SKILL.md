---
name: smalltalk-design-heuristics
description: Hernán Wilkinson's design heuristics and code layout for writing Smalltalk (Cuis/Squeak/Pharo). Load BEFORE writing or editing any Smalltalk method, class, or test — including scratch code evaluated through an MCP server. Covers testing, naming, object design, boolean/collection idioms, and method formatting.
---

# Smalltalk design heuristics

Source of truth: `/Users/hernan/Documents/Cuis/SmalltalkMentor/smalltalk-mentor-heuristics.md`
(the SmalltalkMentor project — the user renamed "rule" → "heuristic"; never say "rule").
Re-read that file when in doubt; it is the authoritative list and it evolves.

These are not suggestions. Apply them to **every** method I write for this user,
including throwaway/scratch code, test fixtures, and code evaluated over MCP.

## Before writing any method

- `[search-before-implementing]` — before adding behavior, search the image for existing
  behavior with the MCP search tools: `smalltalk_search_selectors` (by name fragment),
  `smalltalk_find_messages_by_example` (by input/output), `smalltalk_implementors_of` /
  `smalltalk_senders_of`, `smalltalk_method_sources_of_class` on the class and its superclasses.
  Look in the class, its hierarchy, the project's extensions, and the base library. If it exists,
  reuse or extend it — never redefine a selector without reading its current source first, and
  never add a second method that does what an existing one does (e.g. `switchLanguage` next to an
  existing `toggleLanguage`, or `occurrencesOfSubstring:` when Cuis already offers one).

## Method layout (apply mechanically)

One empty line between each section. Empty lines are truly empty. Body is tab-indented.

```
messageName: aParameter

	"comment, when the method has one"

	| someLocalVariable |

	code
```

Order: pattern / blank / comment / blank / temps / blank / body.
Omit a section **and its following blank line** when absent.

## Naming

- `[do-not-use-abbreviated-name]` — **never** abbreviate. Not in variables, parameters,
  block arguments, selectors, or class names. `cls`→`classToReview`, `sel`→`selector`,
  `msgs`→`messages`, `src`→`sourceCode`, `idx`→`index`, `ivar`→`instanceVariableName`,
  `cv`→`classVariableName`, `req`→`request`, `resp`→`response`, `ws`→`webServer`.
  This holds even for one-line blocks and temporaries.
- `[variable-name-reveals-role]` — the name says the **role** the object plays, not its type.
- `[parameter-prefix]` — parameters start with `a`/`an` in English (`un`/`una`/`unos`/`unas` in Spanish).
- `[message-keywords-names]` — every keyword of a selector starts lowercase.
- `[message-names]` — the send must read as prose at the call site.
- `[no-set-get]` — no `getFoo`/`setFoo:`. Accessors are `foo` and (if truly needed) `foo:`.
- `[no-class-name-prefix]` — a name is read in the context of its class, so never repeat the
  class name in it: in `MCPToolProperty` it is `name`/`definition`, not
  `propertyName`/`propertyDefinition`. Applies to instance variables too. **Exception:** a
  *class-side* selector that would shadow the `Class`/`Metaclass`/`Object` protocol — `name`,
  `definition`, `category`, `comment`, `className` are all taken — must be prefixed
  (`toolName`, `toolDefinition`). Check the protocol before naming any class-side message.
  Full skill: `smalltalk-no-class-name-prefix`.

## Object design

- `[complete-objects]` — instances are created with every parameter they need; no half-built objects.
- `[valid-objects]` — objects are valid from birth. Validate parameters with **preconditions**
  (assertions) in **class-side** instance-creation messages when needed, each encapsulated in its
  own message, obeying `[no-nil-precondition]` and `[no-type-precondition]`.
- `[one-initialize-message]` — exactly one `initialize…` per class; it does assignments and
  nothing else.
- `[instance-creation-funnel]` — every instance creation message is written on **one** funnel
  that runs the preconditions and sends that initialize. Only the funnel sends `self new`.
  Full skill: `smalltalk-single-initialize`.
- `[instance-creation-format]` —

  ```
  keyword1: aFirstParameter keyword2: aSecondParameter

  	self assertIsValidFirstParameter: aFirstParameter.

  	^self new initializeKeyword1: aFirstParameter keyword2: aSecondParameter
  ```

- `[error-messages-as-class-methods]` — error texts live in class-side methods, never as
  literal strings inline. Tests reference the same class-side message.
- `[prefer-immutable]` — immutable over mutable.
- `[avoid-setters-use-syncWith]` — avoid setters; when state must change wholesale, use
  `syncWith: anotherInstance` copying from an already-valid instance.
- `[getter-returns-copy]` — a getter of a mutable object returns a copy.
- `[avoid-breaking-encapsulation]` — **tell, don't ask**.
- `[avoid-nil]` — designing with `nil` is a smell; prefer null objects / polymorphism.
- `[no-nil-precondition]` — a precondition must **not** test that a parameter is non-nil (follows `[avoid-nil]`).
- `[no-type-precondition]` — a precondition must **not** test a parameter's type.
- `[subclass-for-knowledge-not-implementation]` — subclass to organize knowledge, never to share
  implementation. If a subclass **is not** a superclass, it must not subclass it, however much
  state or behaviour they share: `MCPMethodTool` is not a `MCPClassTool` even though both know a
  class. Repeat the shared instance variable or method in both classes rather than keep an
  inheritance that lies.
- `[replace-if-with-polymorphism]` — replace conditionals with polymorphism where possible.
- `[method-complexity]` — roughly 10 message sends max per method.
- `[method-declarativity]` — methods read declaratively; extract complex expressions into
  messages whose names state the **meaning** of the expression.
- `[move-helper-methods-to-right-class]` — a method that references no `self`, `super`, or any
  instance variable is a helper. **Only when it is general-purpose behavior** does it belong on the
  class of one of its parameters: move it there (as an **extension method** when that class lives
  in another package). A helper that encodes project-specific knowledge (reply shapes, finding
  texts, menu plumbing) stays in the project class that uses it — never extend `String`,
  `JsonObject`, `Morph`, etc. with it. This applies to the helpers you add while writing too.
- `[self-class-over-explicit-class-reference]` — inside a class's own methods, do not hard-code the
  class by name. Use `self class` in instance methods and `self` in class-side methods, so
  subclasses resolve to the right class. Name the class explicitly only when you mean that exact
  class regardless of subclass.

## Source code format

- `[keyword-message-send-format]` — when a keyword message send is longer than ~80 characters,
  put the receiver on the first line, then one tab-indented line per keyword + argument:

  ```
  client
  		callTool: 'smalltalk_define_class'
  		with: (self arguments: 'definition' being: 'Smalltalk at: #Foo put: 42')
  ```

- `[avoid-comments]` — do not comment source; make it declarative enough to read without one.
  Comment only for a genuine trick, an unexpected dependency, or something otherwise hard to
  understand. (This governs the optional comment slot in the method layout above — it is the
  exception, not the norm.)

## Booleans

- `[and-or-take-blocks]` — `and:`/`or:` always receive a **block**.
- `[and-or-over-&&-||]` — use `and:`/`or:` (they short-circuit), not `&`/`|`.
- `[ifTrue-ifFalse]` — prefer `ifTrue:ifFalse:` over `ifFalse:ifTrue:`.
- `[redundant-ifTrue-condition]` — `object ifTrue:`, never `object = true ifTrue:`.
- `[prefer-equal-over-identity]` — `=` unless identity is genuinely the question.
- `[isNil-over-equal-nil]` — `isNil`/`notNil`, never `= nil` / `~= nil`.
- `[ifNil-over-isNil-ifTrue]` — `ifNil:` / `ifNil:ifNotNil:` over `isNil ifTrue:` forms.
- `[ifEmpty-over-isEmpty-ifTrue]` — `ifEmpty:` over `isEmpty ifTrue:`.

## Collections

- `[isEmpty-over-size-equal-zero]` — `isEmpty`, never `size = 0`.

## Syntax

- `[no-extra-parenthesis]` — lean on precedence; no parentheses that add nothing.

## Tests

- `[testing-for-equality]` — `self assert: actual equals: expected`, never `assert: expected = actual`.
  Cuis takes the **actual result first** and the expected value second — the opposite of Squeak.
  `TestCase>>assert:equals:` says so in its own comment, and getting it backwards prints failure
  messages with the two values swapped.
- `[deny-over-assert-not]` — `deny:` instead of `assert: condition not`.
- `[testing-for-exception-without-side-effect]` — `should:raise:withMessageText:`.
- `[testing-for-exception-with-side-effect]` — `should:raise:withExceptionDo:`, with one
  assertion on the exception `messageText` **and** at least one asserting no side effect happened.
- `[exception-block-single-send]` — the block under test holds **only** the failing send.
- `[exception-block-should-not-have-assignment]` — do not assign the result of a failing send,
  and do not assert that variable `isNil`.
- `[one-thing-per-test]` — one thing exercised per test.
- `[test-name-convention]` — the name synthesizes setup + exercise + verification.
- `[testN-prefix-preserved]` — when renaming a test called `testN` (N = digits), the new name
  must **start** with the original `testN`.

## Aconcagua / measurements

- `[do-not-use-amount]` — send the message to the measurement, not to its `amount`
  (`aMeasurement strictlyPositive`, not `aMeasurement amount strictlyPositive`).
