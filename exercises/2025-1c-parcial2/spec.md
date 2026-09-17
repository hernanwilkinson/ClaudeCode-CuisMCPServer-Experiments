# Second Midterm – Practical Part: Painter (Pintor)

A system has to be developed to "paint screens" of applications, which is why the system is called Painter (Pintor). The screens to be designed can be of different technologies: windows of desktop applications (also known as 'windows'), web pages or windows of mobile applications, so at this stage only the model of the tool is requested, that is, the non-visual part that implements the functionality beyond the graphical presentation and that will later be used by the different presentation technologies.

The objective of the system is that the painter (pintor) paints and manipulates paintings (pinturas) that it will place on a wall (pared). The position 0@0 is the top-left part of the wall, and it has an extent on its x and y axes that must always be positive. There cannot be paintings outside the wall.

A wall can outlive the painter. That is, a wall can be used by one painter at one moment, then it can be used by another painter, etc. In each case the paintings will be kept since they are on the wall. The case of more than one painter painting on the same wall simultaneously does not have to be taken into account.

Regarding the paintings, for now the only thing we care about is their position x@y on the wall and their extent to the right and downwards on the x and y axes. Therefore, a painting at position 10@5 with extent 3@2 has its bottom-right corner at position 13@7.

In this version the painter is expected to be able to perform the following actions:

- Add a painting at a position of the wall being painted, and with a certain extent. The painting must fit completely inside the wall. There cannot be more than one painting with the same origin and extent.
  (It is not necessary to have a message to delete paintings)
- Be able to select a painting of the wall and be able to add a painting to a selection already made. This implies that there can be several paintings selected. A painting that is already selected cannot be selected again.
  (It is not necessary to have a message to de-select a painting)
- Be able to align the selected paintings to the left or to the right. This is valid only when there is more than one painting selected.
  - To align to the left, the painting whose x position is the smallest is taken and all the paintings are moved to that x.
    For example, given the selected paintings `{ 0@0 extent: 5@5. 5@3 extent: 10@10 }`, after aligning to the left they must end up like this: `{ 0@0 extent: 5@5. 0@3 extent: 10@10 }`
    (`unOrigen extent: unaExtensión` creates a rectangle at position `unOrigen` with extent `unaExtensión`)
  - To align to the right, the painting whose x position + width is the largest is taken, and all the paintings are moved so that their x position + width is that one.
    For example, given the selected paintings `{ 0@0 extent: 5@5. 5@3 extent: 10@10 }`, after aligning to the right they must end up like this: `{ 10@0 extent: 5@5. 5@3 extent: 10@10 }`
  - The case where two paintings end up equal (same origin and extent) after an alignment does not have to be taken into account; that does not have to be contemplated in this version of the system.

The painter must keep a history of the actions performed in order to undo them and redo them again, that is, it must be able to do undo and redo of the actions. The history of actions to undo and redo belongs to the painter, not to the wall, since it is the painter who paints, and it must always remain consistent: invalid things must not be allowed. For example:

- An action cannot be undone (undo) if no action was done
- An action cannot be redone (redo) if one was not undone (undo) before
- When an action is performed, the actions to redo must be discarded, because otherwise a tree of actions to redo could be generated and we only want to keep a list.
- etc.

## Tips

- Analyze the protocol of the classes Point and Rectangle before tackling any design!
- The paintings can be mutable

## Work to do

Implement the requested functionality in the class category 2025-1C-Parcial-2.
