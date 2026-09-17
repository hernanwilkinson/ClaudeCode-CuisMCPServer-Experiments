# Make-up Exam 1c 2020 – Vehicles that carry vehicles and mountable trailers

## What will be taken into account in the evaluation

You may leave the removal of repeated code from the tests for last.

## Statement

The storage and dispatch company keeps growing. The pandemic has made online purchases skyrocket and therefore the business is growing at an accelerated pace.

That is why, to face the growing demand, it has been decided to:

1) Make better use of the distribution vehicles.
2) Speed up the collection of products with new kinds of trailers.

Regarding the distribution of products, it was observed that there are certain vehicles that have room to carry other vehicles.

The carried vehicles (carried by) will depart from the destination city of the vehicle that transports them (conveyor). This way the route of the conveying vehicle is taken advantage of.

Remember that there are three kinds of vehicles: trucks, motorbikes and drones. It is important to keep in mind that **a kind of vehicle cannot carry any kind of vehicle**. Trucks can only carry motorbikes and drones, motorbikes can only carry drones and drones cannot carry any kind of vehicle.

To be able to carry a vehicle it must also hold that **the departure city of the carried vehicle must be the destination of the conveying vehicle** (that is, it no longer holds that all vehicles depart from CABA) and **the departure time of the carried vehicle must be later than the arrival time of the conveying vehicle**.

For example, it is valid to have a truck that departs from CABA and arrives at Córdoba capital at 10:00, which carries a drone whose origin is Córdoba and departs at 11:00. It would not be valid if the drone departed from Santa Fé or had to depart at 9:00.

Therefore, now when a robot's products are shipped, it is also necessary to check whether any of the carried vehicles can be used to ship those products.

**The weight of a carried vehicle must not affect the total weight of the vehicle**, that is, the total weight of a vehicle keeps being computed only with the weight of the products it carries.

Remark: Several vehicles can be carried (at this moment we do not worry about the restrictions on how many).

As for the trailers, trailers that allow other trailers to be mounted into them (**mountable trailer**, trailer encastrable) were bought. That is, this new kind of trailer can have 1 or more trailers of the already existing kinds (`Trailer` or `CleaningTrailer`) as well as mountable trailers.

When a product is put in a mountable trailer, it decides in which of the trailers mounted into it the product must be put, following one of the following **selection rules**:

a) Select the trailer that allows carrying the most weight (no matter what it is currently carrying).
b) Select the lightest trailer (the one that is carrying the least weight).

The selection rule is defined when configuring the trailer and cannot change. There is no need to verify that a mountable trailer with mountable trailers has the same selection rule. It is assumed that they will always be built correctly with the same selection rule.

Mountable trailers are taken as a single unit to compute their capacity or the weight of what they carry; however, it never contains products, rather the trailers of kind `Trailer` or `CleaningTrailer` are the ones added.

Keep in mind that:

1) You cannot have mountable trailers without any trailer. It must have at least one trailer.
2) Trailers cannot be shared among mountable trailers.
3) It may happen that it is decided to put a product in a trailer and it does not accept it because it has no more room. In that case, it must move on to the next trailer that meets the condition.
4) For an optimization that will be done later, each mountable trailer needs to keep a count of how many times a product could not be put in each trailer it has. That is, for each mounted trailer it must be known how many times it failed to take a product.
5) Mountable trailers cannot be shipped. That is, when the distribution is being done, the non-mountable trailers are the ones to be added to the cargo vehicles.
