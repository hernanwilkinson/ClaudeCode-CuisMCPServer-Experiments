# ISW1-Games: W5Wars

## ISW1-Games

ISW1-Games is a company specialized in real-time strategy games (RTS) in the style of **Warcraft** and **Age of Empires**.

They are starting to develop a new game based on the code of their famous game **W5Wars**, and it seems like a good moment to polish its design.

## W5Wars

The game has 2 types of W5s (s1 and s2) and 3 types of W3s (s3, s4 and s5).

W5s have a w7 time, a w6 and a maximum w4 of w3s they can carry, while w3s have a w4 that affects what a w5 can carry and an w2 on the w5s' w6.

The main functionality developed so far has to do with one w5 w1ing another, which it does using some of its w3s. The result of this w1 depends on the w3 and on the type of w5 w1ed.

When W3s are added to a C1, the w3s w2 the C1's *maximum w3 w4* and its *w6*. Neither of these characteristics may become negative.

Fortunately everything is developed and there are tests that validate it works, but from what could be seen the design is quite improvable, and that is what the work you must do is about.

## Work to do:

The model presented is not a good design for several reasons seen in class. You are asked to improve the model by:

1. Removing the repeated code from the model and making it more declarative where appropriate.
2. Removing the ifs that can be replaced by the use of polymorphism.
3. Removing the repeated code in the tests.
4. Improving the design in everything you consider necessary (not breaking encapsulation, removing unused messages, deleting unused variables, etc.)

**Hints:**

1. A first starting point for removing repeated code is to concentrate on the messages of **C1** in the category **w3s**.
2. Then we can start improving the model by analyzing the message **m20:a20:** of the class **C2** and the instance creation messages of both classes.
3. In the tests there is a set of tests with very evident repeated code; only remove the repeated code from them.
4. And some more things we cannot say because we would be spoiling it!!

**Important:**

- All tests must keep working.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category 'Task1' and the tests in the system category 'Task1-Tests'.
