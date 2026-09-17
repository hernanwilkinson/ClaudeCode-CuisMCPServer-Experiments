# Adventure Games!

## FooArts

FooArts is a company specialised in *point-and-click* graphic adventure games, in the best style of **Monkey Island** and **Day of The Tentacle**.

They are starting to develop a new graphic adventure *engine* based on the code of one of their games, and they tell us that they see it as a good opportunity to polish its design.

## Hilariously Witty Engine

They tell us that, so far, the new engine, called **HWEngine**, has the following entities:

### Backpack

A `Backpack` object represents the protagonist's backpack (mochila), and is used to store the portable items he finds along the way. A `backpack` has a **maximum weight** and a **maximum amount of** `game points` (puntos de juego).

### PlayableCharacter

A `PlayableCharacter` object represents any character controlled by the player. The character carries a `backpack` and is known by its `name`.

### StageObject

Root class of the hierarchy used to model the elements found in a scene. It has the following subclasses:

#### Door

The doors in a scene are instances of the class `Door`. A door can be in one of **3 states**:

- `Opened` (abierta)
- `Closed` (cerrada)
- `KeyClosed` (cerrada con llave — locked with a key)

#### PortableObject

Abstract class that represents the portable elements, that is, the elements the protagonist can keep adding to his `backpack`. It is divided into:

- `NoPointsPortableObject`, which models the portable elements that do not add `game points`.
- `PointsPortableObject`, which models the portable elements that do add `game points`.

## Work to do:

1. Remove the repeated code in the methods of the `accessing` category of `Backpack`. **(3pts)**
2. Remove the repeated code in the method of the `adding` category of `Backpack`. Moreover, **the resulting implementation must not have `ifs`** when they can be replaced by polymorphism. **(3pts)**
3. Improve the design of `Door`. **Hint:** produce a design where the use of `ifs` is not necessary in the implementation of the methods of the `playable character reactions` category. Note the existence of a class called `DoorState` that can serve as a starting point. **(4pts)**

## Extras:

1. Remove the repeated code of `test07` and `test08` of `Backpack` (without changing the assertions). **(1pt)**
2. Remove the repeated code of `test09` and `test10` of `Backpack` (without changing the assertions). **(1pt)**


**IMPORTANT:**

1. Do not modify the tests `test01` through `test06` and `test11` through `test15` of `Backpack`.
2. Do not modify the tests of `Door`.
3. All tests must keep passing.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category 'ISW1-2020-2C-Parcial-Enunciado' and the tests in the system category 'ISW1-2020-2C-Parcial-Enunciado-Tests'.
