# First Midterm 1c 2019 – Parking Lot

A company that owns many parking lots wants to implement a simulation to improve its service with a view to being the first to put a parking lot on Mars.

In these first steps of the project they need a computable model with the following characteristics:

- The parking lot will have a configurable number of slots.
- In case of having an odd number of slots, one slot must be reserved. It will be used by the owner of the parking lot (the cost in this case is $0).
- Cars or bicycles can park in the slots (this is a simplification of real life but it is useful in this first instance).
- The company wants to know how much money is "parked" at a given instant, taking into account that the values of the stays are:
  - Cars: $100
  - Bicycles: $50

Fortunately there is already quite a lot implemented from previous systems that we can reuse, as well as the tests; however, for this case the class `Slot` has to be implemented and the repeated code has to be removed from the class `ParkingLot` because it was written by a person without much programming experience.

## Work to do

1. Implement the class `Slot` so that the tests in `SlotTests` pass.
2. The implementation of `Slot` must not have ifs when they can be replaced by polymorphism.
3. Once 1 and 2 are done, remove the repeated code from the class `ParkingLot`.
5. The tests cannot be modified.
