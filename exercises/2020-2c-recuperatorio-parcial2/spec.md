# Adventure Games III (make-up of the second midterm)

## ISEngine

The previous iteration went very well and now they are asking to extend the functionality of the game to support multiple rooms (`Room`) and the possibility of passing between them.

Our task is to model all the changes proposed below, extending the model provided.

## Multiple Rooms

From now on the game must support more than one room (`Room`) and the player (`PlayableCharacter`) must be able to move between them. To do so, the `PlayableCharacter` will be able to use a door (`Door`), which is a new kind of `StageObject`.

A door, therefore, must know the position of each room it is in. It must only allow moving between two different rooms. For example, a door can allow passing from position (1,3) in room 1 to position (2,4) in room 2. Positions (1,3) and (2,4) must be occupied by the door in the corresponding rooms. The door is used to pass from one room to the other indistinctly, that is, it is bi-directional.

A door cannot overlap another `StageObject` and doors cannot be taken (`take`) nor put inside a `NonPortableObject`. Trying to do so should raise an error.

## Using the door

To use a door, the player must move to the position where it is, and if it is open he will pass to the other room. If it is closed he cannot pass to the other room until he opens it.

The position at which the player appears in the destination room must be the same one he would reach by doing `moveForward` from the position where the door is in that room. For example, say the player is at position (0,0) pointing North and there is a door at position (0,1) of that room that leads to position (4,2) of the other one. When the player moves forward he will pass to position (4,3) of the other room, that is, the position reached going North out of (4,2).

A door can only be opened with the key (`key`) with which it was closed, and the player must have it in his `backpack` to be able to do so. The key is not lost when opening the door; it always stays in the `backpack`.

A key is a `PortableObject` and therefore it must be possible to take it in order to use it later.

To open a door, the player must be pointing at it, in the same way as when he takes an element. The same happens when closing the door with the key. Take into account that it does not matter from which room the door is closed: doing so prevents using the door from any room unless it is opened with the corresponding key.
