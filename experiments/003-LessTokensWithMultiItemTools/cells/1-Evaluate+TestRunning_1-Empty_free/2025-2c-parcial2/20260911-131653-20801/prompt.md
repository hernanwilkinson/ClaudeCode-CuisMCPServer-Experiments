# Second Midterm - Public Transport System - ISWMetropolitano

The city of Buenos Aires hired us to develop the system that will run in the card readers of the means of transport and that will charge the trips made using a new card called **BAJE**.

The charge is made by bringing the card close to the reader, which, depending on the means of transport, card, trip, etc., will decrease its balance if possible. A **BAJE** card is NOT like a credit card, that is, the **BAJE** card can hold information such as its balance, the trips made (with no limit on the number for now), etc.

## Card Reader and Means of Transport

There are different card readers:

- For Bus (Colectivo): it charges when the card is tapped and the cost depends on the distance to travel between the origin and the destination.
- For Subway (Subte): it charges when the card is tapped on a turnstile of a stop, indicating in which direction one is going (head of the line (cabecera) or end of the route). The cost is always fixed.
- For Train (Tren): the card must be tapped when entering and optionally when exiting. Similar to the Subway, it charges when the card is tapped on a turnstile of a stop indicating in which direction one is going (head of the line or end of the route); however the price is not fixed but depends on the distance to the destination. When exiting, the difference of the actual trip made is adjusted. If the card is not tapped when exiting, what was charged on entry is kept. For simplicity it is assumed that tapping on exit is always valid (that is, that it is the same train line, that it is only done after having marked the entry at a train stop, etc.).

The means of transport know a route with stops and a fare table (cuadro tarifario). A stop is identified by its name and knows the distance to the head of the line. The distance between two stops is the absolute value of the difference between their distances to the head of the line.

Examples:

**Bus Line 60 (Colectivo Línea 60):**

- **Stops:** Constitución (0*kilometer) <-> Plaza de Mayo (5*kilometer) <-> Retiro (8*kilometer) <-> Belgrano (12*kilometer)
- **Fare table:**
  - Up to 5 km: 600 * peso
  - Up to 10 km: 1000 * peso
  - More than 10 km: 1300 * peso

**Subway Line D (Subte Línea D):**

- **Stops:** Congreso de Tucumán (0*kilometer) <-> Tribunales (1.2*kilometer) <-> Callao (2.5*kilometer) <-> Palermo (6*kilometer)
- **Fare table:** always 1000 * peso

**Mitre Train - Retiro-Tigre Branch (Tren Mitre - Ramal Retiro-Tigre):**

- **Stops:** Retiro (0*kilometer) <-> Belgrano (8*kilometer) <-> San Isidro (18*kilometer) <-> Tigre (28*kilometer)
- **Fare table:**
  - Up to 15 km: 400 * peso
  - More than 15 km: 600 * peso

## BAJE Card

There must always be balance to be able to pay, and the card can have different discount configurations:

1. **No discount (Sin descuento):** always pays the full price
2. **Student (Estudiantil):** pays 50% of the price from Monday to Friday and 100% on weekends
3. **Retiree (Jubilado):** has 2 free trips per day, the rest are charged 100%

### Examples of trips and their charges:

- On line 60, on Tuesday 25/11/25 10:00 AM, from Constitución to Plaza de Mayo with a card without discount: 600*peso is charged
- On line 60, on Monday 24/11/25 11:00 AM, from Constitución to Belgrano with a student card: 650*peso is charged (it does not matter that 24/11 was a holiday)
- On Subway D, on Saturday 22/11/25 9:00 AM, boarding at Tribunales in the direction of Congreso de Tucumán, a retiree making their first trip of the day: 0*peso is charged
- Mitre Train, with a card without discount:
  - on Saturday 22/11/25 9:00 AM, boarding at San Isidro in the direction of Retiro: 600*peso is charged
  - on Saturday 22/11/25 9:30 AM, getting off at Belgrano: 200*peso is refunded

These examples are not exhaustive, so they do not cover the whole spectrum of possible trips and charges.

## Transfers (Trasbordos):

If the user makes a new trip within 2 hours of the start of their last trip, it is considered a transfer. There is no limit on transfers.

- On each trip that meets that condition, 50% of the cost is paid.
- Discounts are not cumulative. Example: a student from Monday to Friday will only receive their student discount, no matter how many trips they make within the 2 hours. However, on weekends they will receive transfer discounts.

Example:

- With a card without discount:
  - On line 60, 25/11/25 10:00 AM, from Constitución to Plaza de Mayo: 600*peso
  - Subway D, 25/11/25 10:30 AM, boarding at Tribunales in the direction of Palermo: 500*peso

## Validations:

1. In a trip, the origin and destination stops must be in the same means of transport and must be different
2. The means of transport must have at least two stops
3. For Subway and Train, the direction must always be either the head of the line or the last stop
4. IT IS NOT NECESSARY TO DO OTHER VALIDATIONS such as that distances and costs are positive, that the fare table is valid, that when the train exit is marked the entry was marked before, etc. That is, all those conditions can be assumed to be valid

## Work to do

Implement the requested functionality using **TDD** and the **design heuristics** seen in the course.

## Final Clarifications

- For dates you can use objects from the **Chalten** model of Cuis University
- Use **Aconcagua** to work with units of measure (peso, kilometer, minute, etc.)
- Positive infinity exists, always greater than everything: **PlusInfinity new**
- Stops are always unique, regardless of whether they have the same name in several means of transport.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category '2025-2C-2doParcial' and the tests in the system category '2025-2C-2doParcial-Tests'.
