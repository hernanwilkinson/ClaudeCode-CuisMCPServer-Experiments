'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:00:30 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BAJECard category: #'2025-2C-2doParcial'!
Object subclass: #BAJECard
	instanceVariableNames: 'balance discount trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BAJECard class' category: #'2025-2C-2doParcial'!
BAJECard class
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

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'faresByDistanceLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #MeanOfTransport category: #'2025-2C-2doParcial'!
Object subclass: #MeanOfTransport
	instanceVariableNames: 'stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'MeanOfTransport class' category: #'2025-2C-2doParcial'!
MeanOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Bus category: #'2025-2C-2doParcial'!
MeanOfTransport subclass: #Bus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Bus class' category: #'2025-2C-2doParcial'!
Bus class
	instanceVariableNames: ''!

!classDefinition: #StationTransport category: #'2025-2C-2doParcial'!
MeanOfTransport subclass: #StationTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StationTransport class' category: #'2025-2C-2doParcial'!
StationTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
StationTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
StationTransport subclass: #Train
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Train class' category: #'2025-2C-2doParcial'!
Train class
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
	instanceVariableNames: 'origin start fullPrice payingRate'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD mitreRetiro mitreBelgrano sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
numberOfTripsStartedOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
adjustLastTripCosting: aFareFromOriginBlock

	| lastTrip adjustedTrip difference |
	lastTrip := trips last.
	adjustedTrip := lastTrip costingInstead: (aFareFromOriginBlock value: lastTrip origin).
	difference := adjustedTrip charge - lastTrip charge.
	self withdraw: difference.
	trips removeLast; add: adjustedTrip.
	^difference! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payTripFrom: anOrigin startingOn: aDateTime costing: aFullPrice

	| trip |
	trip := Trip from: anOrigin startingOn: aDateTime costing: aFullPrice payingRate: (self payingRateForTripStartingOn: aDateTime).
	self withdraw: trip charge.
	trips add: trip.
	^trip charge! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payingRateForTripStartingOn: aDateTime

	^(discount payingRateForTripStartingOn: aDateTime of: self) min: (self transferPayingRateOn: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
transferPayingRateOn: aDateTime

	^(trips notEmpty and: [ trips last allowsTransferOn: aDateTime ])
		ifTrue: [ 1/2 ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
withdraw: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - anAmount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!CardDiscount methodsFor: 'paying rate' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payingRateForTripStartingOn: aDateTime of: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying rate' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payingRateForTripStartingOn: aDateTime of: aCard

	^1! !

!RetireeDiscount methodsFor: 'paying rate' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payingRateForTripStartingOn: aDateTime of: aCard

	^(aCard numberOfTripsStartedOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying rate' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
payingRateForTripStartingOn: aDateTime of: aCard

	^(self isWeekend: aDateTime date day)
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
isWeekend: aDay

	^aDay = Saturday or: [ aDay = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
initializeWithFaresUpTo: distanceLimitsAndFares

	faresByDistanceLimit := distanceLimitsAndFares! !

!FareTable methodsFor: 'fares' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
fareFor: aDistance

	^(faresByDistanceLimit detect: [ :distanceLimitAndFare | aDistance <= distanceLimitAndFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
fixed: aFare

	^self withFaresUpTo: { PlusInfinity new -> aFare }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
withFaresUpTo: distanceLimitsAndFares

	"distanceLimitsAndFares is a collection of associations distance limit -> fare, from the shortest limit to the longest"
	^self new initializeWithFaresUpTo: distanceLimitsAndFares! !

!MeanOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
initializeStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!MeanOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
head

	^stops first! !

!MeanOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
includesStop: aStop

	^stops includes: aStop! !

!MeanOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
lastStop

	^stops last! !

!MeanOfTransport methodsFor: 'fares' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!MeanOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
assertIncludes: aStop

	(self includesStop: aStop) ifFalse: [ self error: self class stopNotInTransportErrorDescription ]! !

!MeanOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeanOfTransport methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.
	^aCard payTripFrom: anOrigin startingOn: aDateTime costing: (self fareFrom: anOrigin to: aDestination)! !

!MeanOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
stops: aStops fareTable: aFareTable

	self assertHasEnoughStops: aStops.
	^self new initializeStops: aStops fareTable: aFareTable! !

!MeanOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
assertHasEnoughStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeanOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
notEnoughStopsErrorDescription

	^'A mean of transport must have at least two stops'! !

!MeanOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeanOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
stopNotInTransportErrorDescription

	^'The stop does not belong to this mean of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime

	^self charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime! !

!StationTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self assertIsValidDirection: aDirection.
	^self charge: aCard forTripFrom: aStop to: aDirection on: aDateTime! !

!StationTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
assertIsValidDirection: aDirection

	(aDirection == self head or: [ aDirection == self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!StationTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
charge: aCard gettingOffAt: aStop

	^aCard adjustLastTripCosting: [ :anOrigin | self fareFrom: anOrigin to: aStop ]! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
initializeFrom: anOrigin startingOn: aDateTime costing: aFullPrice payingRate: aPayingRate

	origin := anOrigin.
	start := aDateTime.
	fullPrice := aFullPrice.
	payingRate := aPayingRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
charge

	^fullPrice * payingRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
allowsTransferOn: aDateTime

	^(aDateTime distanceFrom: start) <= (2 * hour)! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
costingInstead: aFullPrice

	^self class from: origin startingOn: start costing: aFullPrice payingRate: payingRate! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:24 am (UTC)'!
from: anOrigin startingOn: aDateTime costing: aFullPrice payingRate: aPayingRate

	^self new initializeFrom: anOrigin startingOn: aDateTime costing: aFullPrice payingRate: aPayingRate! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withFaresUpTo: { (5 * kilometer) -> (600 * peso). (10 * kilometer) -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	mitreRetiro := Stop named: 'Retiro' at: 0 * kilometer.
	mitreBelgrano := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTrain := Train
		stops: { mitreRetiro. mitreBelgrano. sanIsidro. tigre }
		fareTable: (FareTable withFaresUpTo: { (15 * kilometer) -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
cardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
on: aDate at: hours

	^self on: aDate at: hours minutes: 0! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
on: aDate at: hours minutes: minutes

	^aDate atTimeOfDay: (TimeOfDay hours: hours minutes: minutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test01BusChargesFareOfDistanceBetweenOriginAndDestination

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test02BusChargesFaresOfEachDistanceRange

	self assert: 1000 * peso equals: (line60 charge: self cardWithoutDiscount from: plazaDeMayo to: belgrano on: (self on: November twentyfifth, 2025 at: 10)).
	self assert: 1300 * peso equals: (line60 charge: self cardWithoutDiscount from: belgrano to: constitucion on: (self on: November twentyfifth, 2025 at: 10))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test03StudentPaysHalfFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 1000 * peso.

	self assert: 650 * peso equals: (line60 charge: card from: constitucion to: belgrano on: (self on: November twentyfourth, 2025 at: 11)).
	self assert: 350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: (line60 charge: (BAJECard studentWithBalance: 2000 * peso) from: constitucion to: belgrano on: (self on: November twentysecond, 2025 at: 11)).
	self assert: 1300 * peso equals: (line60 charge: (BAJECard studentWithBalance: 2000 * peso) from: constitucion to: belgrano on: (self on: November twentythird, 2025 at: 11))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |
	card := BAJECard retireeWithBalance: 2000 * peso.

	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self on: November twentysecond, 2025 at: 9)).
	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self on: November twentysecond, 2025 at: 12)).
	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self on: November twentysecond, 2025 at: 15)).
	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self on: November twentythird, 2025 at: 9)).
	self assert: 1000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test06SubwayChargesAlwaysTheSameFare

	self assert: 1000 * peso equals: (subwayD charge: self cardWithoutDiscount boardingAt: tribunales towards: congresoDeTucuman on: (self on: November twentyfifth, 2025 at: 9)).
	self assert: 1000 * peso equals: (subwayD charge: self cardWithoutDiscount boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 9))! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test07TrainChargesFareToTheEndOfTheDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (mitreTrain charge: card boardingAt: sanIsidro towards: mitreRetiro on: (self on: November twentysecond, 2025 at: 9)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test08TrainRefundsDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: mitreRetiro on: (self on: November twentysecond, 2025 at: 9).

	self assert: -200 * peso equals: (mitreTrain charge: card gettingOffAt: mitreBelgrano).
	self assert: 9600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test09TrainRefundsOnExitWithTheDiscountAppliedOnEntry

	| card |
	card := BAJECard studentWithBalance: 1000 * peso.
	mitreTrain charge: card boardingAt: sanIsidro towards: mitreRetiro on: (self on: November twentyfifth, 2025 at: 9).
	mitreTrain charge: card gettingOffAt: mitreBelgrano.

	self assert: 800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:00:16 pm (UTC)'!
test10TrainAdjustsNothingWhenExitingAtTheEndOfTheDirection

	| card |
	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: mitreBelgrano towards: tigre on: (self on: November twentyfifth, 2025 at: 9).

	self assert: 0 * peso equals: (mitreTrain charge: card gettingOffAt: tigre).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test11TripWithinTwoHoursOfLastTripStartPaysHalf

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10)).
	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 10 minutes: 30)).
	self assert: 500 * peso equals: (subwayD charge: card boardingAt: palermo towards: congresoDeTucuman on: (self on: November twentyfifth, 2025 at: 12 minutes: 30)).
	self assert: 8400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test12TripAfterTwoHoursOfLastTripStartPaysFullPrice

	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10).

	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test13StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	card := BAJECard studentWithBalance: 2000 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10).

	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |
	card := BAJECard studentWithBalance: 2000 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentysecond, 2025 at: 10).

	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentysecond, 2025 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips

	| card |
	card := BAJECard retireeWithBalance: 2000 * peso.
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 10).

	self assert: 0 * peso equals: (subwayD charge: card boardingAt: palermo towards: congresoDeTucuman on: (self on: November twentyfifth, 2025 at: 10 minutes: 30)).
	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo on: (self on: November twentyfifth, 2025 at: 11))! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 599 * peso.

	self
		should: [ line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test17CanPayWithExactBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 600 * peso.

	line60 charge: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10).
	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test18OriginMustBelongToTheMeanOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 charge: card from: mitreRetiro to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: MeanOfTransport stopNotInTransportErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test19DestinationMustBelongToTheMeanOfTransport

	self
		should: [ line60 charge: self cardWithoutDiscount from: constitucion to: tribunales on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: MeanOfTransport stopNotInTransportErrorDescription.
	self
		should: [ subwayD charge: self cardWithoutDiscount boardingAt: retiro towards: palermo on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: MeanOfTransport stopNotInTransportErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test20OriginAndDestinationMustBeDifferent

	self
		should: [ line60 charge: self cardWithoutDiscount from: retiro to: retiro on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: MeanOfTransport sameOriginAndDestinationErrorDescription.
	self
		should: [ mitreTrain charge: self cardWithoutDiscount boardingAt: tigre towards: tigre on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: MeanOfTransport sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test21MeanOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus stops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: MeanOfTransport notEnoughStopsErrorDescription.
	self
		should: [ Subway stops: #() fareTable: (FareTable fixed: 100 * peso) ]
		failWith: MeanOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 12:00:10 pm (UTC)'!
test22DirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD charge: card boardingAt: tribunales towards: callao on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: StationTransport invalidDirectionErrorDescription.
	self
		should: [ mitreTrain charge: card boardingAt: mitreRetiro towards: sanIsidro on: (self on: November twentyfifth, 2025 at: 10) ]
		failWith: StationTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !
