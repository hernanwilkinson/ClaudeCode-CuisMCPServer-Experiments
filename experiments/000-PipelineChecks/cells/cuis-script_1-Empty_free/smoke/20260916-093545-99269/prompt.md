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

Work in the Cuis Smalltalk image this directory gives you access to; it is the only place your work is read from, and there is no interactive access to it. You work by writing Smalltalk scripts to files and running each one with `./cuis.sh <file.st>`: the script is evaluated in the image as an expression (declare temporaries first, if any) and the printString of its value is printed. If anything in a script fails, ERROR: and the error are printed, the command exits with status 1 and the image is left exactly as it was, so nothing the failing script did is kept; when a script ends normally the image is saved and everything it defined stays for the next one. Define classes with `Object subclass: #Name instanceVariableNames: '...' classVariableNames: '' poolDictionaries: '' category: 'BoundedStack'` and methods with `Name compile: 'source' classified: 'category'` (a class side with `Name class compile:...`). Define the classes in the system category 'BoundedStack' and the tests in the system category 'BoundedStack-Tests'. `./cuis.sh run-tests.st` runs every test of those categories and prints the counts and the failures. Print anything else you need with `StdIOWriteStream stdout nextPutAll: ...; newLine`. Do not touch the image files themselves.
