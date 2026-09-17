'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:25:19 am'!
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

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'costsByUpperLimit'
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

!classDefinition: #Bus category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #Bus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Bus class' category: #'2025-2C-2doParcial'!
Bus class
	instanceVariableNames: ''!

!classDefinition: #TurnstileMeansOfTransport category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #TurnstileMeansOfTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileMeansOfTransport class' category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport subclass: #Train
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
	instanceVariableNames: 'origin destination start rate cost'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroLine60 belgranoLine60 line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
adjustLastTripEndingAt: aStop of: aMeansOfTransport

	| trip previousCharge |
	trip := trips last.
	previousCharge := trip charge.
	trip endAt: aStop costing: (aMeansOfTransport costFrom: trip origin to: aStop).
	balance := balance + previousCharge - trip charge.
	^previousCharge - trip charge! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
payTripFrom: anOrigin to: aDestination costing: aCost on: aDateTime

	| trip |
	trip := Trip from: anOrigin to: aDestination startingOn: aDateTime costing: aCost withRate: (discount rateForTripOn: aDateTime of: self).
	trip charge > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - trip charge.
	trips add: trip.
	^trip charge! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ (trips last start distanceTo: aDateTime) <= self transferPeriod ]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :trip | trip startedOn: aDate ]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
transferPeriod

	^2 * hour! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
transferRateAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
rateForTripOn: aDateTime of: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
rateForTripOn: aDateTime of: aCard

	^aCard transferRateAt: aDateTime! !

!RetireeDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
freeTripsPerDay

	^2! !

!RetireeDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
rateForTripOn: aDateTime of: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard transferRateAt: aDateTime ]! !

!StudentDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!StudentDiscount methodsFor: 'rate' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
rateForTripOn: aDateTime of: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ aCard transferRateAt: aDateTime ]
		ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
initializeWithCostsByUpperLimit: anArrayOfAssociations

	costsByUpperLimit := anArrayOfAssociations! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
costFor: aDistance

	^(costsByUpperLimit detect: [ :upperLimitAndCost | aDistance <= upperLimitAndCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
fixed: aCost

	^self withCostsByUpperLimit: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
withCostsByUpperLimit: anArrayOfAssociations

	^self new initializeWithCostsByUpperLimit: anArrayOfAssociations! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
initializeWithStops: aCollectionOfStops fareTable: aFareTable

	stops := aCollectionOfStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
assertValidTripFrom: anOrigin to: aDestination

	((self includes: anOrigin) and: [ (self includes: aDestination) and: [ anOrigin ~= aDestination ]])
		ifFalse: [ self error: self class invalidTripErrorDescription ]! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime

	self assertValidTripFrom: anOrigin to: aDestination.
	^aCard
		payTripFrom: anOrigin
		to: aDestination
		costing: (self costFrom: anOrigin to: aDestination)
		on: aDateTime! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasAtLeastTwo: aCollectionOfStops.
	^self new initializeWithStops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
assertHasAtLeastTwo: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
invalidTripErrorDescription

	^'Origin and destination must be different stops of the means of transport'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!Bus methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination on: aDateTime

	^self charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
chargeBoardingOf: aCard at: aStop towards: aDirection on: aDateTime

	self assertIsValidDirection: aDirection.
	^self charge: aCard forTripFrom: aStop to: aDirection on: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
assertIsValidDirection: aDirection

	(aDirection = stops first or: [ aDirection = stops last ])
		ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Subway class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
withStops: aCollectionOfStops fixedCost: aCost

	^self withStops: aCollectionOfStops fareTable: (FareTable fixed: aCost)! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
chargeExitOf: aCard at: aStop on: aDateTime

	^aCard adjustLastTripEndingAt: aStop of: self! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingOn: aDateTime costing: aCost withRate: aRate

	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	cost := aCost.
	rate := aRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
charge

	^cost * rate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
endAt: aStop costing: aCost

	destination := aStop.
	cost := aCost! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:24:12 am (UTC)'!
from: anOrigin to: aDestination startingOn: aDateTime costing: aCost withRate: aRate

	^self new initializeFrom: anOrigin to: aDestination startingOn: aDateTime costing: aCost withRate: aRate! !

!PublicTransportTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroLine60 := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoLine60 := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		withStops: { constitucion. plazaDeMayo. retiroLine60. belgranoLine60 }
		fareTable: (FareTable withCostsByUpperLimit: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway withStops: { congresoDeTucuman. tribunales. callao. palermo } fixedCost: 1000 * peso.

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := Train
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsByUpperLimit: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
cardWithoutDiscount

	^BajeCard withBalance: 5000 * peso discount: NoDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
on: aDate at: hours

	^self on: aDate at: hours minutes: 0! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
on: aDate at: hours minutes: minutes

	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: hours minutes: minutes)! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
retireeCard

	^BajeCard withBalance: 5000 * peso discount: RetireeDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
studentCard

	^BajeCard withBalance: 5000 * peso discount: StudentDiscount new! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test01BusChargesFullPriceToCardWithoutDiscount

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10)).
	self assert: 4400 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test02BusCostDependsOnDistance

	self assert: 600 * peso equals: (line60 costFrom: plazaDeMayo to: constitucion).
	self assert: 1000 * peso equals: (line60 costFrom: constitucion to: retiroLine60).
	self assert: 1300 * peso equals: (line60 costFrom: constitucion to: belgranoLine60).
	self assert: 600 * peso equals: (line60 costFrom: retiroLine60 to: belgranoLine60)! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |
	card := self studentCard.

	self assert: 650 * peso equals: (line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self on: November/24/2025 at: 11)).
	self assert: 4350 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |
	card := self studentCard.

	self assert: 1300 * peso equals: (line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self on: November/22/2025 at: 11)).
	self assert: 1300 * peso equals: (line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self on: November/23/2025 at: 11))! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |
	card := self retireeCard.

	self assert: 0 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: congresoDeTucuman on: (self on: November/22/2025 at: 9)).
	self assert: 0 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 12)).
	self assert: 1000 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 15)).
	self assert: 4000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test06RetireeFreeTripsRestartEachDay

	| card |
	card := self retireeCard.

	subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 9).
	subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 12).

	self assert: 0 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/23/2025 at: 9)).
	self assert: 5000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test07SubwayCostIsFixed

	| card |
	card := self cardWithoutDiscount.

	self assert: 1000 * peso equals: (subwayD chargeBoardingOf: card at: callao towards: palermo on: (self on: November/25/2025 at: 9)).
	self assert: 1000 * peso equals: (subwayD chargeBoardingOf: card at: palermo towards: congresoDeTucuman on: (self on: November/25/2025 at: 18))! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test08TrainChargesByDistanceToDirectionAndRefundsOnExit

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (mitreTigre chargeBoardingOf: card at: sanIsidro towards: retiroMitre on: (self on: November/22/2025 at: 9)).
	self assert: 200 * peso equals: (mitreTigre chargeExitOf: card at: belgranoMitre on: (self on: November/22/2025 at: 9 minutes: 30)).
	self assert: 4600 * peso equals: card balance.
	self assert: belgranoMitre equals: card trips last destination! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test09TrainKeepsEntryChargeWhenNotExiting

	| card |
	card := self cardWithoutDiscount.

	mitreTigre chargeBoardingOf: card at: sanIsidro towards: retiroMitre on: (self on: November/22/2025 at: 9).

	self assert: 4400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test10TrainExitRefundKeepsDiscountOfEntry

	| card |
	card := self studentCard.

	self assert: 300 * peso equals: (mitreTigre chargeBoardingOf: card at: sanIsidro towards: retiroMitre on: (self on: November/25/2025 at: 9)).
	self assert: 100 * peso equals: (mitreTigre chargeExitOf: card at: belgranoMitre on: (self on: November/25/2025 at: 9 minutes: 30)).
	self assert: 4800 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test11TripWithinTwoHoursOfLastTripStartIsTransfer

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10)).
	self assert: 500 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/25/2025 at: 10 minutes: 30)).
	self assert: 200 * peso equals: (mitreTigre chargeBoardingOf: card at: belgranoMitre towards: retiroMitre on: (self on: November/25/2025 at: 12 minutes: 30)).
	self assert: 3700 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test12TripAfterTwoHoursOfLastTripStartIsNotTransfer

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).

	self assert: 1000 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/25/2025 at: 12 minutes: 1))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test13StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	card := self studentCard.

	self assert: 300 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10)).
	self assert: 500 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/25/2025 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.

	self assert: 600 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/22/2025 at: 10)).
	self assert: 500 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips

	| card |
	card := self retireeCard.

	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/22/2025 at: 10).
	line60 chargeTripOf: card from: plazaDeMayo to: constitucion on: (self on: November/22/2025 at: 10 minutes: 30).

	self assert: 500 * peso equals: (subwayD chargeBoardingOf: card at: tribunales towards: palermo on: (self on: November/22/2025 at: 11))! !

!PublicTransportTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.

	self
		should: [ line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!PublicTransportTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test17CanPayWithExactBalance

	| card |
	card := BajeCard withBalance: 600 * peso discount: NoDiscount new.

	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).

	self assert: 0 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test18OriginAndDestinationMustBeStopsOfTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTripOf: card from: constitucion to: belgranoMitre on: (self on: November/25/2025 at: 10) ]
		failWith: MeansOfTransport invalidTripErrorDescription.
	self
		should: [ line60 chargeTripOf: card from: retiroMitre to: constitucion on: (self on: November/25/2025 at: 10) ]
		failWith: MeansOfTransport invalidTripErrorDescription.
	self
		should: [ subwayD chargeBoardingOf: card at: plazaDeMayo towards: palermo on: (self on: November/25/2025 at: 10) ]
		failWith: MeansOfTransport invalidTripErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test19OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTripOf: card from: constitucion to: constitucion on: (self on: November/25/2025 at: 10) ]
		failWith: MeansOfTransport invalidTripErrorDescription.
	self
		should: [ mitreTigre chargeBoardingOf: card at: tigre towards: tigre on: (self on: November/25/2025 at: 10) ]
		failWith: MeansOfTransport invalidTripErrorDescription.
	self assert: card trips isEmpty! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus withStops: { constitucion } fareTable: (FareTable fixed: 600 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription.
	self
		should: [ Subway withStops: #() fixedCost: 1000 * peso ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:25:04 am (UTC)'!
test21DirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD chargeBoardingOf: card at: tribunales towards: callao on: (self on: November/25/2025 at: 10) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ mitreTigre chargeBoardingOf: card at: tigre towards: sanIsidro on: (self on: November/25/2025 at: 10) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !
