# Adventure Games!

## FooArts

FooArts is a company specialised in *point-and-click* graphic adventure games, in the best style of **Monkey Island** and **Day of The Tentacle**.

They are starting to develop a new graphic adventure *engine* based on the code of one of their games, and they tell us that they see it as a good opportunity to polish its design.

## Hilariously Witty Engine

They tell us that, so far, the new engine, called **HWEngine**, has the following entities:

### C1

A `C1` object represents the protagonist's backpack (mochila), and is used to store the portable items he finds along the way. A `v6` has a **maximum weight** and a **maximum amount of** `game points` (puntos de juego).

### C3

A `C3` object represents any character controlled by the player. The character carries a `v6` and is known by its `v5`.

### C4

Root class of the hierarchy used to model the elements found in a scene. It has the following subclasses:

#### C6

The doors in a scene are instances of the class `C6`. A door can be in one of **3 states**:

- `s1` (abierta)
- `s2` (cerrada)
- `s3` (cerrada con llave — locked with a key)

#### C8

Abstract class that represents the portable elements, that is, the elements the protagonist can keep adding to his `v6`. It is divided into:

- `C9`, which models the portable elements that do not add `game points`.
- `C10`, which models the portable elements that do add `game points`.

## Work to do:

1. Remove the repeated code in the methods of the `accessing` category of `C1`. **(3pts)**
2. Remove the repeated code in the method of the `adding` category of `C1`. Moreover, **the resulting implementation must not have `ifs`** when they can be replaced by polymorphism. **(3pts)**
3. Improve the design of `C6`. **Hint:** produce a design where the use of `ifs` is not necessary in the implementation of the methods of the `playable character reactions` category. Note the existence of a class called `C2` that can serve as a starting point. **(4pts)**

## Extras:

1. Remove the repeated code of `test07` and `test08` of `C1` (without changing the assertions). **(1pt)**
2. Remove the repeated code of `test09` and `test10` of `C1` (without changing the assertions). **(1pt)**


**IMPORTANT:**

1. Do not modify the tests `test01` through `test06` and `test11` through `test15` of `C1`.
2. Do not modify the tests of `C6`.
3. All tests must keep passing.
