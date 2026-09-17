## Writing Smalltalk

- Before writing or editing **any** Smalltalk — methods, classes, tests, fixtures, or scratch
  code evaluated over an MCP server — load and follow the **`smalltalk-design-heuristics`** skill.
  It is mandatory, not advisory. The terms are **heuristics**, never "rules".
- Load **`smalltalk-single-initialize`** before writing any instance creation or `initialize`
  message, and **`smalltalk-no-class-name-prefix`** before naming any method, accessor or
  instance variable.
