# Seabed Survey Crawler: Repeated Commands, Sonar and Guarded Runs

Masked variant of: 2019-2c-parcial2

The oceanographic institute has decided to make a new version of the seabed survey crawler based on the experience gained with the previous version.

The reason they chose us is that they know we can build a robust, well-tested solution, where we will find test cases not foreseen in the requirements, and with a good design.

The improvements to implement are:

1. To minimize the number of commands sent in the command string, it must be possible to add a digit after a command indicating how many times, plus two, the last command must be repeated.

   For example: `"a0"` means advance must be done 3 times. Once for the first `a` and twice for the `0`.

   The reason 2 is added to the digit is to maximize the number of repetitions, since sending a 0 alone makes no sense, and 1 would be equivalent to sending two identical commands in a row.

   The repetition can only be applied to the commands `a`, `t`, `h` and `g`, and it is a single digit.

2. Something noticed in the first version is that sometimes the crawler got stuck against a boulder, and sometimes, if the ground was silt, it slid and did not stop at the indicated position. For this reason a sonar was added to the crawler that allows it to determine the type of ground it will end up on when executing a command. That is, the sonar returns the ground type of a given position.

   It detects 3 ground types: firm sand, silt and boulder.

   - When the ground type is firm sand, the crawler's movement is the normal one, as it works up to now.
   - When the ground type is boulder, the crawler can neither turn nor move to that position, and it must report the situation with an exception. Examples:
     - If the crawler is at position `Point(1, 2)` facing Up and there is a boulder at position `Point(1, 3)`, if it is asked to process `"a"` it should raise an exception and stay at position `Point(1, 2)` facing Up.
     - If the crawler is at position `Point(1, 2)` facing Up and there is a boulder at that position, if it is asked to turn counter-clockwise an exception must be raised and the crawler will stay at the same position facing Up, that is, it cannot turn.
   - When the ground type is silt, the crawler slides an unexpected (random) number of cells in the direction it was going. Examples:
     - If the crawler is at position `Point(1, 2)` facing Up and there is silt at position `Point(1, 3)`, if it is asked to process `"a"` it may end up at position `Point(1, 3)`, `Point(1, 4)`, `Point(1, 5)`... up to `Point(1, 12)` (luckily the sliding limit on silt is 10 cells).
     - Luckily silt does not affect turning, that is, it turns as if it were on firm sand.

3. Finally, in order not to lose the crawler's position when there are problems, a "guarded run" state must be implemented.

   The start of this state is indicated in the command sequence to process by means of the "open parenthesis" character, that is `'('`, and it ends with the "close parenthesis" character, that is `')'`.

   If there is any problem executing the commands of a guarded run, that is, the commands inside the parentheses, the crawler must return to its initial position facing where it was facing before the guarded run started.

   To return to the initial position it must undo all the movements it made, that is, do the opposite movement of each movement it made until the error occurred. In short, undo the movements.

   For example:
   - If the crawler is at position `Point(1, 2)` facing Up and there is a boulder at position `Point(1, 4)`, if it is asked to process `"(aa)"`, the exception that it found a boulder should be raised and it should return to position `Point(1, 2)` facing Up.
   - If, during a guarded run, it reaches a silt ground type, an exception must also be raised and it must return to the initial position, since movement on silt is unpredictable.
   - The same must happen if invalid commands are found during a guarded run.

   Clarifications:
   - A single command sequence may contain several guarded runs. For example: `"aha(aagt3)aa(ht)"`
   - While in a guarded run, another guarded run cannot be started. For example: `"aa(aa(ht)a)"` should raise an exception and return to the initial position.
   - In every command sequence, the guarded run must always be finished. For example: `"a(aa"` should raise an exception since the guarded run's command sequence was not finished, and it should return to the position it had when the guarded run started.

Develop the exercise.

Useful methods:

- `a_character.isdigit()` returns true if a character is a digit.
- `int(a_character)` returns the integer represented by a character. For example: `int('3')` --> returns 3
- `randrange(a_limit)`, when sent to an instance of `random.Random`, returns a random integer between 0 and `a_limit - 1`; `random.randrange(a_limit) + 1` gives a random integer between 1 and `a_limit`.
- `*`: can be used on a number to multiply it by another number (`a_number * another_number`)
- `raise` inside an `except` block passes the exception on to the next handler

Work in the Python project in the current directory; it is the only place your work is read from. The code is in src/surveycrawler (the package surveycrawler) and the tests in tests. Run the tests with `python3 -m pytest` (pytest is installed). Do not create files outside this project.
