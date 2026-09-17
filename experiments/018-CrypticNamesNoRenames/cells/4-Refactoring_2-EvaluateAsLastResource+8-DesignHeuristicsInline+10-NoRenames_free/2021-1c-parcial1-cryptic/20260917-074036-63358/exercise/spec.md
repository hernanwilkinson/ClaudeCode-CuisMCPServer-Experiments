# ISW1-Games: RobotWars

## ISW1-Games

ISW1-Games is a company specialized in real-time strategy games (RTS) in the style of **Warcraft** and **Age of Empires**.

They are starting to develop a new game based on the code of their famous game **RobotWars**, and it seems like a good moment to polish its design.

## RobotWars

The game has 2 types of Robots (s1 and s2) and 3 types of Weapons (s3, s4 and s5).

Robots have a life time, a speed and a maximum weight of weapons they can carry, while weapons have a weight that affects what a robot can carry and an impact on the robots' speed.

The main functionality developed so far has to do with one robot attacking another, which it does using some of its weapons. The result of this attack depends on the weapon and on the type of robot attacked.

When Weapons are added to a C1, the weapons impact the C1's *maximum weapon weight* and its *speed*. Neither of these characteristics may become negative.

Fortunately everything is developed and there are tests that validate it works, but from what could be seen the design is quite improvable, and that is what the work you must do is about.

## Work to do:

The model presented is not a good design for several reasons seen in class. You are asked to improve the model by:

1. Removing the repeated code from the model and making it more declarative where appropriate.
2. Removing the ifs that can be replaced by the use of polymorphism.
3. Removing the repeated code in the tests.
4. Improving the design in everything you consider necessary (not breaking encapsulation, removing unused messages, deleting unused variables, etc.)

**Hints:**

1. A first starting point for removing repeated code is to concentrate on the messages of **C1** in the category **weapons**.
2. Then we can start improving the model by analyzing the message **m20:a20:** of the class **C2** and the instance creation messages of both classes.
3. In the tests there is a set of tests with very evident repeated code; only remove the repeated code from them.
4. And some more things we cannot say because we would be spoiling it!!

**Important:**

- All tests must keep working.
