# First Midterm - Practical Part: "Baaajo del maaaar!" (Under the Sea!)

Initial code is provided in the category `2025-2C-1erParcial`.

## The return of the CONICET Submarine Expedition

Scientists at CONICET want to **build the first Argentine marine ROV**, simulating the interactions between an arm of the ROV, specimens observed for capture, and the surrounding environment. For this we have a two-dimensional map that tells us at which position every specimen is located.

To perform a capture, the ROV must be assembled with the position where it is and an arm, knowing which environment we are in.

Each of the arm types generates a grab area (área de agarre) taking the ROV's position as origin and another point as diagonal extension. Below we see an example of a ROV at position 1@1 generating an area with extension 3@3.

```
   0 1 2 3 4 5
0  o o o o o o        Legend:
1  o r x x o o        r = Rover
2  o x x x o o        x = Grab area
3  o x x x o o        e = Slippery specimen (espécimen escurridizo)
4  o o o o e o        p = Lazy specimen (espécimen perezoso)
5  o p o o o o        o = Empty space
```

A **single capture attempt** is made of all the specimens that are within the area, **unless they escape**. A specimen can make a single move to try to escape. The captured ones are deposited in the ROV's biobox. There are no restrictions regarding different specimens sharing the same position on the map.

There are two environments for our simulations:

- **Muddy (Fangoso)**: a highly volatile and soft environment; it allows some specimens to adopt escape strategies.
- **Rocky (Rocoso)**: a clean floor of extremely high hardness that can damage the submarine's tools.

Each arm has different behaviours that condition the capture in the following way:

- The vacuum arm (brazo aspirador) sweeps an area of 3x3 diagonal extension taking the ROV's current position as origin

```
   0 1 2 3 4 5
0  o o o o o o
1  o r x x o o        r = Rover
2  o x x x o o        x = Grab area
3  o x x x o o        o = Empty space
4  o o o o o o
5  o o o o o o
```

  However, on rocky floors the suction power is lower and is reduced by one row.

```
   0 1 2 3 4 5
0  o o o o o o
1  o r x x o o        r = Rover
2  o x x x o o        x = Grab area
3  o o o o o o        o = Empty space
4  o o o o o o
5  o o o o o o
```

- The arm that incorporates a Net (brazo red) performs the capture in a line with an area of 6x1 extension taking the ROV's current position as origin

```
   0 1 2 3 4 5
0  o o o o o o
1  r x x x x x
2  o o o o o o
3  o o o o o o
4  o o o o o o
5  o o o o o o
```

  That extension **is reduced by half** on muddy floors, and if it is used on rocky floor the net breaks and becomes useless, and the net arm can no longer be used again.

  Every time the ROV's arm breaks, the ROV switches to a contingency one. In it, it does not use arms to capture; instead it sinks into the sea floor, opens several special hatches to let samples in and then closes them, capturing specimens of every kind with 100% effectiveness, at the coordinates where it was.

The animals that are captured can be **lazy (perezosos)** or **slippery (escurridizos)**.

- The lazy ones never change their position and always manage to submerge into the mud and avoid being caught, **unless they are within the area of a vacuum arm**, which will absorb them without much difficulty.
- The slippery ones will always make a move to escape from the clutches of the ROV's arm. If the arm is a vacuum and they are on muddy floors, they move one unit along the positive diagonal (1@1). Same arm, but in rocky environments, they only manage to move one position downwards (0@1). When facing a net arm in the mud, they try to move backwards so that the net passes over them, making a move of (-1@0).

## Work to do

You must make the tests pass that describe the whole simulation explained above.

## Clarifications

- The provided tests cannot be modified, nor is it necessary to add new ones. Therefore, you do not need to remove repeated code from them. The work to be done is in the model. However, the test methods associated with the messages that the tests use **do** have to be implemented. You are free to implement them in whatever way seems best to you, and they do not need to use all the parameters they receive. They are designed that way to be as versatile as possible.

## Recommendations

- Take your time to read the statement carefully before starting.
- Remove the repeated code you may have left, and improve the declarativeness of your methods. Remember that you have an environment with very useful automated refactorings for this step, such as rename or extract method.
- Everything counts! Even if you do not finish, the model as far as you got is worth having, to be able to receive feedback on your difficulties.

## Hints

- If you need it, consider using the Rectangle object. It is built with #origin:corner: and has messages such as #containsPoint: or #extendBy: that may be useful to you.
- Take advantage of the flexibility that the abstractions to be implemented, which the tests use, give you to build the model you want.
