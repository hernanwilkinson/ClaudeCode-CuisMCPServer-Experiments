# Practical Part: Monsters and Adventurers

At ISW-Games a new game called Monsters and Adventurers (Monstruos y Aventureros) is being developed.

In this first iteration of the game we must model only a small part of it: the confrontations between the monsters and the adventurers.

## Types of Adventurers (Important: more are expected in the immediate future)

The following types of adventurers are available:

**Warrior (Guerrero)**
- Strength: 4
- Hit Points (Puntos de Vida, PV): 10

**Mage (Mago)**
- Strength: 2
- Hit Points: 15

Our adventurers will be equipped with items that they can use to confront the monsters.

## Types of items (Important: more are expected in the immediate future)

Equipping an adventurer with an attack item that does not correspond to its type means a penalty at the moment of using it.

### Attack Items

**Sword (Espada) (warrior)**

Swords in this game have a specific behavior: they have a target monster which is the only one they can damage (even if a monster of the same type is being attacked, if it is not exactly the target monster it has no effect). The damage of swords equals the adventurer's strength. Swords, however, can never target monsters shorter than 1 meter.

Penalty: If the adventurer is not a warrior, it loses all its hit points instantly at the moment of using it (defense items do not apply to defend it in this case).

**Staff (Báculo) (mage)**

Magic staffs defeat goblins with a single blow, removing all their hit points. They damage the other monsters by the equivalent of the adventurer's strength.

Penalty: If the adventurer is not a mage, staffs do not damage goblins and instead double their HP when they are attacked. It works normally on other types of monsters (that is, it damages them by the equivalent of the adventurer's strength).

### Defense Items

**Armor (Armadura) (warrior)**

Armors protect 5 hit points.

**Magic Shield (Escudo Mágico) (mage)**

Magic shields protect 3 hit points.

There are no penalties for equipping defense items of types different from the adventurer's. Adventurers can use their benefits regardless of their type.

## Types of Monsters (Important: more are expected in the immediate future)

Below are the different types of Monsters with their heights and initial hit points:

**Goblin**
- Height: 90 cm
- HP: 5

**Ogre (Ogro)**
- Height: 220 cm
- HP: 15

## Attacks

### Adventurer attacks Monster

The adventurer can only use the items it was equipped with, that is, at the moment of the attack it must be told which monster and with which item. The damage applied to the monster is given by what is described for each of the items.

### Monster attacks Adventurer

The monster attacks with its HP at the moment of the attack. The adventurer defends itself with its defense items. Then, the difference `max(0, HP of the monster - total HP of the defense items)` is subtracted from the adventurer's HP.

## Frequently Asked Questions

- Can an adventurer have more than one item of the same type? Yes, for example a Warrior adventurer can be equipped with two swords.
- If an adventurer carries more than one item of the same type, are the damage points added up? No, the adventurer can only attack a monster with a single item at a time (and one that belongs to its inventory).
- Must we model the dynamics of turns or some attack automatism/intelligence? No. An example of use of the model:

```smalltalk
unAventurero agregarItem: unaEspadaDelAugurio
unAventurero atacarA: unFeoOgroBravucón con: unaEspadaDelAugurio
```

- Does the balance of the game matter? No.

## Work to be done

Follow the tests to model the different elements of the game.

- Modelling of adventurers and monsters.
- Modelling of attack and defense items and how adventurers equip them.
- Modelling of the attack of a monster on an adventurer (taking into account the adventurer's different defense items).
- Modelling of the attack of an adventurer on a monster (taking into account the different attack items and their penalties).


The tests cannot be modified, but they have creation messages that are waiting for their implementation.

## Optional bonus! (it adds points, but does not subtract if not done)

- Model the following restriction writing at least one test: When an adventurer (or monster) reaches 0 HP it must be considered defeated. Then, a defeated adventurer (or monster) should not be able to attack.
