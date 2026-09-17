# Kiln Stacker

Masked variant of: 2024-2c-recuperatorio-parcial2

**This exercise is the full scope of the statement (do everything). The extension that replaces rule 4 with per-cluster behaviour when hitting the side walls is part of this exercise and has its own reference solution.** The full statement follows.

A pottery workshop wants a small simulator of one of its kilns in order to plan how glazed tiles are stacked before firing. The kiln is a tall column: clusters of glazed tiles are lowered into it from the top and descend one course at a time until they settle on the kiln floor or on clusters that settled earlier. Whenever a course is completely filled with tiles, that course is fired and removed from the kiln, and everything above it drops one course. The idea is to implement a simplified prototype of this simulator to see how much it would cost to make it and whether it would make sense to build the real thing.

What is expected, in order to ensure the correct operation of the simulator, is to use a string representation of how the kiln would look after exercising it in each test. For example:

```
'#---***----#'
'#----*-----#'
'#----------#'
'#----**----#'
'#----**----#'
'############'
```

This is the string representation of a kiln that consists of 5 courses by 10 columns, where a Block cluster reached the last course and a Fork cluster is coming out. A cluster is a geometric shape composed of four equal square tiles.

It is not necessary to create the simulator from an initial kiln defined with strings. The simulator must be instantiated at minimum with the extent of the kiln (columns x courses), which must have at least 4 columns and 5 courses.

The clusters that have to be implemented are:

1. Block: It is the cluster that represents a 2x2 square.
2. Fork: It is the cluster with 3 tiles on top and one tile below in the middle.
3. Rod: It is the cluster that is a straight column of 4 tiles.
4. Step: It is the cluster with 2 tiles on top and 2 below shifted to the right.
5. Hook: It is the cluster with 3 tiles stacked and one more tile to the right of the bottom one.

In the string representation of the kiln they look like this:

```
Block  Fork   Rod   Step   Hook
**     ***    *     **     *
**      *     *      **    *
              *            **
              *
```

In the String representation of the kiln, the tiles must be presented by means of asterisks (`*`), the free spaces by means of dashes (`-`) and the kiln wall by means of hashtags (`#`).

The simulator must allow the following actions:

1. That the simulation advances. For that there must be a message, for example `#advance`, that tells the simulator it must move the cluster being lowered down one course. There can only be one cluster descending at a time.
2. Telling the current cluster to move left or right. It can be moved several times between `#advance` and `#advance`. As it is a prototype, it is assumed that the cluster can move freely left and right, that it will not collide with another cluster nor complete a course by doing so.
3. Telling the current cluster to go down as far as possible.

The rules the simulator must implement in this prototype are:

1. The cluster always starts in course 1 (topmost), in the middle of the kiln, rounding to the left if necessary. In the example kiln above it can be seen that the Fork starts at 4@1.
2. The clusters are positioned starting from the topmost, leftmost tile. For example, for the kiln shown above, the position of that Fork cluster is 4@1.

   From the position of the cluster the positions of the rest of its tiles are known. For the Fork that starts at 4@1, the positions would be: 4@1, 5@1, 6@1 and 5@2, which is obtained by creating a collection with:

   position, position + (1@0), position + (2@0) and position + (1@1)

3. The sequence of clusters is decided randomly, sending the message `#nextInteger:` to an object of type `Random`. According to the number obtained a cluster is created as follows:
   - 1 → Block
   - 2 → Fork
   - 3 → Rod
   - 4 → Hook
   - 5 → Step
4. The clusters cannot leave the kiln.
5. A cluster goes down until the last course (bottommost) or until it collides with another cluster.
6. When a cluster cannot go down any further, all the positions of the cluster become occupied.
7. When a cluster cannot go down any further, all the courses that are complete, with occupied positions in all their columns, are fired and must be removed.
8. When a course is removed for being complete, all the courses above it go down one course.
9. 10 points are added to the total score, which starts at 0, for each fired course.
10. The simulation ends when the current cluster cannot go down from its starting position.

Because it is a prototype, it is not necessary to implement the following:

- Rotation of clusters
- Adding points for a cluster that reaches the bottom

Work to be done depending on the scope:

- Reduced scope: Besides representing the simulator and the clusters, implement actions 1 and 2, and implement rules 1 to 4 inclusive.
- Full scope: Do everything.
- Full scope with extension: Do everything plus:

  Replace rule 4) with: The behaviour of the clusters when they hit the side walls varies as follows:
  - Block and Fork: They reappear on the other side of the kiln, same course.
  - Rod and Hook: They bounce 2 columns. For example, if a Rod hits the left wall, its new position should be in column 3, same course it was in.
  - Step: It goes to the column of its initial position keeping the course.

Tips:

- To obtain a random number the message `#nextInteger:` implemented in `Random` must be used.

## Work to be done

Implement the requested prototype of the Kiln Stacker simulator.
