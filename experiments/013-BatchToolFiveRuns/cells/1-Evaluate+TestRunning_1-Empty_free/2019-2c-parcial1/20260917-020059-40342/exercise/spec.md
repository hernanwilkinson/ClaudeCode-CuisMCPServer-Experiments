# Ada's Coffee Shop Rewards

## Statement

A very important coffee chain called "Ada's Coffee Shop" has a system to reward its most loyal customers based on the products they buy and the type of customer they are.

The system was built by someone else and now you have to maintain it. Luckily it has several tests; however, before leaving, the programmer who built it said that there is some duplicated code and a few `if`s that it would be good to remove.

Regarding the business of Ada's Coffee Shop, keep in mind that:

1. There are two types of products:
   a. Combo 1: it costs 150 pesos and the coffee is 250 milliliters.
   b. Combo 2: it costs 120 pesos and the coffee is 100 milliliters.
2. There are three types of customers: Gold, Silver and Normal.
3. Once a month it is decided to reward customers based on the amount of coffee they bought, according to the following two rules:
   a. If the customer consumed between 300 and 500 milliliters inclusive, the reward is one Combo2 with a price that depends on the type of customer.
   b. If the customer consumed more than 500 milliliters, the reward is a Combo1 where the price also depends on the type of customer.

   You can see in the implementations of the message `#createRewardFor:` how that price is decided.

After analyzing the model a bit, you realize that:

1. There is duplicated code in tests 2 and 3.
2. There is also duplicated code in the last 6 tests.
3. There are several `if`s that can be replaced by polymorphism.

Your mission is to carry out the improvements named in the 3 points above.

Good luck!
