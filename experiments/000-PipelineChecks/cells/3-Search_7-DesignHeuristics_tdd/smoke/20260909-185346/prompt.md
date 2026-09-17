Implement a bounded stack.

- `push:` adds an object on top of the stack.
- `pop` removes the object on top and answers it.
- `top` answers the object on top without removing it.
- `isEmpty` and `size` say what you expect.
- A stack is created with a capacity, a positive integer. Pushing on a full stack fails with
  the error message `stack is full`.
- `pop` and `top` on an empty stack fail with the error message `stack is empty`.
- Creating a stack with a capacity that is not a positive integer fails with the error message
  `capacity must be a positive integer`.

Write tests for every behavior described.

Work test-first, one test at a time: write one failing test, run it and see it fail, write the
minimum code that makes it pass, run all the tests, refactor while they stay green, and only
then continue with the next test. Do not write production code without a failing test that
asks for it.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category 'BoundedStack' and the tests in the system category 'BoundedStack-Tests'.
