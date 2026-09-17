# ISW1 - We Got Our Hopes Up Again! (Penalty Shoot-out)

After winning the title in Qatar, World Cup fever is not letting up, and so we are asked to design a first version of a football game to commemorate the almost-anniversary of that historic and electrifying final. And in its honour, for now it will only be about **penalties** (penales).

The game designer explains to us that the basic rules of a penalty kick are very simple:

> "... When the referee blows the whistle for the penalty, the striker (delantero) kicks the ball towards the goal in a certain direction (a 3x3 grid, where 0@0 is bottom-left, 1@1 is centre-middle and 2@2 is top-right, together with all the other valid combinations) and the goalkeeper (arquero) tries to save it by diving in some direction too. If the directions do not match (e.g. the ball goes to 2@0 and the keeper stayed in the boring centre 1@1) it is a goal. If instead the coordinates are equal, it will depend on whether the keeper's strength is greater than or equal to the striker's. If it is, the penalty is saved..."

Up to here, we thought, everything is wonderful, *this will be finished faster than passing the tests of the Stack exercise with ifs...* But right away they add:

> "... Still, now that I think about it better, maybe that basic case will almost never happen, because the truth is that depending on the way the striker kicks, the ball being used, and how the keeper dives, things can get a little bit more complicated, just to make it fun..."

We did not find it that funny, but we kept listening to the clarification:

> "... For example, in principle strikers could kick penalties in 2 ways, **"placed"** ("a colocar") or **"blasted"** ("a matar"). If he shoots "placed" the player will only have 50% of his base strength available, while the one who shoots "blasted" will have all his strength available. However, shooting "placed" guarantees that the ball always goes where the striker wants, whereas the "blasted" shot may sometimes not reach the intended trajectory, since not all of us are Messi... ah, of course, and it also depends on the ball being used: it is not the same to kick with the **Jabulani** of the South Africa 2010 World Cup, which was super fast and adds strength to the striker if he uses it to "blast", as with the **beach ball** ("playera") we used the last time we went to Costa Azul, which always flew off and barely reached the goal..."

- "Wait... you're going too fast... give me a France to think it over a bit...", we said.

However, the designer went on, unmoved like a fixture date, ignoring our perplexity at so much endless verbiage:

> "... The result will obviously also depend on how the keeper dives. If he decides to choose a direction before the striker kicks, and chooses well, he will for example have benefits in his strength, since he will get there comfortably. If instead he waits for the shot to dive, and they happened to blast it at him with the Jabulani, he surely has no chance to react and it will be a goal. Besides, these same keepers who wait for the shot instead of choosing a direction beforehand are a bit of cheaters and step forward off the goal line to get extra benefits and compensate for diving late. When they get a "blasted" shot it works out fine because the balls come out shooting fast, but with a "placed" shot, and on top of that with the beach ball, which takes time to reach the goal, he is exposed, the VAR detects it and it is a point for the striker..."

> "Anyway, don't worry, **for now** I only need you to model a penalty round of a single shot and those two kinds of balls. On top of that I already wrote the tests for you with all the cases explained in detail... and even a sketch of the main method... Get to it and look at everything... the thing is, I need it running before 21:50, because we have to show it to the investors... Ah, and in Smalltalk, no Unity..."

## Work to Do

You must open the test file the designer left you and build a model that passes them (or at least all the ones you can!).

### Recommendations:

1. **Pass the tests** as soon as possible with a simple operational model using ifs. To do so you can follow the sketch that the game designer left you in the method `#arbitroPitaConPelota:delanteroRemataAlArcoConDireccion:arqueroSeLanzaEnDirección:` of the class `Penales` and keep completing that method test by test to pass them.
2. Then replace the ifs by polymorphism in the cases you consider necessary. Do not forget to keep in mind the responsibilities and essence of the resulting objects.
3. Remove the repeated code you have left, and improve the declarativeness of your methods. Remember that you have an environment with very useful **automated refactorings** for this step, such as *rename* or *extract method*.

### Clarifications:

- **The designer's tests cannot be modified.** Hence, you do not need to remove repeated code from them. The work to do is in the model, not in the tests.
- Keep the Spanish that was chosen to write the tests.

### Hints:

- The tests make use of **Points** to describe coordinates for the direction of both the shot and the keeper. A Point can be created by doing: `coordenada := 0@3`. Then the message `x` can be sent to the coordinate to get the horizontal coordinate (0) or the message `y` for the vertical one (3). It is not necessary to model that coordinates are integers because the tests do not cover it.
- Consider using the message **between** to save yourself conditions. E.g. `(5 between: 3 and: 12)` returns true, and `(-1@1 between: 0@0 and: 2@2)` returns false.
