# First Midterm 1c 2020 – I, Robot

## HWS

HWS is a product shipping company that wants to fully automate its warehouses by using robots to assemble the orders that will later be sent to the customers.

This first stage of the project aims at a computable model with the following characteristics:

## Products

- There are only 2 kinds of product: ProductoA (`ProductA`) and ProductoB (`ProductB`) (this is a simplification of real life, but it is enough for this first instance).

- Each product has an associated weight and height. Two products of the same kind do not necessarily have the same weight or height.

## The Robots

The robots move around the warehouse aisles collecting the products on their list. Thanks to their sensors (GPS, cameras, etc.) they can pick up the products they need using their mechanical arm.

For the model we are implementing we need to know that:

### Robot states

- The robots can be in 4 states (which affect how they work):
  - Working Normal: Works normally and shows no failure.
  - Sensors Failure: Some internal sensor has problems.
  - Mechanical Failure: Some mechanical component has problems.
  - Out of order: The robot is out of service and cannot do any work.

### Taking products

- Each robot has a trailer where it places the products.

- **It can take products** in the following states:
  - Working Normal
  - Sensors Failure
  - Mechanical Failure

- But **it cannot take products** if it is Out of order

### Closing a purchase order

- When a robot finishes the purchase, it is assigned an automatic cashier (**cashier**) to close the purchase order.

- **It can close a purchase** in the following states:
  - Working Normal
  - Mechanical Failure

- But **it cannot close a purchase** in the following states:
  - Sensors Failure
  - Out of order.

## Cashier

- It receives the robot and, depending on the robot's state, accepts the products or not. It also marks the robot as "out of order" if it has mechanical failures. See the **Cashier** class for more implementation details.

## Trailers

Trailers can carry a maximum weight and a maximum height (both configurable).

- Products A cannot be stacked, so we do not care about the height when adding a product A (it only matters that the trailer's maximum weight is not exceeded)

- Regarding carrying Products B, these are stackable (and they can only be carried stacked!), therefore besides caring about not exceeding the weight limit, it also matters that they do not exceed the maximum height the trailer can carry. (Note that not exceeding the height limit matters **only for the stackable products**)

# Work to be done:

1. The implementations of `Robot` and `Cashier` must not have `ifs` when they can be replaced by polymorphism.
2. Remove the repeated code from the classes `Robot`, `Cashier` and `Trailer`.
3. Remove the repeated code from `test01`, `test02`, `test03` and `test04` of `Cashier`.
4. Improve the tests of `Trailer`:
    - better names.
    - remove repeated code.


**NOTE:** Items 1. and 2. must be done without modifying the tests. In items 3. and 4. the functionality of the model under test must not be modified.
