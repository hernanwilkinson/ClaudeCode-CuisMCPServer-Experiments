'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:53:02 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance discount tripCharges'
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
	instanceVariableNames: 'transportLine'
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
	instanceVariableNames: 'stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileCardReader class' category: #'2025-2C-2doParcial'!
TurnstileCardReader class
	instanceVariableNames: ''!

!classDefinition: #SubwayTurnstileCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #SubwayTurnstileCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayTurnstileCardReader class' category: #'2025-2C-2doParcial'!
SubwayTurnstileCardReader class
	instanceVariableNames: ''!

!classDefinition: #TrainTurnstileCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #TrainTurnstileCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainTurnstileCardReader class' category: #'2025-2C-2doParcial'!
TrainTurnstileCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'priceRanges'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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

!classDefinition: #TransportLine category: #'2025-2C-2doParcial'!
Object subclass: #TransportLine
	instanceVariableNames: 'name stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'transportLine origin destination start'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TripCharge category: #'2025-2C-2doParcial'!
Object subclass: #TripCharge
	instanceVariableNames: 'trip amount'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TripCharge class' category: #'2025-2C-2doParcial'!
TripCharge class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount
	balance := aBalance.
	discount := aCardDiscount.
	tripCharges := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
trips
	^tripCharges collect: [:aTripCharge | aTripCharge trip ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
endLastTripAt: anExitStop
	| lastTripCharge adjustedTrip adjustedCost |
	lastTripCharge := tripCharges removeLast.
	adjustedTrip := lastTripCharge trip endingAt: anExitStop.
	adjustedCost := discount costOf: adjustedTrip after: self trips.
	balance := balance + lastTripCharge amount - adjustedCost.
	tripCharges add: (TripCharge of: adjustedTrip for: adjustedCost)! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
pay: aTrip
	| cost |
	cost := discount costOf: aTrip after: self trips.
	cost > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - cost.
	tripCharges add: (TripCharge of: aTrip for: cost)! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
withBalance: aBalance discount: aCardDiscount
	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance to pay the trip'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
costOf: aTrip after: previousTrips
	self subclassResponsibility! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
costWithTransferDiscountOf: aTrip after: previousTrips
	^(self is: aTrip aTransferAfter: previousTrips)
		ifTrue: [ aTrip fare / 2 ]
		ifFalse: [ aTrip fare ]! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
is: aTrip aTransferAfter: previousTrips
	^previousTrips notEmpty and: [ aTrip isTransferAfter: previousTrips last ]! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
costOf: aTrip after: previousTrips
	^self costWithTransferDiscountOf: aTrip after: previousTrips! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
costOf: aTrip after: previousTrips
	^(previousTrips count: [:aPreviousTrip | aPreviousTrip isOnSameDayAs: aTrip ]) < self class freeTripsPerDay
		ifTrue: [ 0 * peso ]
		ifFalse: [ self costWithTransferDiscountOf: aTrip after: previousTrips ]! !

!RetireeDiscount class methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
costOf: aTrip after: previousTrips
	^aTrip isOnWeekend
		ifTrue: [ self costWithTransferDiscountOf: aTrip after: previousTrips ]
		ifFalse: [ aTrip fare / 2 ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeFor: aTransportLine
	transportLine := aTransportLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
for: aTransportLine
	^self new initializeFor: aTransportLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime
	aCard pay: (transportLine tripFrom: anOrigin to: aDestination startingAt: aDateTime)! !

!TurnstileCardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeAt: aStop
	stop := aStop! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
charge: aCard towards: aDirectionStop on: aDateTime
	(transportLine isTerminal: aDirectionStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ].
	aCard pay: (transportLine tripFrom: stop to: aDirectionStop startingAt: aDateTime)! !

!TurnstileCardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
for: aTransportLine at: aStop
	aTransportLine assertIncludes: aStop.
	^(self for: aTransportLine) initializeAt: aStop! !

!TurnstileCardReader class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!TrainTurnstileCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
adjustExitOf: aCard
	aCard endLastTripAt: stop! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeWithPricesUpTo: distanceToPriceAssociations
	priceRanges := distanceToPriceAssociations! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
priceFor: aDistance
	^(priceRanges detect: [:aPriceRange | aDistance <= aPriceRange key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
fixed: aPrice
	^self withPricesUpTo: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
withPricesUpTo: distanceToPriceAssociations
	^self new initializeWithPricesUpTo: distanceToPriceAssociations! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeNamed: aName at: aDistanceToHead
	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
distanceToHead
	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
named: aName at: aDistanceToHead
	^self new initializeNamed: aName at: aDistanceToHead! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeNamed: aName stops: aStopCollection fareTable: aFareTable
	name := aName.
	stops := aStopCollection asSortedCollection: [:aStop :anotherStop | aStop distanceToHead <= anotherStop distanceToHead ].
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
name
	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
isTerminal: aStop
	^aStop == stops first or: [ aStop == stops last ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
fareFrom: anOrigin to: aDestination
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
tripFrom: anOrigin to: aDestination startingAt: aDateTime
	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ].
	^Trip on: self from: anOrigin to: aDestination startingAt: aDateTime! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
assertIncludes: aStop
	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
named: aName stops: aStopCollection fareTable: aFareTable
	self assertHasAtLeastTwoStops: aStopCollection.
	^self new initializeNamed: aName stops: aStopCollection fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
assertHasAtLeastTwoStops: aStopCollection
	aStopCollection size < 2 ifTrue: [ self error: self lessThanTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
lessThanTwoStopsErrorDescription
	^'A transport line must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
stopNotInLineErrorDescription
	^'The stop does not belong to the transport line'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeOn: aTransportLine from: anOrigin to: aDestination startingAt: aDateTime
	transportLine := aTransportLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
start
	^start! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
transportLine
	^transportLine! !

!Trip methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
fare
	^transportLine fareFrom: origin to: destination! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
isOnSameDayAs: anotherTrip
	^start date = anotherTrip start date! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
isOnWeekend
	^start date day = Saturday or: [ start date day = Sunday ]! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
isTransferAfter: aPreviousTrip
	^(start distanceFrom: aPreviousTrip start) <= self class maximumTransferTime! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
endingAt: anExitStop
	^self class on: transportLine from: origin to: anExitStop startingAt: start! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
on: aTransportLine from: anOrigin to: aDestination startingAt: aDateTime
	^self new initializeOn: aTransportLine from: anOrigin to: aDestination startingAt: aDateTime! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
maximumTransferTime
	^2 * hour! !

!TripCharge methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
initializeOf: aTrip for: anAmount
	trip := aTrip.
	amount := anAmount! !

!TripCharge methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
amount
	^amount! !

!TripCharge methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
trip
	^trip! !

!TripCharge class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:04 am (UTC)'!
of: aTrip for: anAmount
	^self new initializeOf: aTrip for: anAmount! !

!TransportSystemTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := TransportLine
		named: 'Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withPricesUpTo: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := TransportLine
		named: 'Subte D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := TransportLine
		named: 'Mitre Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpTo: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
assertCharged: anAmount to: aCard
	self assert: 10000 * peso - anAmount equals: aCard balance! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
cardWithoutDiscount
	^BajeCard withBalance: 10000 * peso discount: NoDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
on: aDate at: hours
	^aDate atTimeOfDay: (TimeOfDay hours: hours minutes: 0)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
on: aDate at: hours minutes: minutes
	^aDate atTimeOfDay: (TimeOfDay hours: hours minutes: minutes)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
retireeCard
	^BajeCard withBalance: 10000 * peso discount: RetireeDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText ]! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
studentCard
	^BajeCard withBalance: 10000 * peso discount: StudentDiscount new! !

!TransportSystemTest methodsFor: 'bus' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test01BusChargesFareByDistanceWithoutDiscount
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).
	self assertCharged: 600 * peso to: card.
	self assert: 1 equals: card trips size! !

!TransportSystemTest methodsFor: 'bus' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test02BusChargesNextFareRangeWhenDistanceExceedsPreviousRange
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: belgrano to: constitucion on: (self on: November/25/2025 at: 10).
	self assertCharged: 1300 * peso to: card! !

!TransportSystemTest methodsFor: 'student' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test03StudentPaysHalfOnWeekdays
	| card |
	card := self studentCard.
	(BusCardReader for: line60) charge: card from: constitucion to: belgrano on: (self on: November/24/2025 at: 11).
	self assertCharged: 650 * peso to: card! !

!TransportSystemTest methodsFor: 'student' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test04StudentPaysFullPriceOnWeekends
	| card |
	card := self studentCard.
	(BusCardReader for: line60) charge: card from: constitucion to: retiro on: (self on: November/23/2025 at: 11).
	self assertCharged: 1000 * peso to: card! !

!TransportSystemTest methodsFor: 'retiree' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree
	| card |
	card := self retireeCard.
	(SubwayTurnstileCardReader for: subwayD at: tribunales) charge: card towards: congresoDeTucuman on: (self on: November/22/2025 at: 9).
	self assertCharged: 0 * peso to: card! !

!TransportSystemTest methodsFor: 'retiree' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test06RetireePaysFullPriceAfterTwoFreeTripsOfTheDay
	| card reader |
	card := self retireeCard.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: congresoDeTucuman on: (self on: November/22/2025 at: 9).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 12).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 15).
	self assertCharged: 1000 * peso to: card! !

!TransportSystemTest methodsFor: 'retiree' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test07RetireeFreeTripsAreRenewedEachDay
	| card reader |
	card := self retireeCard.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: congresoDeTucuman on: (self on: November/22/2025 at: 9).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 12).
	reader charge: card towards: palermo on: (self on: November/23/2025 at: 15).
	self assertCharged: 0 * peso to: card! !

!TransportSystemTest methodsFor: 'retiree' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test08RetireeGetsTransferDiscountOnPaidTrips
	| card reader |
	card := self retireeCard.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: congresoDeTucuman on: (self on: November/22/2025 at: 9).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 12).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 13).
	self assertCharged: 500 * peso to: card! !

!TransportSystemTest methodsFor: 'train' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test09TrainChargesByDistanceToDirectionOnEntry
	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstileCardReader for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre on: (self on: November/22/2025 at: 9).
	self assertCharged: 600 * peso to: card! !

!TransportSystemTest methodsFor: 'train' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test10TrainRefundsDifferenceOnExit
	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstileCardReader for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre on: (self on: November/22/2025 at: 9).
	(TrainTurnstileCardReader for: mitreTigre at: belgranoMitre) adjustExitOf: card.
	self assertCharged: 400 * peso to: card.
	self assert: belgranoMitre equals: card trips last destination! !

!TransportSystemTest methodsFor: 'train' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test11TrainExitRefundConsidersDiscounts
	| card |
	card := self studentCard.
	(TrainTurnstileCardReader for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre on: (self on: November/21/2025 at: 9).
	(TrainTurnstileCardReader for: mitreTigre at: belgranoMitre) adjustExitOf: card.
	self assertCharged: 200 * peso to: card! !

!TransportSystemTest methodsFor: 'train' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test12TrainExitRefundConsidersTransfers
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/22/2025 at: 8).
	(TrainTurnstileCardReader for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre on: (self on: November/22/2025 at: 9).
	(TrainTurnstileCardReader for: mitreTigre at: belgranoMitre) adjustExitOf: card.
	self assertCharged: 600 * peso + (200 * peso) to: card! !

!TransportSystemTest methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test13TripWithinTwoHoursOfLastTripStartIsATransfer
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).
	(SubwayTurnstileCardReader for: subwayD at: tribunales) charge: card towards: palermo on: (self on: November/25/2025 at: 10 minutes: 30).
	self assertCharged: 600 * peso + (500 * peso) to: card! !

!TransportSystemTest methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test14TripAfterTwoHoursOfLastTripStartIsNotATransfer
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).
	(SubwayTurnstileCardReader for: subwayD at: tribunales) charge: card towards: palermo on: (self on: November/25/2025 at: 12 minutes: 1).
	self assertCharged: 600 * peso + (1000 * peso) to: card! !

!TransportSystemTest methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test15TransfersAreMeasuredFromTheLastTripStart
	| card reader |
	card := self cardWithoutDiscount.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: palermo on: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo on: (self on: November/25/2025 at: 11 minutes: 30).
	reader charge: card towards: palermo on: (self on: November/25/2025 at: 13).
	self assertCharged: 1000 * peso + (500 * peso) + (500 * peso) to: card! !

!TransportSystemTest methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test16StudentDoesNotAccumulateTransferDiscountOnWeekdays
	| card reader |
	card := self studentCard.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: palermo on: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo on: (self on: November/25/2025 at: 11).
	self assertCharged: 500 * peso + (500 * peso) to: card! !

!TransportSystemTest methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test17StudentGetsTransferDiscountOnWeekends
	| card reader |
	card := self studentCard.
	reader := SubwayTurnstileCardReader for: subwayD at: tribunales.
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 10).
	reader charge: card towards: palermo on: (self on: November/22/2025 at: 11).
	self assertCharged: 1000 * peso + (500 * peso) to: card! !

!TransportSystemTest methodsFor: 'balance' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test18CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'balance' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test19CanPayWithExactBalance
	| card |
	card := BajeCard withBalance: 600 * peso discount: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo on: (self on: November/25/2025 at: 10).
	self assert: 0 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test20OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (BusCardReader for: line60) charge: card from: retiro to: retiro on: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assertCharged: 0 * peso to: card.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test21StopsMustBelongToTheTransportLine
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: belgranoMitre on: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self
		should: [ (BusCardReader for: line60) charge: card from: belgranoMitre to: constitucion on: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test22TurnstileMustBeAtAStopOfTheTransportLine
	self
		should: [ SubwayTurnstileCardReader for: subwayD at: retiro ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test23TransportLineMustHaveAtLeastTwoStops
	self
		should: [ TransportLine named: 'Invalid' stops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: TransportLine lessThanTwoStopsErrorDescription! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test24SubwayDirectionMustBeHeadOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (SubwayTurnstileCardReader for: subwayD at: tribunales) charge: card towards: callao on: (self on: November/25/2025 at: 10) ]
		failWith: TurnstileCardReader invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test25TrainDirectionMustBeHeadOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (TrainTurnstileCardReader for: mitreTigre at: tigre) charge: card towards: sanIsidro on: (self on: November/25/2025 at: 10) ]
		failWith: TurnstileCardReader invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'validations' stamp: 'HAW 16/Sep/2026, 11:52:46 am (UTC)'!
test26CanNotTravelTowardsTheSameStopOfTheTurnstile
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (TrainTurnstileCardReader for: mitreTigre at: tigre) charge: card towards: tigre on: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: card trips isEmpty! !
