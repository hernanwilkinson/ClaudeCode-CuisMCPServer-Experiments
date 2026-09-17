# ISW1-Perforaciones (Drilling Simulator)

ISW1-Perforaciones is building a simulation environment in which to test the next generation of
drilling machines (perforadoras). Our team will be in charge of polishing the code before
development continues, so that we have a good base from which to keep building the system.

## Perfo-Simulator!

In the simulation environment we will have a vertical drill (perforadora vertical) equipped with
a single drill bit (mecha), of which there can be 3 types. On the other hand, there are different
types of soil that the drill can run into: sandy soil (suelo arenoso), earth (tierra) and concrete
(concreto).

Let us look at the different elements of our system so far:

### Vertical drill

The drill has a drilling arm where we can install a drill bit; it also has a sieve arm (brazo
tamiz, see section 2) and, in addition, it has a sonar that gives us information about the soil to
be drilled.

*(Picture: a vertical drill equipped with a diamond bit. Credits: image by brgfx on Freepik.)*

### 1. Drill bits (mechas de perforación)

Drill bits are interchangeable, that is, at some point the drill may be equipped with one type of
bit, and later another bit of a different type may be installed. There are 3 types of bits, which
react differently depending on the soil being drilled.

These are the 3 types of bits (ordered from lowest to highest hardness):

- soft
- widia (tungsten carbide)
- diamond (diamante)

A non-minor issue is that when a bit hits the soil, it may end up broken and can no longer be used
(see the item *Interaction of bits with soil types*).

### Soil layer types (tipos de capa de suelo)

The soil itself is a set of layers. We have 3 types of soil layers (ordered from lowest to highest
hardness):

- Sandy (Arenoso)
- Earth (Tierra)
- Concrete (Concreto)

In the case of the concrete layer, it additionally has a resistance value that goes from 0 to 10
Newtons¹. When hit by the bit, its resistance decreases (more on this in the section *Interaction
of bits with soil types*).

All soil layers have a thickness (grosor), and it is independent of the layer type. For example,
we can have a sandy soil layer of 10 cm followed by a concrete layer of 50 m, finishing with a
sandy layer of 5 cm.

¹ Newton is a unit of force equivalent to kg·m/s².

### Soil (suelo)

A soil is composed of layers. Each layer has a type, as already detailed in the previous section.
It is important to point out that there cannot be a soil with two contiguous layers of the same
type.

Here we can see the drill over a soil of 3 layers:

*(Diagram: the drill standing on top of three stacked layers, from top to bottom: TIERRA,
ARENOSA, CONCRETO.)*

### Interaction of bits with soil types

Each type of bit interacts differently depending on the soil layer it is hitting. Below we list the
different outcomes:

a. Soft bit against a:
   i. Sandy layer: removes the layer in one hit.
   ii. Earth layer: nothing happens.
   iii. Concrete layer: the bit breaks.

b. Widia bit against a:
   i. Sandy layer: removes the layer in one hit.
   ii. Earth layer: in two hits it transforms the layer into sandy ground.
   iii. Concrete layer: up to two hits nothing happens (that is, the concrete's resistance does
        not go down), and if there is a third hit the bit breaks.

c. Diamond bit against a:
   i. Sandy layer: the bit breaks!
   ii. Earth layer: removes the layer in one hit.
   iii. Concrete layer: lowers the resistance by 1 Newton every two hits. When resistance reaches
        0 it transforms the soil into sandy.

### 2. Sieve (tamiz) - Eureka, final find!

When drilling finishes, that is, when all the layers have been removed, in some cases we will find
nothing; but with luck, we will find different types of stones. In this case, our drill can use its
mechanical sieve to pick up stones and store them in its container (only stones whose diameter is
greater than 5 cm are caught in the sieve). At any time we can observe how many stones we have
managed to store in the vertical drill's Container.

### 3. Sonar

The drill has a sonar that lets it scan a soil layer. For the moment this is simplified in the
model as a simple send of the message `scan` to the layer. That message answers a value that
depends on the layer type. So, for the moment, in the simulation a Sandy layer type always has
7 cm, while an Earth layer has 10 and a Concrete layer has 50 cm. You are not asked to improve
this part of the model, but to improve the implementation of the methods related to the sonar
(see *Work to do*, item 4).

## Work to do

Functionally almost everything is developed and there are tests that validate the model. However,
it does not have a good design for several reasons seen in class. You are asked to improve the
model in the following:

1. Remove the ifs that can be replaced by the use of polymorphism, using the method seen in class.
2. Remove duplicated code and make it more declarative where appropriate, both in the model and in
   the tests.
3. Improve the implementations of:
   a. `Perforadora#calcularProfundidadDelSuelo`
   b. `Perforadora#calcularProfundidadDelSueloHasta:`
   c. `Perforadora#contarCapas:`
4. Add the following functionality (which is in the statement but is not yet in the model), which
   says that: "it must not be possible to create a soil where two contiguous layers are of the same
   soil type."
5. Improve the design in everything you consider necessary without altering the behaviour
   (objects complete and correct from their creation, do not break encapsulation, remove unused
   messages, delete unused variables, categorize messages, create class hierarchies where
   appropriate, reuse already existing collection messages, etc.)

Comments:

- Regarding removing ifs, concentrate first on the method `Perforadora#darGolpeDeTaladro`.
- Note that the `scan` values for each layer type are "scattered" all over the model.

All tests must keep working. We recommend not modifying the tests functionally (only for
refactors).
