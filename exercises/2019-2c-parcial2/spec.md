# Mars Rover: Repeated Commands, Ground Sensor and Safe Movement

NASA has decided to make a new version of the MarsRover based on the experience gained with the previous version.

The reason they chose us is that they know we can build a robust, well-tested solution, where we will find test cases not foreseen in the requirements, and with a good design.

The improvements to implement are:

1. To minimize the number of commands sent in the command string, it must be possible to add a digit after a command indicating how many times, plus two, the last command must be repeated.

   For example: `'f0'` means forward must be done 3 times. Once for the first `f` and twice for the `0`.

   The reason 2 is added to the digit is to maximize the number of repetitions, since sending a 0 alone makes no sense, and 1 would be equivalent to sending two identical commands in a row.

   The repetition can only be applied to the commands `f`, `b`, `r` and `l`, and it is a single digit.

2. Something noticed in the first version is that sometimes the MarsRover got stuck on a rock, and sometimes, if the ground was ice, it slid and did not stop at the indicated position. For this reason a ground sensor was added to the MarsRover that allows it to determine the type of ground it will end up on when executing a command. That is, the sensor returns the ground type of a given position.

   It detects 3 ground types: Earth (Tierra), Ice (Hielo) and Rock (Roca).

   - When the ground type is Earth, the MarsRover's movement is the normal one, as it works up to now.
   - When the ground type is Rock, the MarsRover can neither rotate nor move to that position, and it must report the situation with an exception. Examples:
     - If the MarsRover is at position `1@2` heading North and there is a rock at position `1@3`, if it is asked to process `'f'` it should raise an exception and stay at position `1@2` heading North.
     - If the MarsRover is at position `1@2` heading North and there is a rock at that position, if it is asked to rotate left an exception must be raised and the MarsRover will stay at the same position heading North, that is, it cannot rotate.
   - When the ground type is Ice, the MarsRover slides an unexpected (random) number of points in the direction it was going. Examples:
     - If the MarsRover is at position `1@2` heading North and there is ice at position `1@3`, if it is asked to process `'f'` it may end up at position `1@3`, `1@4`, `1@5`... up to `1@12` (luckily the sliding limit on ice is 10 points).
     - Luckily ice does not affect rotation, that is, it rotates as if it were on earth.

3. Finally, in order not to lose the MarsRover's position when there are problems, a "safe movement" state must be implemented.

   The start of this state is indicated in the command sequence to process by means of the "open parenthesis" character, that is `$(`, and it ends with the "close parenthesis" character, that is `$)`.

   If there is any problem executing the commands in safe state, that is, the commands inside the parentheses, the MarsRover must return to its initial position heading where it was heading before moving safely.

   To return to the initial position it must undo all the movements it made, that is, do the opposite movement of each movement it made until the error occurred. In short, undo the movements.

   For example:
   - If the MarsRover is at position `1@2` heading North and there is a rock at position `1@4`, if it is asked to process `'(ff)'`, the exception that it found a rock should be raised and it should return to position `1@2` heading North.
   - If, while moving safely, it reaches an Ice ground type, an exception must also be raised and it must return to the initial position, since movement on ice is unpredictable.
   - The same must happen if invalid commands are found while moving safely.

   Clarifications:
   - A single command sequence may contain several safe-state movements. For example: `'frf(fflb3)ff(rb)'`
   - While in safe state, another safe state cannot be started. For example: `'ff(ff(rb)f)'` should raise an exception and return to the initial position.
   - In every command sequence, the safe-state execution must always be finished. For example: `'f(ff'` should raise an exception since the safe-state command sequence was not finished, and it should return to the position it had when the safe state started.

Develop the exercise.

Useful messages:

- `#isDigit` returns true if a character is a digit.
- `#digitValue` returns the integer represented by a character. For example: `$3 digitValue` --> returns 3
- `#nextInteger: aLimit`, when sent to an instance of `Random`, returns a random integer between 1 and `aLimit`.
- `#* aNumber`: can be sent to a number to multiply it by `aNumber`
- `#pass`: when sent to an exception, passes the exception on to the next handler
