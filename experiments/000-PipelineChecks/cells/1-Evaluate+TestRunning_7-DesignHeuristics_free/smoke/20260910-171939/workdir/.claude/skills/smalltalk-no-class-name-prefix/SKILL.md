---
name: smalltalk-no-class-name-prefix
description: Hernán Wilkinson's Smalltalk naming heuristic — message names and instance variable names must NOT repeat the class name as a prefix (`propertyName`/`propertyDefinition` in MCPToolProperty should be `name`/`definition`). Load before naming any Smalltalk method, accessor, or instance variable.
---

# Do not prefix a name with its class

A message name and an instance variable name are already read **in the context of their
class**. Repeating the class name in them says the same thing twice.

| Class | Wrong | Right |
| --- | --- | --- |
| `MCPToolProperty` | `propertyName` | `name` |
| `MCPToolProperty` | `propertyDefinition` | `definition` |
| `MCPToolProperty` | `propertyIsRequired` | `isRequired` |
| `Invoice` | `invoiceTotal` | `total` |
| `Account` | `accountBalance` | `balance` |

The send reads better for it: `aProperty name`, not `aProperty propertyName`;
`anInvoice total`, not `anInvoice invoiceTotal`.

## The one real reason to prefix

A **class-side** name may collide with the `Class`/`Metaclass`/`Object` protocol, and
shadowing that protocol breaks the system rather than the object — `name`, `definition`,
`category`, `comment` and `className` are all taken. There, prefix to disambiguate:
`toolName`, `toolDefinition`, `propertyName` **on the class side only**.

Instance-side names have no such problem for these, because the object is not a class.
`MCPToolProperty>>name` is correct even though `Object>>name` exists; `MCPToolProperty class>>name`
would not be.

So: **check the protocol before prefixing, and prefix only when the check says you must.**

```smalltalk
"before naming any class-side message"
| classSideProtocol |

classSideProtocol := Metaclass withAllSuperclasses , Class withAllSuperclasses.
classSideProtocol anySatisfy: [ :eachClass | eachClass includesSelector: #theNameYouWant ]
```

## Applying it

- Strip the class name from the name and read the send aloud. If it still says what it means,
  the short name is the right one.
- Do not swap one prefix for another (`aProperty propertyName` → `aProperty theName`). Remove
  it: `name`.
- Applies to instance variables identically: `name`, not `propertyName`.
- Related: `[do-not-use-abbreviated-name]`, `[variable-name-reveals-role]`, `[message-names]`.
