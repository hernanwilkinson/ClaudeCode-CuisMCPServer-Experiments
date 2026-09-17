'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:11:48 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance discount trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BajeCard class' category: #'2025-2C-2doParcial'!
BajeCard class
	instanceVariableNames: ''!

!classDefinition: #CardDiscount category: #'2025-2C-2doParcial'!
Object subclass: #CardDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'CardDiscount class' category: #'2025-2C-2doParcial'!
CardDiscount class
	instanceVariableNames: ''!

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
CardDiscount subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
CardDiscount subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
	instanceVariableNames: ''!

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
CardDiscount subclass: #StudentDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StudentDiscount class' category: #'2025-2C-2doParcial'!
StudentDiscount class
	instanceVariableNames: ''!

!classDefinition: #CardReader category: #'2025-2C-2doParcial'!
Object subclass: #CardReader
	instanceVariableNames: 'meansOfTransport'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'CardReader class' category: #'2025-2C-2doParcial'!
CardReader class
	instanceVariableNames: ''!

!classDefinition: #BusCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #BusCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusCardReader class' category: #'2025-2C-2doParcial'!
BusCardReader class
	instanceVariableNames: ''!

!classDefinition: #TurnstileCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #TurnstileCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileCardReader class' category: #'2025-2C-2doParcial'!
TurnstileCardReader class
	instanceVariableNames: ''!

!classDefinition: #SubwayCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #SubwayCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayCardReader class' category: #'2025-2C-2doParcial'!
SubwayCardReader class
	instanceVariableNames: ''!

!classDefinition: #TrainCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #TrainCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainCardReader class' category: #'2025-2C-2doParcial'!
TrainCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'distanceLimits costs'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #MeansOfTransport category: #'2025-2C-2doParcial'!
Object subclass: #MeansOfTransport
	instanceVariableNames: 'stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'MeansOfTransport class' category: #'2025-2C-2doParcial'!
MeansOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Stop category: #'2025-2C-2doParcial'!
Object subclass: #Stop
	instanceVariableNames: 'name distanceToHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Stop class' category: #'2025-2C-2doParcial'!
Stop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'meansOfTransport origin destination start paymentFraction'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitre busReader subwayReader trainReader'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
numberOfTrips

	^trips size! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BajeCard methodsFor: 'traveling' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
exitAt: aStop

	| refund |

	refund := trips last changeDestinationTo: aStop.
	balance := balance + refund.
	^refund! !

!BajeCard methodsFor: 'traveling' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
travelIn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip |

	trip := Trip in: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: (self paymentFractionAt: aDateTime).
	self assertCanPay: trip cost.
	balance := balance - trip cost.
	trips add: trip.
	^trip cost! !

!BajeCard methodsFor: 'traveling - private' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
paymentFractionAt: aDateTime

	^(discount paymentFractionAt: aDateTime for: self) min: (self transferPaymentFractionAt: aDateTime)! !

!BajeCard methodsFor: 'traveling - private' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
transferPaymentFractionAt: aDateTime

	(trips notEmpty and: [ trips last isTransferAt: aDateTime ]) ifTrue: [ ^1/2 ].
	^1! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
assertCanPay: aCost

	aCost > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!CardDiscount methodsFor: 'payment' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
paymentFractionAt: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'payment' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
paymentFractionAt: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'payment' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
paymentFractionAt: aDateTime for: aCard

	(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay ifTrue: [ ^0 ].
	^1! !

!RetireeDiscount class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'payment' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
paymentFractionAt: aDateTime for: aCard

	| date |

	date := aDateTime date.
	(date isSaturday or: [ date isSunday ]) ifTrue: [ ^1 ].
	^1/2! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
initializeFor: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
for: aMeansOfTransport

	^self new initializeFor: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard travelIn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	meansOfTransport assertIsDirection: aDirection.
	^aCard travelIn: meansOfTransport from: aStop to: aDirection at: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
chargeExitOf: aCard at: aStop

	^aCard exitAt: aStop! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
initializeUpTo: aCollectionOfDistanceLimits costs: aCollectionOfCosts

	distanceLimits := aCollectionOfDistanceLimits.
	costs := aCollectionOfCosts! !

!FareTable methodsFor: 'costs' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
costFor: aDistance

	^costs at: (distanceLimits findFirst: [ :aDistanceLimit | aDistance <= aDistanceLimit ])! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
fixed: aCost

	^self upTo: { PlusInfinity new } costs: { aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
upTo: distanceLimits costs: costs

	^self new initializeUpTo: distanceLimits costs: costs! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
initializeWithStops: aCollectionOfStops fareTable: aFareTable

	stops := aCollectionOfStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
headStop

	^stops detectMin: [ :aStop | aStop distanceToHead ]! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
lastStop

	^stops detectMax: [ :aStop | aStop distanceToHead ]! !

!MeansOfTransport methodsFor: 'costs' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
assertIsDirection: aStop

	(aStop = self headStop or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aCollectionOfStops.
	^self new initializeWithStops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
assertHasAtLeastTwoStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and the destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop is not part of the route of the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:47 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
initializeIn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPaymentFraction

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	paymentFraction := aPaymentFraction! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
cost

	^(meansOfTransport costFrom: origin to: destination) * paymentFraction! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
isTransferAt: aDateTime

	^(start distanceTo: aDateTime) <= self class transferTimeLimit! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'destination' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
changeDestinationTo: aStop

	| previousCost |

	meansOfTransport assertIsValidTripFrom: origin to: aStop.
	previousCost := self cost.
	destination := aStop.
	^previousCost - self cost! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
in: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPaymentFraction

	aMeansOfTransport assertIsValidTripFrom: anOrigin to: aDestination.
	^self new initializeIn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPaymentFraction! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:10:48 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!TransportSystemTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable upTo: { 5 * kilometer. 10 * kilometer. PlusInfinity new } costs: { 600 * peso. 1000 * peso. 1300 * peso }).

	congreso := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport withStops: { congreso. tribunales. callao. palermo } fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := MeansOfTransport
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable upTo: { 15 * kilometer. PlusInfinity new } costs: { 400 * peso. 600 * peso }).

	busReader := BusCardReader for: line60.
	subwayReader := SubwayCardReader for: subwayD.
	trainReader := TrainCardReader for: mitre! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
on: aDate at: anHour minutes: aMinute

	^aDate atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
saturdayAt: anHour minutes: aMinute

	^self on: (November twentysecond, 2025) at: anHour minutes: aMinute! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
tuesdayAt: anHour minutes: aMinute

	^self on: (November twentyfifth, 2025) at: anHour minutes: aMinute! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test01BusChargesAccordingToDistanceWithoutDiscount

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self assert: 600 * peso equals: (busReader charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test02StudentPaysHalfOnWeekdaysEvenOnHolidays

	| card |

	card := BajeCard studentWithBalance: 5000 * peso.

	self assert: 650 * peso equals: (busReader charge: card from: constitucion to: belgrano at: (self on: (November twentyfourth, 2025) at: 11 minutes: 0)).
	self assert: 4350 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test03StudentPaysFullPriceOnWeekends

	| card |

	card := BajeCard studentWithBalance: 5000 * peso.

	self assert: 1300 * peso equals: (busReader charge: card from: constitucion to: belgrano at: (self saturdayAt: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test04RetireeTravelsForFreeTheFirstTwoTripsOfTheDay

	| card |

	card := BajeCard retireeWithBalance: 5000 * peso.

	self assert: 0 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: congreso at: (self saturdayAt: 9 minutes: 0)).
	self assert: 0 * peso equals: (subwayReader charge: card boardingAt: congreso towards: palermo at: (self saturdayAt: 12 minutes: 0)).
	self assert: 1000 * peso equals: (subwayReader charge: card boardingAt: palermo towards: congreso at: (self saturdayAt: 18 minutes: 0)).
	self assert: 4000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test05RetireeFreeTripsAreCountedPerDay

	| card |

	card := BajeCard retireeWithBalance: 5000 * peso.

	subwayReader charge: card boardingAt: tribunales towards: congreso at: (self saturdayAt: 9 minutes: 0).
	subwayReader charge: card boardingAt: congreso towards: palermo at: (self saturdayAt: 12 minutes: 0).

	self assert: 0 * peso equals: (subwayReader charge: card boardingAt: palermo towards: congreso at: (self tuesdayAt: 9 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test06SubwayChargesAFixedCost

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self assert: 1000 * peso equals: (subwayReader charge: card boardingAt: callao towards: palermo at: (self tuesdayAt: 9 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test07TrainChargesOnEntryAccordingToDistanceToDirection

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self assert: 600 * peso equals: (trainReader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self saturdayAt: 9 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test08TrainRefundsTheDifferenceOnExit

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	trainReader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self saturdayAt: 9 minutes: 0).

	self assert: 200 * peso equals: (trainReader chargeExitOf: card at: belgranoMitre).
	self assert: 4600 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test09TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |

	card := BajeCard studentWithBalance: 5000 * peso.
	trainReader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self tuesdayAt: 9 minutes: 0).

	self assert: 100 * peso equals: (trainReader chargeExitOf: card at: belgranoMitre).
	self assert: 4800 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test10TrainExitAtTheDirectionRefundsNothing

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	trainReader charge: card boardingAt: belgranoMitre towards: tigre at: (self saturdayAt: 9 minutes: 0).

	self assert: 0 * peso equals: (trainReader chargeExitOf: card at: tigre).
	self assert: 4400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:11:33 am (UTC)'!
test23TrainWithoutExitKeepsTheEntryCharge

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	trainReader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self saturdayAt: 9 minutes: 0).

	self assert: 600 * peso equals: (busReader charge: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 12 minutes: 0)).
	self assert: 3800 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test11TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self assert: 600 * peso equals: (busReader charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 500 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30)).
	self assert: 300 * peso equals: (trainReader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self tuesdayAt: 12 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test12TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 1000 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 12 minutes: 1))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test13StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |

	card := BajeCard studentWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |

	card := BajeCard studentWithBalance: 5000 * peso.

	self assert: 600 * peso equals: (busReader charge: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0)).
	self assert: 500 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips

	| card |

	card := BajeCard retireeWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0).
	busReader charge: card from: plazaDeMayo to: retiro at: (self saturdayAt: 10 minutes: 30).

	self assert: 500 * peso equals: (subwayReader charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test16CanNotTravelWithoutEnoughBalance

	| card |

	card := BajeCard withoutDiscountWithBalance: 500 * peso.

	self should: [ busReader charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ] failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test17OriginMustBelongToTheMeansOfTransport

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self should: [ busReader charge: card from: tribunales to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test18DestinationMustBelongToTheMeansOfTransportEvenWithTheSameName

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self should: [ busReader charge: card from: constitucion to: retiroMitre at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test19OriginAndDestinationMustBeDifferent

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self should: [ busReader charge: card from: retiro to: retiro at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self should: [ subwayReader charge: card boardingAt: palermo towards: palermo at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops

	self should: [ MeansOfTransport withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ] failWith: MeansOfTransport atLeastTwoStopsErrorDescription.
	self should: [ MeansOfTransport withStops: #() fareTable: (FareTable fixed: 1000 * peso) ] failWith: MeansOfTransport atLeastTwoStopsErrorDescription! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test21SubwayDirectionMustBeHeadOrLastStop

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self should: [ subwayReader charge: card boardingAt: tribunales towards: callao at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:11:29 am (UTC)'!
test22TrainDirectionMustBeHeadOrLastStop

	| card |

	card := BajeCard withoutDiscountWithBalance: 5000 * peso.

	self should: [ trainReader charge: card boardingAt: tigre towards: belgranoMitre at: (self tuesdayAt: 10 minutes: 0) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 0 equals: card numberOfTrips! !
