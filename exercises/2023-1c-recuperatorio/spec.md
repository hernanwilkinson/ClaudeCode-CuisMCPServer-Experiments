# ISW1-AutomaticCar V2.0 (Driving Assistant: Lane Sensor and Fuel Consumption Mode)

The first implementation of the DrivingAssistant was a complete success. We managed to convince
the clients of the feasibility of putting it into production; however, to do so it is necessary to
extend the functionality in the following way:

1. Add a "lane position" sensor (sensor de posición en carril) that, each time it is read,
   answers one of three possible values indicating the position of the car with respect to the
   lane: `#centered`, `#shiftedLeft`, `#shiftedRight`
2. Be able to tell the driving system whether one wants to turn left or right using the turn
   signal (luz de giro / guiño).
3. Add a fuel consumption mode (modo de consumo de nafta) that can be Aggressive, Normal or
   Economic, which indicates the time it should take to reach the driving mode's target speed
   when speeding up. It is only indicated when in Automatic or Assisted-Manual driving mode.

The new actions that the driving system can be asked to perform are:

- Move the steering wheel to the left, to the right, or go straight (`steerLeft`, `steerRight`,
  `goStraight`).
- Turn on the turn signal to turn left or right (`signalTurnLeft`, `signalTurnRight`) or turn it
  off (`turnOffTurnSignal`).
- Which acceleration to use when it has to increase the speed (`acelerate:`).

The expected behaviour of the driving mode with respect to the lane sensor is the following:

- Manual
  - Lane sensor:
    - If it is drifting out of the lane, either to the left or to the right, it must emit the
      "leaving lane" beep, as long as it does not have the corresponding turn signal on (that is,
      if it is going left and the turn-left signal is on, it should not emit the beep).
    - If it is going straight with the turn signal on to turn to either side for 2 minutes or
      more, it must emit the "leaving lane" beep until the turn signal is turned off.
- Automatic
  - Lane sensor:
    - If it is drifting to the left and does not have the turn-left signal on, move the steering
      wheel to the right. If it has the turn-left signal on, it must remain in the "going
      straight" state.
    - If it is drifting to the right and does not have the turn-right signal on, move the
      steering wheel to the left. If it has the turn-right signal on, it must remain in the
      "going straight" state.
    - If it is going straight with the turn signal on to turn to either side for more than
      1 minute, it must emit the "leaving lane" beep until the turn signal is turned off.
- Assisted-Manual
  - Lane sensor:
    - If it is drifting out of the lane, it must combine the actions of manual and automatic.
    - If it is going straight, it must act as if it were in automatic mode.

The expected time to reach the target speed according to the consumption mode is:

- Aggressive: `10*second`
- Normal: `17*second`
- Economic: `23*second`

This time must be used to compute the acceleration that must be indicated to the driving system
by means of the message `#acelerate:`, when it must increase the speed using the message
`#keepSpeedAt:`. This happens only when there is an object in front in the safe zone or when there
is no object ahead. When the speed must be lowered, and by default, the driving system's
acceleration must be `0*kilometer/(hour^2)`. The consumption mode is indicated to the Automatic or
Assisted-Manual driving mode.

The formula to find the acceleration to apply is that of uniformly accelerated rectilinear
motion: `finalSpeed = initialSpeed + acceleration * time`

When the car is turned on, to the initial state already defined it is added that it is going
straight, with the turn signal off, with an acceleration of `0*kilometer/hour`, and, in case of
being in Automatic or Assisted-Manual mode, the fuel consumption must be Normal.

The case of switching from one driving mode to another need not be considered; one always starts
with a driving mode and keeps it.

It must be assumed that the sensors always answer valid values.

Remember that this system is a real-time system that keeps generating actions according to what is
read from the sensors and the type of assistance chosen, indicated by means of the message
`#tick`. Also, because it is a critical system, it is extremely important that it be well tested;
in short, that it consider all the possible functional cases tested and that there be no untested
code.

The provided tests must keep passing without affecting the pre-existing functionality. They may
only be modified if it is necessary to do something new in the creation of the objects or to add
assertions.

Solve the exercise starting from the solution already provided.

Those who must retake only the first midterm must implement the lane sensor functionality,
without taking the consumption mode into account.

Hints:

- If going at `60*kilometer/hour` and one wants to reach `100*kilometer/hour` in `10*second`,
  an acceleration of `14400*kilometer/(hour^2)` must be applied. In Smalltalk this equivalence can
  be seen in the following code:
  `(100*kilometer/hour) = ((60*kilometer/hour)+((14400*kilometer/(hour^2))*(10*second)))`
- For the current date and time you can use `GregorianDateTime`. Instances can be created with:
  `July/17/2023 at: 17:00:00`.
- `GregorianDateTime theEndOfTime` answers a date and time that represents the end of time, that
  is, it is always greater than any other date and time.
- `GregorianDateTime>>#next:` answers a date and time advanced by the time passed as
  collaborator. Example: `(July/17/2023 at: 17:00:00) next: 10*minute` → `July/17/2023 at:
  17:10:00`
- `GregorianDateTime>>#distanceTo:` answers the difference between one date and time and
  another. Example: `(July/17/2023 at: 17:00:00) distanceTo: (July/17/2023 at: 17:10:00)` →
  `10*minute`
- The events generated by the sensors can be modelled with `ReadStream`. For example, for the
  speed sensor one can use `ReadStream on: { 100*kilometer/hour. 110*kilometer/hour }`.
- There is no problem in turning the beep off again if it is already off, or connecting the
  throttle again if it is already connected.
