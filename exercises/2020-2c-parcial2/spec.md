# Adventure Games II

## ISEngine

Continuing with the development of our graphic adventure engine, we have new requirements coming from the game another team is developing.

Our task is to model all the changes proposed below, extending the model provided.

## Room

In a graphic adventure game the `PlayableCharacter` must move inside a `Room` (habitación). The room has NxM cells, with N and M integers greater than or equal to 1.

In the cells of a room there can be `StageObjects`. These can be `PortableObject`s, which can be picked up by the `PlayableCharacter` (who stores them in his `backpack`, so they are no longer in the room), and `NoPortableObject`s, which cannot be picked up, but whose content can, as explained further on.

The `PlayableCharacter` moves like the MarsRover, but only inside the room and onto unoccupied positions. Luckily we were able to port what we already had done and it works perfectly, but it has to be adapted so that it works inside the room. The initial location and direction are not relevant, although they must be valid for the room in which it is created.

It is important to note that a position can only be occupied by one element (e.g. the `PlayableCharacter` cannot "step on" a `StageObject`, and a `PortableObject` cannot step on a `NoPortableObject`).

**Important:** the cell at the bottom left is taken as coordinate (0, 0).

## Rooms and StageObjects

In each position we can find portable `StageObjects` (e.g. a key) and non-portable ones (e.g. a table or a door), as indicated previously.

A position can only be occupied by one `StageObject`, although it must be taken into account that non-portable objects can contain other portable and non-portable objects. For example, a wardrobe can contain a drawer (both `NoPortableObject`) and inside the latter there are a key and a piece of paper.

- Valid examples
  - at position (1, 3) there is a key (`PortableObject`)
  - at position (2, 3) there is a drawer (`NoPortableObject`) with a tool (`PortableObject`)
  - at position (3, 1) there is a wardrobe (`NoPortableObject`) with a scarf (`PortableObject`), a notebook (`PortableObject`) and two drawers (`NoPortableObject`), each drawer has a key (`PortableObject`)
- Invalid examples
  - At position (2, 3) there are a scarf (`PortableObject`) and a key (`PortableObject`)
  - At position (2, 3) there are a scarf (`PortableObject`) and a wardrobe (`NoPortableObject`). This case is invalid because the wardrobe is not containing the scarf.

## Taking StageObjects

As mentioned before, the `PlayableCharacter` can grab `PortableObject`s that are in the room. For this they must be in the position adjacent to where the `PlayableCharacter` is pointing. After grabbing the object (action `take`), it becomes part of the elements in the `backpack` and is no longer in the room.

For example, if the `PlayableCharacter` is at position (0, 0) pointing North and at position (0, 1) there is a scarf, the `PlayableCharacter` must grab the scarf if it is sent the message `take`. It cannot grab a key that is at position (1, 0), that is, to its right (to the East), since it is pointing North.

The `PlayableCharacter` can also grab (action `take`) the `PortableObject`s contained in a `NoPortableObject`. For example, if there is a wardrobe (`NoPortableObject`) with a scarf (`PortableObject`), a notebook (`PortableObject`) and two drawers (`NoPortableObject`) and each drawer has a key (`PortableObject`), when the `PlayableCharacter` takes the content of the wardrobe a scarf, a notebook and two keys will be added to his `backpack`, as long as the `backpack` has room. All the elements that could be added must always remain in the `backpack`.

Take into account that the `PortableObject`s that could be put into the `backpack` must be removed from the `NoPortableObject` that contained them, but not the `NoPortableObject`s: they must stay in the same place.

For now we are not going to worry about whether a `PortableObject` is in more than one `NoPortableObject`. We are going to assume that `NoPortableObject`s are always created correctly.
