# Second Make-up Exam – Practical Part: Painter Reloaded (Pintor Recargado)

Using the provided solution of the 2nd midterm, implement the functionality defined below:

- 1st midterm: Points 1 to 4
- 2nd midterm / 1st and 2nd midterm: All the points.

The functionality is the following:

1) Align the selection of paintings (pinturas) upwards, that is, make all the paintings have as **y position** the smallest of all the selected ones. There must be at least two paintings selected.
2) Align the selection of paintings downwards, that is, make all the paintings have as **y position + height** the largest of all the selected ones. There must be at least two paintings selected.
3) Make the selected paintings have the same width, using the width of the first selected painting. Valid with one or more paintings selected.
4) Make the selected paintings have the same height, using the height of the first selected painting. Valid with one or more paintings selected.
5) Help the user with "movement lines" that must appear when a painting is being moved. To do so, implement a message that, given the painting being moved, returns the set of movement lines that would have to be drawn taking into account the rest of the paintings of the wall.
   Examples can be seen below:

   *(Three pictures follow in the original. Each shows a wall with three "Button" paintings; one of them, on the left, is selected and being dragged. A thin horizontal red line is drawn across the wall at the y coordinate of a neighbouring painting's edge that is close to an edge of the moving painting: in the first picture the line is at the bottom edge of the moving painting, matching the bottom of the top-right button; in the second picture the line is at the top edge of the moving painting, matching the bottom of the top-right button; in the third picture the line is at the top edge of the moving painting, matching the bottom of the middle button. The line spans from the leftmost x of the paintings involved to the rightmost x.)*

   The implementation must follow the following definition:

   a) For now only the horizontal lines have to be taken into account.
   b) These lines must appear when the absolute difference between the top or the bottom of the painting being moved and the top or the bottom of the rest of the paintings is less than or equal to 10 points.
   c) For now it is assumed that only one painting is moved.
   d) A Rectangle can be used for the line, which must go from the smallest x coordinate to the largest x coordinate of the paintings in question, the y coordinate being the one of the rest of the paintings closest to the painting being moved. The height of the line must be one point.

## Tips

- Analyze the protocol of the classes Point and Rectangle before tackling any design!
- The paintings can be mutated using the message `#setOrigin:corner:`
- **Remember that the position 0@0 is at the top left**

## Work to do

Implement the requested functionality in the class category 2025-1C-Parcial-2.
