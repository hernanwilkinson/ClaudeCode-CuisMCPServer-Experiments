# ISW1-SmartBuilding: construction teams, prices and capacities

## ISW1-SmartBuilding

The company 'ISW1-SmartBuilding' builds houses and buildings by means of the several work teams that make it up, but lately it is having trouble making its budgets (presupuestos) properly, which is why they decided to create a system to help them with the process.

Each work team has a particular way of defining the area it can build in a certain time (construction capacity), as well as the construction cost per certain unit of time (price). With this information it must be possible to compute how long a team takes to build a certain area (expressed in whole days) and how much it would cost to do it.

For now the system must allow defining the price of the teams in the following ways:

1. Fixed price of $ x/day.
2. Price of $ x/day for non-rainy days and a price of $ y/day for rainy days. The rainy-day price is higher than the non-rainy one because building in the rain is more dangerous. To know the number of days for which rain is forecast, one has to contact the Weather Service (Servicio Meteorológico), indicating the span in days for which one wants to know whether it will rain. (The weather service is very reliable and only returns the number of days on which it will surely rain.)

The system must make it easy to add other ways of defining a team's price without having to modify what is already programmed. It is not necessary to validate that the price is positive.

The way of defining the construction capacity each team can deliver must contemplate:

1. Fixed capacity: a constant construction area per day, e.g. 25 square meters/day or 250000 square centimeters/day.
2. Variable capacity: an initial area that is built each day during the first n days, which afterwards drops to another area for the remaining days (holidays, Saturdays, Sundays, etc. do not matter).

As with the price, new ways of defining a team's construction capacity may appear. This should affect the existing model as little as possible. It is not necessary to validate that the capacity is positive.

Examples of team configurations are:

1. Red Team (Equipo Rojo), with a fixed price of $1000 per day, which builds a constant 250000 square centimeters per day.
2. Blue Team (Equipo Azul), with a price of $1500 per day when the day is good and $1700 when it rains, which builds 150 square meters per week during the first 10 days of a job, but afterwards drops its performance to 20 square meters per day.

An important feature of the system is that it must allow combining work teams, either concrete or combined ones. For example, it should be possible to create the combined team Alfa, composed of the Red team and the combined team Beta, the latter composed of the Blue team and the Green team (Equipo Verde). Combined teams are immutable: they cannot be modified once created, and there cannot be repeated teams.

In this kind of team, the work to be done is split in equal parts among its direct teams. The construction cost is the sum of the costs of its teams, and the construction time is the maximum of the times of its teams. For example, for team Alfa the construction time for 100 square meters is the greater of the construction time of 50 square meters by the Red team and by Beta, and the cost is the sum of the cost of building 50 square meters with the Red team and with Beta.

It must also be possible to ask a combined team how long it takes and how much it costs to carry out a job of a certain area with each of the teams that compose it. For example, if we want to know how long the teams of team Alfa take to build 100 square meters, we should get:

```
Equipo Rojo -> tiempoDeEquipoRojoEnConstruir50m2
Equipo Beta -> tiempoDeEquipoBetaEnConstruir50m2
```

Finally, it is also desired to be able to compute which team, of a combined team, will cost the least to build with, and which team will take the least time to build a certain area, again split as in the previous cases. For example, if I want to know the fastest team of team Alfa at building 100 square meters, it must return whichever takes the least time to build 50 square meters between the Red team and Beta. If there is more than one when computing the cheapest or the fastest team, only one must be returned, no matter which.

## Clarifications

1. Develop the model that satisfies these requirements.
2. A dimension can be represented as a quantity per unit of squared distance with Aconcagua. E.g.: `25 * meter * meter` or `25 * (meter^2)`
3. To define the time to build a certain dimension, the dimension can be divided by the unit of time. E.g.: `25 * meter * meter / day` or `175 * meter * meter / week`
4. The construction price can be defined as an amount of money divided by the unit of time. For example: `1000 * peso / day`
5. It is not mandatory to use Aconcagua, but we recommend it because it already solves arithmetic with measures. That will help you know whether you made a mistake in the calculations.
6. If you use Aconcagua, remember that the distance units such as `meter`, `kilometer`, `centimeter`, etc., the day-related time units such as `day`, `week`, `hour`, etc., and the wealth units such as `peso`, `dollar`, `euro`, etc. are already defined globally.
7. The exercise requested is quite far from the reality of this kind of problem. It is a gross simplification, such as assuming that people always work the same way, etc.
