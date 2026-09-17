'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:00:10 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance discountPlan trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BajeCard class' category: #'2025-2C-2doParcial'!
BajeCard class
	instanceVariableNames: ''!

!classDefinition: #BusCardReader category: #'2025-2C-2doParcial'!
Object subclass: #BusCardReader
	instanceVariableNames: 'meansOfTransport'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusCardReader class' category: #'2025-2C-2doParcial'!
BusCardReader class
	instanceVariableNames: ''!

!classDefinition: #DiscountPlan category: #'2025-2C-2doParcial'!
Object subclass: #DiscountPlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'DiscountPlan class' category: #'2025-2C-2doParcial'!
DiscountPlan class
	instanceVariableNames: ''!

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
	instanceVariableNames: ''!

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #StudentDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StudentDiscount class' category: #'2025-2C-2doParcial'!
StudentDiscount class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'costsByMaximumDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #MeansOfTransport category: #'2025-2C-2doParcial'!
Object subclass: #MeansOfTransport
	instanceVariableNames: 'name stops fareTable'
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
	instanceVariableNames: 'meansOfTransport origin destination start costFactor charged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
Object subclass: #Turnstile
	instanceVariableNames: 'meansOfTransport stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Turnstile class' category: #'2025-2C-2doParcial'!
Turnstile class
	instanceVariableNames: ''!

!classDefinition: #TrainTurnstile category: #'2025-2C-2doParcial'!
Turnstile subclass: #TrainTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainTurnstile class' category: #'2025-2C-2doParcial'!
TrainTurnstile class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
initializeWithBalance: aBalance discountPlan: aDiscountPlan
	balance := aBalance.
	discountPlan := aDiscountPlan.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
lastTrip
	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
numberOfTrips
	^trips size! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
numberOfTripsOn: aDate
	^trips count: [:aTrip | aTrip startedOn: aDate ]! !

!BajeCard methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
costFactorAt: aDateTime
	"Discounts are not cumulative, the best one applies"
	^(discountPlan costFactorAt: aDateTime for: self) min: (self transferCostFactorAt: aDateTime)! !

!BajeCard methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
isTransferAt: aDateTime
	^trips notEmpty and: [ self lastTrip startedWithin: self transferTime before: aDateTime ]! !

!BajeCard methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
transferCostFactorAt: aDateTime
	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
transferTime
	^2 * hour! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
assertCanPay: anAmount
	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
endLastTripAt: anExitStop
	| refund |
	refund := self lastTrip endAt: anExitStop.
	balance := balance + refund.
	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime
	| trip |
	trip := Trip on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime costFactor: (self costFactorAt: aDateTime).
	self assertCanPay: trip charged.
	balance := balance - trip charged.
	trips add: trip.
	^trip charged! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
retireeWithBalance: aBalance
	^self withBalance: aBalance discountPlan: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
studentWithBalance: aBalance
	^self withBalance: aBalance discountPlan: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
withBalance: aBalance discountPlan: aDiscountPlan
	^self new initializeWithBalance: aBalance discountPlan: aDiscountPlan! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
withoutDiscountWithBalance: aBalance
	^self withBalance: aBalance discountPlan: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance to pay the trip'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
initializeOn: aMeansOfTransport
	meansOfTransport := aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	^aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
on: aMeansOfTransport
	^self new initializeOn: aMeansOfTransport! !

!DiscountPlan methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
costFactorAt: aDateTime for: aCard
	self subclassResponsibility! !

!NoDiscount methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
costFactorAt: aDateTime for: aCard
	^1! !

!RetireeDiscount methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
costFactorAt: aDateTime for: aCard
	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'cost factor' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
costFactorAt: aDateTime for: aCard
	^(self isWeekend: aDateTime) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
isWeekend: aDateTime
	| day |
	day := aDateTime date day.
	^day = Saturday or: [ day = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
initializeWithCostsByMaximumDistance: someDistanceCostPairs
	costsByMaximumDistance := someDistanceCostPairs! !

!FareTable methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
costFor: aDistance
	^(costsByMaximumDistance detect: [:maximumDistanceAndCost | aDistance <= maximumDistanceAndCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
fixed: aCost
	^self withCostsByMaximumDistance: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
withCostsByMaximumDistance: someDistanceCostPairs
	^self new initializeWithCostsByMaximumDistance: someDistanceCostPairs! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
initializeNamed: aName stops: someStops fareTable: aFareTable
	name := aName.
	stops := someStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
name
	^name! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
isDirection: aStop
	^aStop = stops first or: [ aStop = stops last ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
assertIncludes: aStop
	(self includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
assertIsDirection: aStop
	(self isDirection: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination
	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
costFrom: anOrigin to: aDestination
	self assertIsValidTripFrom: anOrigin to: aDestination.
	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
named: aName stops: someStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: someStops.
	^self new initializeNamed: aName stops: someStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
assertHasAtLeastTwoStops: someStops
	someStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
atLeastTwoStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'The origin and destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
stopNotInMeansOfTransportErrorDescription
	^'The stop does not belong to the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
initializeNamed: aName at: aDistanceToHead
	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
distanceToHead
	^distanceToHead! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
named: aName at: aDistanceToHead
	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime costFactor: aCostFactor
	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	costFactor := aCostFactor.
	charged := self costTo: destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
charged
	^charged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
start
	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
startedOn: aDate
	^start date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
startedWithin: aTimeMeasure before: aDateTime
	^(start distanceTo: aDateTime) <= aTimeMeasure! !

!Trip methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
costTo: aDestination
	^(meansOfTransport costFrom: origin to: aDestination) * costFactor! !

!Trip methodsFor: 'ending' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
endAt: anExitStop
	"Answers the amount to refund for having travelled less than what was charged"
	| refund |
	refund := charged - (self costTo: anExitStop).
	destination := anExitStop.
	charged := charged - refund.
	^refund! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:58:58 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime costFactor: aCostFactor
	aMeansOfTransport assertIsValidTripFrom: anOrigin to: aDestination.
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime costFactor: aCostFactor! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
initializeOn: aMeansOfTransport at: aStop
	meansOfTransport := aMeansOfTransport.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime
	meansOfTransport assertIsDirection: aDirection.
	^aCard payTripOn: meansOfTransport from: stop to: aDirection at: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
on: aMeansOfTransport at: aStop
	aMeansOfTransport assertIncludes: aStop.
	^self new initializeOn: aMeansOfTransport at: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:59:14 am (UTC)'!
refundExitOf: aCard
	^aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		named: 'Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withCostsByMaximumDistance: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport
		named: 'Subte D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := MeansOfTransport
		named: 'Mitre Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsByMaximumDistance: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
newCardWithoutDiscount
	^BajeCard withoutDiscountWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
newRetireeCard
	^BajeCard retireeWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
newStudentCard
	^BajeCard studentWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute
	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test01BusChargesFullPriceByDistanceWithoutDiscount
	| card |
	card := self newCardWithoutDiscount.
	self assert: 600 * peso equals: ((BusCardReader on: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test02BusCostDependsOnDistanceRange
	self assert: 1000 * peso equals: ((BusCardReader on: line60) charge: self newCardWithoutDiscount from: plazaDeMayo to: belgrano at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: ((BusCardReader on: line60) charge: self newCardWithoutDiscount from: belgrano to: constitucion at: (self november: 25 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test03StudentPaysHalfOnWeekdays
	| card |
	card := self newStudentCard.
	self assert: 650 * peso equals: ((BusCardReader on: line60) charge: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0)).
	self assert: 9350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test04StudentPaysFullPriceOnWeekends
	self assert: 1300 * peso equals: ((BusCardReader on: line60) charge: self newStudentCard from: constitucion to: belgrano at: (self november: 22 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay
	| card turnstile |
	card := self newRetireeCard.
	turnstile := Turnstile on: subwayD at: tribunales.
	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 12 minutes: 0)).
	self assert: 1000 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 15 minutes: 0)).
	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 23 at: 9 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test06SubwayChargesFixedPrice
	| card |
	card := self newCardWithoutDiscount.
	self assert: 1000 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: congresoDeTucuman at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile on: subwayD at: callao) charge: card towards: palermo at: (self november: 25 at: 14 minutes: 0)).
	self assert: 8000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test07TrainChargesOnEntryByDistanceToDirection
	| card |
	card := self newCardWithoutDiscount.
	self assert: 600 * peso equals: ((TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test08TrainRefundsDifferenceOnExit
	| card |
	card := self newCardWithoutDiscount.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	self assert: 200 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) refundExitOf: card).
	self assert: 9600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test09TrainExitRefundKeepsDiscount
	| card |
	card := self newStudentCard.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 9 minutes: 0).
	self assert: 100 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) refundExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test10TrainExitAtDirectionRefundsNothing
	| card |
	card := self newCardWithoutDiscount.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	self assert: 0 * peso equals: ((TrainTurnstile on: mitreTigre at: retiroMitre) refundExitOf: card).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test11TripWithinTwoHoursOfLastTripStartIsATransfer
	| card |
	card := self newCardWithoutDiscount.
	(BusCardReader on: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assert: 500 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test12TransfersHaveNoLimitAndCountFromLastTrip
	| card turnstile |
	card := self newCardWithoutDiscount.
	turnstile := Turnstile on: subwayD at: tribunales.
	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 13 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test13TripAfterTwoHoursIsNotATransfer
	| card turnstile |
	card := self newCardWithoutDiscount.
	turnstile := Turnstile on: subwayD at: tribunales.
	turnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0).
	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test14StudentDiscountIsNotCumulativeWithTransferOnWeekdays
	| card turnstile |
	card := self newStudentCard.
	turnstile := Turnstile on: subwayD at: tribunales.
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test15StudentGetsTransferDiscountOnWeekends
	| card turnstile |
	card := self newStudentCard.
	turnstile := Turnstile on: subwayD at: tribunales.
	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test16RetireeGetsTransferDiscountAfterFreeTrips
	| card turnstile |
	card := self newRetireeCard.
	turnstile := Turnstile on: subwayD at: tribunales.
	turnstile charge: card towards: palermo at: (self november: 22 at: 8 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 at: 8 minutes: 30).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test17CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withoutDiscountWithBalance: 999 * peso.
	self should: [ (Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 999 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test18CanPayWithExactBalance
	| card |
	card := BajeCard withoutDiscountWithBalance: 1000 * peso.
	(Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test19OriginAndDestinationMustBelongToTheMeansOfTransport
	| card |
	card := self newCardWithoutDiscount.
	self should: [ (BusCardReader on: line60) charge: card from: tribunales to: belgrano at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self should: [ (BusCardReader on: line60) charge: card from: belgrano to: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test20OriginAndDestinationMustBeDifferent
	| card |
	card := self newCardWithoutDiscount.
	self should: [ (BusCardReader on: line60) charge: card from: retiro to: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self should: [ (Turnstile on: subwayD at: palermo) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test21MeansOfTransportMustHaveAtLeastTwoStops
	self should: [ MeansOfTransport named: 'Línea X' stops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: MeansOfTransport atLeastTwoStopsErrorDescription.
	self should: [ MeansOfTransport named: 'Línea X' stops: #() fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: MeansOfTransport atLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test22DirectionMustBeHeadOrLastStop
	| card |
	card := self newCardWithoutDiscount.
	self should: [ (Turnstile on: subwayD at: tribunales) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self should: [ (TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:59:55 am (UTC)'!
test23TurnstileStopMustBelongToTheMeansOfTransport
	self should: [ Turnstile on: subwayD at: retiro ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription! !
