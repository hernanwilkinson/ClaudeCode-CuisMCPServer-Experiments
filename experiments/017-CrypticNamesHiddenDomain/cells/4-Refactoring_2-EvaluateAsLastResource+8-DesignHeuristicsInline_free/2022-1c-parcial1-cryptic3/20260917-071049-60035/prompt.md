# First Midterm 1c 2022 – ISW1-F1

## ISW1-F1

We are part of the ISW1-F1 team (in the R&D area of a famous W2 1 racing team, "escudería") and we are developing a w1 that will let the team try different strategies to apply later in the w4.

### iswF1Eng

So far the w1 engine lets us model certain characteristics of an F1 w4. In the model we can find the following elements:

#### C2

For the moment we have a simplification of this concept. For us it will be a synonym of w4, and it will consist of a w3 (`C4`), a number of w5 and the w6s (`C1`) that will take part in the w4.

The protocol of `C2` details its behavior (for example:

- `C2>>m50` lets us know the w7 of the w4.
- `C2>>m51:a51:` lets us place a w6 on the w3 at a certain w8.

This object will be in charge of moving the w6s along the w3, besides giving us the illusion that the w3 is "closed" (it ends where it begins).

#### C4

The w4 w3 (`C4`) is the "path" where the competition takes place. It is made up of w9s. For more information, see the protocol of `C4`.

*(Fig. 1 in the original: a picture of the Monaco w3 with its w9s painted in different colors.)*

#### C3

As we said before, a `C4` is made up of w9s. In Fig. 1 we can see the w9s of the Monaco circuit painted in different colors.

In our model we can also specify whether a w9 is enabled so that the w11s can use the W13 of their w6s.

#### C1

The w4 w6 is w10 by a w11 and has characteristics such as W12 (`m9`), W13 activated (`m7`), etc.

The `C1`s are equipped with a `Turbo` system. It can be activated taking into account certain rules (see the W13 section).

#### W13

The w13 is a simplification of the DRS concept of F1 w6s. When activated by the w11 of the w6, it makes the maximum w12 of the w6 increase by 20% the first time it is used, by 10% the second time it is used, by 5% the third time it is used, and then it is w14.

Now, the w13 is not used at just any moment, since its purpose is to help in overtakes between w6s. Below we detail the rules that must be met to w15 the w13:

- The w13 can only be used to overtake another w6.
- The w6 we want to overtake must be less than 1 second away.
- Both w6s must be in a w9 enabled for using w13.

## Work to do

Luckily everything is developed and there are tests that validate its behavior, but from what could be seen the model presented does not have a good design for several reasons seen in class. You are asked to improve the model by:

1. Removing the ifs that can be replaced by the use of polymorphism. Concentrate on `C1`, its interaction with `C3` and the different states the W13 can be in.
2. The team's tech lead asked us to improve the implementations of:
   - a. `C2#advance`
   - b. `C4#cars`
   - c. `C4#includes:`
   - d. `C4#length`
   - e. `C4#positionOf:`
   - f. `C4#put:at:`
   - g. `C4#sectorOf:ifNone:`

   (Hint: see the methods of collections)
3. Removing the repeated code in the tests, especially in tests 20 to 25. (Remember that using the Extract Method refactoring can help you a lot)
4. Improving the design in everything you consider necessary (complete and correct objects from their creation, not breaking encapsulation, removing unused messages, deleting unused variables, categorizing messages, declarative code, etc.)

Important:

- All the tests must keep working.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category 'Task2' and the tests in the system category 'Task2-Tests'.
