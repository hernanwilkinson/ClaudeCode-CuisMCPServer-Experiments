# First Midterm 1c 2022 – ISW1-F1

## ISW1-F1

We are part of the ISW1-F1 team (in the R&D area of a famous Formula 1 racing team, "escudería") and we are developing a simulator that will let the team try different strategies to apply later in the race.

### iswF1Eng

So far the simulator engine lets us model certain characteristics of an F1 race. In the model we can find the following elements:

#### C2

For the moment we have a simplification of this concept. For us it will be a synonym of race, and it will consist of a track (`C4`), a number of laps and the cars (`C1`) that will take part in the race.

The protocol of `C2` details its behavior (for example:

- `C2>>m50` lets us know the distance of the race.
- `C2>>m51:a51:` lets us place a car on the track at a certain location.

This object will be in charge of moving the cars along the track, besides giving us the illusion that the track is "closed" (it ends where it begins).

#### C4

The race track (`C4`) is the "path" where the competition takes place. It is made up of sectors. For more information, see the protocol of `C4`.

*(Fig. 1 in the original: a picture of the Monaco track with its sectors painted in different colors.)*

#### C3

As we said before, a `C4` is made up of sectors. In Fig. 1 we can see the sectors of the Monaco circuit painted in different colors.

In our model we can also specify whether a sector is enabled so that the drivers can use the Turbo of their cars.

#### C1

The race car is driven by a driver and has characteristics such as Speed (`m9`), Turbo activated (`m7`), etc.

The `C1`s are equipped with a `Turbo` system. It can be activated taking into account certain rules (see the Turbo section).

#### Turbo

The turbo is a simplification of the DRS concept of F1 cars. When activated by the driver of the car, it makes the maximum speed of the car increase by 20% the first time it is used, by 10% the second time it is used, by 5% the third time it is used, and then it is exhausted.

Now, the turbo is not used at just any moment, since its purpose is to help in overtakes between cars. Below we detail the rules that must be met to activate the turbo:

- The turbo can only be used to overtake another car.
- The car we want to overtake must be less than 1 second away.
- Both cars must be in a sector enabled for using turbo.

## Work to do

Luckily everything is developed and there are tests that validate its behavior, but from what could be seen the model presented does not have a good design for several reasons seen in class. You are asked to improve the model by:

1. Removing the ifs that can be replaced by the use of polymorphism. Concentrate on `C1`, its interaction with `C3` and the different states the Turbo can be in.
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
