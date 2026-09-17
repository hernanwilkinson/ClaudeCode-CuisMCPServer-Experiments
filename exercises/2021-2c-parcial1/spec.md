# ISW1-SimGames: iswCity zones and services refactoring

## ISW1-SimGames

ISW1-Games is a company specialized in simulation games in the best **SimCity** style.

They are starting to develop a new game based on the code of their famous game **iswCity**, and it seems like a good moment to polish its design.

## iswCity

So far the game engine allows modelling certain characteristics of a city. We will concentrate on the different kinds of zones to build on (Zones) and on the services (Services).

### Zones

Zones (zonas) are the spaces where the population of our city will be able to build. There are 3 kinds of zones: Residential, Commercial and Industrial (although we are told that more will be defined in the future).

When a zone is created, it is told how much space it occupies, measured in cells (celdas). The space is used to compute the consumption of services as follows:

| Zone        | Water      | Power      |
|-------------|------------|------------|
| Residential | 9 wp/cell  | 5 ep/cell  |
| Commercial  | 2 wp/cell  | 8 ep/cell  |
| Industrial  | 10 wp/cell | 10 ep/cell |

Note: wp: Water points, ep: Energy points

### Services

Before these zones can be built in the city, the city must have services. There are 2 kinds of services: Power (energía) and Water (agua). To supply energy we have Solar Plants, which provide 500 ep each. For water, we have Water Towers, which provide 200 wp.

## Work to do

Luckily everything is already developed and there are tests that validate that it works, but from what could be seen the model presented does not have a good design, for several reasons seen in class. You are asked to improve the model by:

1. Removing the duplicated code from the model and making it more declarative where appropriate.
2. Removing the ifs that can be replaced by the use of polymorphism.
3. Removing the duplicated code in the tests.
4. Improving the design in everything you consider necessary (objects complete and correct from their creation, not breaking encapsulation, removing unused messages, deleting unused variables, categorizing messages, etc.)

Important:

- All the tests must keep working.
