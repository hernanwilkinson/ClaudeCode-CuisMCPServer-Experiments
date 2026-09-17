# Make-up Exam - Aterrizar.com

Initial code is provided in the category `2025-2C-Recuperatorio`.

A travel company wants to build an online flight ticket sales system. For this first version, a search engine (buscador) is needed that allows searching for one-way, round-trip and multi-leg (multi-tramos) tickets, taking into account that there is room on the flight and applying the corresponding discounts to the final cost.

## Flight Definitions

The search engine knows definitions of which flights are operated and the types of discounts it applies (see further on). The definition of a flight is made up of a code, from which airport it departs and at which it arrives, which days of the week it flies, at what time it departs, how long the trip lasts and what the cost is. For example:

Aerolíneas Argentinas:

- AR100, from Ezeiza to Barcelona, departs Monday to Sunday (every day of the week) at 22:00, the trip lasts 12 hours and costs 1,000 dollars.
- AR101, from Barcelona to Ezeiza, departs Monday to Sunday (every day of the week) at 14:00, the trip lasts 12 hours and costs 900 dollars.

Iberia:

- IB300, from Ezeiza to Barcelona, departs Monday to Friday at 1:00, the trip lasts 12 hours and costs 1,000 dollars.
- IB503, from Madrid to Paris, departs Monday to Friday at 6:00, lasts 1:30 hours and costs 300 dollars
- IB301, from Barcelona to Ezeiza, departs Monday to Friday at 14:00, lasts 12:00 hours and costs 900 dollars

## Flight search:

There are three ways to search for flights, and for those that the search engine proposes, we want to be able to show the user the origin airport and final destination, the day and time of departure and of arrival (assuming there are no delays) and the gross and net cost. The net is the total minus the corresponding discounts. Regarding the discounts, we want to know which discounts were applied and for what amount.

**One-way flights (Vuelos de solo ida)**: one must indicate from which airport one wishes to depart, at which one wishes to arrive, on which date one departs and with how many passengers. For example:

- From Ezeiza to Barcelona, on Dec. 9, 2025 for 5 passengers: it should offer trips for the definitions AR100 and IB300

**Round-trip flights (Vuelos de ida y vuelta)**: one must indicate from which airport one wishes to depart and at which one wishes to arrive on the outbound leg, on which date one departs, on which date one returns and with how many passengers. Its gross cost is the sum of the cost of the outbound leg plus the return leg. For example:

- From Ezeiza to Barcelona, departing Dec. 9, 2025 and returning Dec. 15, 2025, for 5 passengers: it should offer a round-trip flight made up of the flights AR100 and AR101

**Multi-leg flights (Vuelos multitramos)**: it must be possible to search by indicating each leg (tramo) of the trip. It is not mandatory to depart from the airport at which one arrived in the previous leg, but it is mandatory that the departure date and time be later than the arrival date and time of the previous leg. The number of passengers is the same on all legs. The cost is the sum of the cost of each leg. For example:

- From Ezeiza to Barcelona, departing Dec. 9, 2025, for 1 person
- From Madrid to Paris, departing Dec. 15, 2025, for 1 person
- From Barcelona to Ezeiza, departing Dec. 19, 2025, for 1 person

It must offer the following multi-leg flights:

- AR100, IB503 and AR101
- AR100, IB503 and IB301
- IB300, IB503 and AR101
- IB300, IB503 and IB301

**TAKE INTO ACCOUNT:** To combine flights of different legs there is the OrderedCollection message **#todasLasCombinaciones** which returns a combination of the collections that make it up.

## Ticket availability:

To know whether there is ticket availability on a flight, the external system with a REST connection called "ContadorDePasajeros" (passenger counter) must be used, with the flight code and the departure date, and it returns the number of available seats. Our search engine must only offer the flights that have enough room for the number of passengers who wish to travel.

## Discounts

There are different types of discounts that the search engine must apply for each leg of the trip:

- **Special date discount (Descuento por fechas especiales)**: it is a percentage for a special date such as a Black Friday, a Christmas of a given year (e.g. 25/12/2025) or a New Year, etc.
- **Leg discount (Descuento por tramo)**: it is a percentage that applies to flights of a certain origin and destination.

Several discounts can be applied simultaneously and it is always done over the gross (the total without discounts).

## Validations:

IT IS NOT NECESSARY TO DO VALIDATIONS beyond those mentioned in the statement. It is not necessary to validate that the discount percentages are positive, nor that the available flights have different origin and destination, etc.

## Work to do

Implement the requested functionality.

## Final Clarifications

- Use **Aconcagua** to work with units of measure (peso, dollar, hour, etc.)
- For dates you can use objects from the **Chalten** model
- **Chalten** offers intervals that can be used for days of the week, for example: `(Monday to: Sunday) includes: Tuesday` -> true
- Remember the message **#todasLasCombinaciones**

Work test-first, one test at a time: write one failing test, run it and see it fail, write the
minimum code that makes it pass, run all the tests, refactor while they stay green, and only
then continue with the next test. Do not write production code without a failing test that
asks for it.

Work in the running Cuis image reachable through the Cuis MCP tools; it is the only place your work is read from, there are no files to edit. Define the classes in the system category '2025-2C-Recuperatorio' and the tests in the system category '2025-2C-Recuperatorio-Tests'.
