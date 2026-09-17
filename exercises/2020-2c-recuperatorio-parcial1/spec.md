# Adventure Games III (make-up of the first midterm)

## ISEngine

The previous iteration went very well and now they are asking to extend the functionality of the game to support a new kind of `StageObject` that represents "holes" (agujeros — `Hole`). We implemented it as a prototype in the last iteration using repeated code and `ifs` instead of polymorphism, but in this iteration we can pay off that technical debt we created.

We must therefore:

1. Remove the repeated code from the tests of `HoleTest`
2. Remove the repeated code from `Hole>>#from: anOrigin to: aCorner in: aRoom movingTo: aTargetPosition`
3. Remove the `ifs` and repeated code from `Room>>#moveFrom: aSourcePosition to: aTargetPosition`
4. Remove the `ifs` from `PlayableCharacter>>#jump`
5. Remove the `ifs` from `NonPortableObject class>>#assertCanContain: aCollectionOfStageObjects`
