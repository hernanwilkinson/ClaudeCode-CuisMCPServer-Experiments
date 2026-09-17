# Make-up Exam of the First Midterm 1c 2020 – Locomotive control

## Statement

It is an automatic and manual control system for a locomotive.

When the locomotive is in manual mode, it has a safety mechanism by which it brakes autonomously if it senses an obstacle ahead.

When it is in automatic mode:

- It moves forward as long as there are no obstacles.
- If it finds an obstacle it must stop accelerating the motor and apply all the brakes of the train (formación).
- If it detects a curve (by means of the friction in the wheels) it must only stop accelerating, but without braking.
- If it detects a curve and an obstacle it must stop accelerating and apply the brakes.

The sensors (odometers and proximity) are simulated in the tests because they are part of external systems.

(The odometer is a revolution counter. For now numbers without units are used, which represent revolutions per second. When there is a curve the system detects friction by comparing the odometer at the front of the train with the one at the back.)

The model is already implemented with its tests and works correctly in this first pilot version.

The model must be improved without modifying the functionality.

These are the tasks to accomplish and the points of each one:

- 1 point for removing repeated code from `Locomotive>>step`
- 3 points for removing repeated code from the tests
- 6 points for removing the ifs from `Locomotive>>step`

The full score of each task is obtained as long as the design practices seen in class and the cultural guidelines of the environment being worked in, Cuis University in this case, are followed. This means that good names must be used, messages must be categorized adequately, abstractions representative of the domain modelled by the program must be generated, etc.
