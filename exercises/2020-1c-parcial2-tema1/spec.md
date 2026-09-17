# Second Midterm 1c 2020 – Tema 1: Health and Hygiene protocols, and product shipping

## Recommendation on how to approach it

The exam consists of two independent sections. It is strongly recommended to first read and solve the first one, and then move on to read and solve the second one.

## Statement

The warehouse automation project was a success. While the robots go back and forth, the company's visionary president is already planning improvements for the 2nd semester.

Your task will be to model all the changes proposed below, extending the solution provided for the 1st midterm.

IMPORTANT: You must not have in your CUIS image the TusLibros solution, nor the 1st midterm one, because there are classes with the same names.

### 1. Health and hygiene: New protocols

The world has changed suddenly in the last months and, in order to keep working, we have to adapt to the new health and hygiene protocols.

Products pass through many hands before reaching the main warehouse (located in CABA) and along the way a product may get contaminated with some bacteria or virus. Every product now has a contamination index represented by a real number (the higher the number, the higher the contamination).

Due to this new reality, the company is gradually updating the trailers to incorporate cleaning devices into them.

In this first stage, the plan is to buy specifically two kinds of cleaning devices out of the wide variety currently on the market:

- **Bleach sprayer** (Rociador con Lavandina): Reduces the contamination level of a product by 3 points. If the product is of type A, the sprayer must not be activated, because these kinds of products are usually edible.
- **UV rays emitter**: Reduces the contamination of a product by 80%. In general a single pass of a cleaner with these characteristics is enough to decontaminate most products.

Thanks to the incorporated devices, these new smart trailers can perform the cleaning of the products by themselves at the moment a robot deposits them in the trailer. A trailer may incorporate multiple cleaners (even of the same kind) or none, in case it has not been updated yet, and it must be prepared to incorporate potential new kinds of cleaners that may be acquired in the future.

Due to how sudden the regulation was, and because the current model is in use, we are required that our implementation of these new trailers does not require modifying the current model (the restriction is that the class `Trailer` is the only one that cannot be modified).

### 2. Product shipping

Besides the cleaning, we are asked to model the shipping of products. A robot is told that it must ship the products in its trailer to a destination (the name of the city is enough) and before a delivery due date and time. To do so it takes the trailer with the products to the dispatch section of the distribution center. There it finds a row of cargo vehicles (motorbikes, trucks and unmanned autonomous drones) capable of and ready to transport trailers to their final destination. The cargo vehicles have a departure date and time from the warehouse, the name of a destination city, and a maximum total supported weight of trailer cargo (drones usually cannot carry more than 40 kg).

The robot must choose in which vehicle to place its trailer among those that can transport it in due time and form. That is, they go to the required destination, they arrive before the delivery due date and time, and they have available capacity in total weight to do it.

Among those that can carry it, the choice of where to place it can follow one of these two criteria:

- **Lightest vehicle**: The vehicle with the lowest total weight of trailers currently being transported is chosen.
- **Last to arrive**: The vehicle that arrives last among all those that arrive in time is chosen.

The criterion is unique (they are not combined), but it is desired that the robot's behaviour be configurable and modifiable at any moment, and also that new criteria can be added in the future without modifying code.

When the robot places the trailer in the chosen vehicle it no longer has access to it. If there is no vehicle available where to place it, it raises an informative exception.

There is a REST service external to the system with which one can know the time in hours that a kind of vehicle takes to go from one city to another (it may be the same city), and it returns an error if the destination is unreachable. E.g. deliveries from 'CABA' to 'CABA' by 'dron' take 4 hours, and deliveries from 'Salta' to 'Ushuaia' by 'moto' return an error. As a small help, notice that the queries to this system depend only on the vehicle and not on each shipment. Since we do not have access to the service in this iteration, and we want to make use of it, you are asked to simulate its internal side. Remember that orders always depart from CABA.

For the time being, and since this is a first version of the new iteration, we do not want to model what happens when the Robot is in states other than the normal/initial one at the moment of shipping the products, nor how the shipping impacts the previous functionalities.

## Spanish -> English

- Salud e Higiene: Health and Hygiene
- Lavandina: Bleach
- Comestible: Edible
- Rayos UV: UV Rays
- Limpiador: Cleaner
- Contaminado: Contaminated
- Almacen: Warehouse
- Fecha Limite: Due date
- Salida: Departure
- Camion: Truck
- Transporte de Carga: Cargo Vehicle
- Envío: Shipping
- Enviar: Ship

## Useful messages

- `July/22/2020 at: 15:00`
  - Creates an object that represents July 22nd 2020 at 15 hrs.
- `(July/22/2020 at: 15:00) next: 2 * hour`
  - Returns another object that represents July 22nd 2020 at 17 hrs, that is, 2 hrs later.
- Keep in mind that by using existing collection messages you can easily implement the different vehicle selection criteria, without having to implement the details of the algorithm yourselves.
