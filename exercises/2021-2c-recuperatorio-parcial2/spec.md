# ISW-Prop: real estate sales and deposits (make-up exam, second midterm)

## Make-up exam, second midterm - ISW-Prop

We were commissioned to develop a system for the real estate agency (inmobiliaria) ISW-Prop.

The agency has many properties for sale. Prices are defined per neighborhood (barrio), square meter and month of the year, since they can vary over time. For example, in Palermo the square meter cost 5000 pesos in November 2021 and 6000 pesos in December 2021.

Properties are located in some neighborhood and have a given area, which is used together with the sale date to compute the base price. The base price can be modified according to the following modifiers related to the property:

1. Established price (Precio Establecido): does not modify the base price.
2. Differential price (Precio Diferencial): there are certain properties that, because of their characteristics, can be a certain percentage above or below the neighborhood's standard price. That percentage cannot be less than -15% nor greater than 15%.
3. Weekend price (Precio por Fin de Semana): certain properties sell much better on weekends, so on those days their price is increased by a given ratio. (It is not necessary to validate this ratio.)
4. Price for particular weekdays (Precio para días de semana particulares): similar to "Weekend price" but for any day of the week.

For example, one could have a property in Belgrano of 100 square meters whose base price is modified by 10% on Tuesdays and Wednesdays, or a property in Palermo of 150 square meters with a differential price of 15%.

The agency offers to sell the properties or to take a deposit (señar) on them. Properties are sold on a certain date and the sale price is computed based on that date. It is necessary to keep all the sales made, for auditing purposes.

Properties can also be reserved with a deposit (seña). In this case the deposit is 10% of the price established on the date of the deposit (the price is frozen) and the maximum sale date must be set. When a property has a deposit on it, it is no longer for sale. From the moment of the deposit until the established sale date, the rest of the price (what was left unpaid by the deposit) can be paid, in which case the property stops being reserved and becomes sold. If the maximum sale date passes, the property stops being reserved and goes back to being for sale (for now this only has to be verified at the moment of paying the rest of the deposit).

It is important to keep the active deposits, for auditing purposes and to know which deposits can have the rest of the price paid.

It is not necessary to know who made the purchase or the deposit on a property; that is kept in another system.

## Clarifications

1. Develop the model that satisfies these requirements.
2. An area can be represented as a quantity per unit of squared distance with Aconcagua. E.g.: `25 * meter * meter` or `25 * (meter^2)`
3. The price of an area can be defined as an amount of money divided by the area. For example: `1000 * peso / (meter^2)`
4. It is not mandatory to use Aconcagua, but we recommend it because it already solves arithmetic with measures. That will help you know whether you made a mistake in the calculations.
5. If you use Aconcagua, remember that the distance units such as `meter`, `kilometer`, `centimeter`, etc., the day-related time units such as `day`, `week`, `hour`, etc., and the money units such as `peso`, `dollar`, `euro`, etc. are already defined globally.
6. The exercise requested is quite far from the reality of this kind of problem. It is a gross simplification so that it can be done in the expected time. If you have doubts when relating it to reality, ask the teachers so as not to make invalid assumptions.
