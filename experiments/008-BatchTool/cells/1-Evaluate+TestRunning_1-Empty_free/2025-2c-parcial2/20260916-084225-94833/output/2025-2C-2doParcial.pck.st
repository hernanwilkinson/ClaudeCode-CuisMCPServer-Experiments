'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:45:23 am'!
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
	instanceVariableNames: 'pricesUpToDistance'
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
	instanceVariableNames: 'meansOfTransport origin destination startTime fullPrice priceFactor chargedPrice'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congreso tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount
	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:44:06 am (UTC)'!
lastTrip
	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
trips
	^trips copy! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
endLastTripAt: aStop costing: aFullPrice
	| lastTrip previouslyChargedPrice |
	lastTrip := trips last.
	previouslyChargedPrice := lastTrip chargedPrice.
	lastTrip endAt: aStop costing: aFullPrice.
	balance := balance + previouslyChargedPrice - lastTrip chargedPrice! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
pay: aTrip
	aTrip chargeWith: (discount priceFactorForTripAt: aTrip startTime on: self).
	self assertCanPay: aTrip chargedPrice.
	balance := balance - aTrip chargedPrice.
	trips add: aTrip! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
assertCanPay: aPrice
	balance < aPrice ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
isTransferAt: aDateTime
	^trips notEmpty and: [ trips last isTransferableAt: aDateTime ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
numberOfTripsOn: aDate
	^trips count: [:aTrip | aTrip startedOn: aDate ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
withBalance: aBalance discount: aCardDiscount
	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance to pay the trip'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
fullPriceFactor
	^1! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFactorForTripAt: aDateTime on: aCard
	self subclassResponsibility! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFactorWithTransfersForTripAt: aDateTime on: aCard
	^(aCard isTransferAt: aDateTime)
		ifTrue: [ self transferPriceFactor ]
		ifFalse: [ self fullPriceFactor ]! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
transferPriceFactor
	^1/2! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFactorForTripAt: aDateTime on: aCard
	^self priceFactorWithTransfersForTripAt: aDateTime on: aCard! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
freeTripPriceFactor
	^0! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
freeTripsPerDay
	^2! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFactorForTripAt: aDateTime on: aCard
	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ self freeTripPriceFactor ]
		ifFalse: [ self priceFactorWithTransfersForTripAt: aDateTime on: aCard ]! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFactorForTripAt: aDateTime on: aCard
	^(self isWeekend: aDateTime)
		ifTrue: [ self priceFactorWithTransfersForTripAt: aDateTime on: aCard ]
		ifFalse: [ self studentPriceFactor ]! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
studentPriceFactor
	^1/2! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
isWeekend: aDateTime
	| day |
	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
initializeWithPricesUpToDistance: distanceToPriceAssociations
	pricesUpToDistance := distanceToPriceAssociations! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
priceFor: aDistance
	^(pricesUpToDistance detect: [:distanceAndPrice | aDistance <= distanceAndPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
fixed: aPrice
	^self withPricesUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
withPricesUpToDistance: distanceToPriceAssociations
	^self new initializeWithPricesUpToDistance: distanceToPriceAssociations! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
initializeStops: aStops fareTable: aFareTable
	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
headOfLine
	^stops first! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
lastStop
	^stops last! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
priceFrom: anOrigin to: aDestination
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
charge: aCard travellingFrom: anOrigin to: aDestination at: aDateTime
	self assertIsValidTripFrom: anOrigin to: aDestination.
	aCard pay: (Trip on: self from: anOrigin to: aDestination at: aDateTime costing: (self priceFrom: anOrigin to: aDestination))! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
assertIsInRoute: aStop
	(stops identityIncludes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination
	self assertIsInRoute: anOrigin.
	self assertIsInRoute: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
stops: aStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: aStops.
	^self new initializeStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
assertHasAtLeastTwoStops: aStops
	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
notEnoughStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
stopNotInRouteErrorDescription
	^'The stop does not belong to the route'! !

!Bus methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	self charge: aCard travellingFrom: anOrigin to: aDestination at: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime
	self assertIsValidDirection: aDirection.
	self charge: aCard travellingFrom: aStop to: aDirection at: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
assertIsValidDirection: aDirection
	(aDirection == self headOfLine or: [ aDirection == self lastStop ])
		ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:43:59 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:44:06 am (UTC)'!
charge: aCard exitingAt: aStop
	aCard endLastTripAt: aStop costing: (self priceFrom: aCard lastTrip origin to: aStop)! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
initializeNamed: aName atDistanceFromHead: aDistance
	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
distanceToHead
	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
named: aName atDistanceFromHead: aDistance
	^self new initializeNamed: aName atDistanceFromHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aStartTime costing: aFullPrice
	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	startTime := aStartTime.
	fullPrice := aFullPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
chargedPrice
	^chargedPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
fullPrice
	^fullPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
meansOfTransport
	^meansOfTransport! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
startTime
	^startTime! !

!Trip methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
chargeWith: aPriceFactor
	priceFactor := aPriceFactor.
	chargedPrice := fullPrice * priceFactor! !

!Trip methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
endAt: aStop costing: aFullPrice
	destination := aStop.
	fullPrice := aFullPrice.
	self chargeWith: priceFactor! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
isTransferableAt: aDateTime
	^(startTime distanceTo: aDateTime) <= self class transferTimeWindow! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
startedOn: aDate
	^startTime date = aDate! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination at: aStartTime costing: aFullPrice
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aStartTime costing: aFullPrice! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:43:44 am (UTC)'!
transferTimeWindow
	^2 * hour! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' atDistanceFromHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceFromHead: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' atDistanceFromHead: 12 * kilometer.
	line60 := Bus
		stops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withPricesUpToDistance: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucumán' atDistanceFromHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceFromHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceFromHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceFromHead: 6 * kilometer.
	subwayD := Subway
		stops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroTrain := Stop named: 'Retiro' atDistanceFromHead: 0 * kilometer.
	belgranoTrain := Stop named: 'Belgrano' atDistanceFromHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceFromHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceFromHead: 28 * kilometer.
	mitreTrain := Train
		stops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpToDistance: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
assert: aCard wasCharged: aPrice
	self assert: self initialBalance - aPrice equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
cardWithoutDiscount
	^BajeCard withBalance: 10000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
initialBalance
	^10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:26 am (UTC)'!
november: aDayNumber hour: anHour minute: aMinute
	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute seconds: 0)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
retireeCard
	^BajeCard withBalance: 10000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:44:20 am (UTC)'!
studentCard
	^BajeCard withBalance: 10000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test01BusChargesFullPriceAccordingToDistanceWithoutDiscount
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test02BusChargesAccordingToFareTableRange
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: belgranoBus to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test03BusChargesLastRangeForLongDistances
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: belgranoBus at: (self november: 25 hour: 10 minute: 0).
	self assert: card wasCharged: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test04StudentPaysHalfOnWeekdays
	| card |
	card := self studentCard.
	line60 charge: card from: constitucion to: belgranoBus at: (self november: 24 hour: 11 minute: 0).
	self assert: card wasCharged: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test05StudentPaysFullPriceOnWeekends
	| card |
	card := self studentCard.
	line60 charge: card from: constitucion to: belgranoBus at: (self november: 23 hour: 11 minute: 0).
	self assert: card wasCharged: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test06RetireeFirstTripOfTheDayIsFree
	| card |
	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congreso at: (self november: 22 hour: 9 minute: 0).
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test07RetireeThirdTripOfTheDayIsCharged
	| card |
	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congreso at: (self november: 22 hour: 9 minute: 0).
	subwayD charge: card boardingAt: congreso towards: palermo at: (self november: 22 hour: 12 minute: 0).
	subwayD charge: card boardingAt: palermo towards: congreso at: (self november: 22 hour: 18 minute: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test08RetireeFreeTripsAreRenewedEveryDay
	| card |
	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congreso at: (self november: 22 hour: 9 minute: 0).
	subwayD charge: card boardingAt: congreso towards: palermo at: (self november: 22 hour: 12 minute: 0).
	subwayD charge: card boardingAt: palermo towards: congreso at: (self november: 23 hour: 18 minute: 0).
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test09RetireeGetsTransferDiscountAfterFreeTrips
	| card |
	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congreso at: (self november: 22 hour: 9 minute: 0).
	subwayD charge: card boardingAt: congreso towards: palermo at: (self november: 22 hour: 12 minute: 0).
	subwayD charge: card boardingAt: palermo towards: congreso at: (self november: 22 hour: 13 minute: 0).
	self assert: card wasCharged: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test10SubwayChargesFixedPriceRegardlessOfDistance
	| card |
	card := self cardWithoutDiscount.
	subwayD charge: card boardingAt: callao towards: palermo at: (self november: 25 hour: 10 minute: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test11TrainChargesAccordingToDistanceToDirection
	| card |
	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroTrain at: (self november: 22 hour: 9 minute: 0).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test12TrainRefundsDifferenceWhenExiting
	| card |
	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroTrain at: (self november: 22 hour: 9 minute: 0).
	mitreTrain charge: card exitingAt: belgranoTrain.
	self assert: card wasCharged: 400 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test13TrainRefundsNothingWhenExitingAtDirectionStop
	| card |
	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroTrain at: (self november: 22 hour: 9 minute: 0).
	mitreTrain charge: card exitingAt: retiroTrain.
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test14TrainExitRefundKeepsDiscountAppliedOnEntry
	| card |
	card := self studentCard.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroTrain at: (self november: 25 hour: 9 minute: 0).
	mitreTrain charge: card exitingAt: belgranoTrain.
	self assert: card wasCharged: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test15TripWithinTwoHoursIsATransfer
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 hour: 10 minute: 30).
	self assert: card wasCharged: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test16TripAfterTwoHoursIsNotATransfer
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 hour: 12 minute: 1).
	self assert: card wasCharged: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test17TransfersHaveNoLimitAndCountFromLastTrip
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 hour: 11 minute: 30).
	subwayD charge: card boardingAt: palermo towards: congreso at: (self november: 25 hour: 13 minute: 0).
	self assert: card wasCharged: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test18StudentDiscountIsNotCumulativeWithTransfersOnWeekdays
	| card |
	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 hour: 10 minute: 30).
	self assert: card wasCharged: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test19StudentGetsTransferDiscountOnWeekends
	| card |
	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 hour: 10 minute: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 hour: 10 minute: 30).
	self assert: card wasCharged: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:44:49 am (UTC)'!
test20TrainExitRefundKeepsTransferDiscount
	| card |
	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 hour: 8 minute: 0).
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroTrain at: (self november: 22 hour: 9 minute: 0).
	mitreTrain charge: card exitingAt: belgranoTrain.
	self assert: card wasCharged: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test21CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.
	self
		should: [ line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test22CanPayWithExactBalance
	| card |
	card := BajeCard withBalance: 600 * peso discount: NoDiscount new.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test23OriginMustBelongToTheRoute
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: tribunales to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test24DestinationMustBelongToTheRoute
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: constitucion to: tribunales at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test25StopsWithSameNameInOtherMeansOfTransportAreDifferent
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: constitucion to: retiroTrain at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test26OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: plazaDeMayo to: plazaDeMayo at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test27MeansOfTransportMustHaveAtLeastTwoStops
	self
		should: [ Bus stops: { constitucion } fareTable: (FareTable fixed: 600 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test28SubwayDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: tribunales towards: callao at: (self november: 25 hour: 10 minute: 0) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test29TrainDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ mitreTrain charge: card boardingAt: retiroTrain towards: belgranoTrain at: (self november: 25 hour: 10 minute: 0) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test30CanNotBoardAtTheDirectionStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: palermo towards: palermo at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:45:04 am (UTC)'!
test31BoardingStopMustBelongToTheRoute
	| card |
	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: plazaDeMayo towards: palermo at: (self november: 25 hour: 10 minute: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: card wasCharged: 0 * peso! !
