'From Cuis7.9 [latest update: #8185] on 15 September 2026 at 10:53:33 pm'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance trips discount'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BajeCard class' category: #'2025-2C-2doParcial'!
BajeCard class
	instanceVariableNames: ''!

!classDefinition: #CardReader category: #'2025-2C-2doParcial'!
Object subclass: #CardReader
	instanceVariableNames: 'line'
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

!classDefinition: #Discount category: #'2025-2C-2doParcial'!
Object subclass: #Discount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Discount class' category: #'2025-2C-2doParcial'!
Discount class
	instanceVariableNames: ''!

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
Discount subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
Discount subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
	instanceVariableNames: ''!

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
Discount subclass: #StudentDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StudentDiscount class' category: #'2025-2C-2doParcial'!
StudentDiscount class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'brackets'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #Stop category: #'2025-2C-2doParcial'!
Object subclass: #Stop
	instanceVariableNames: 'name distanceToHeadOfLine'
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
	instanceVariableNames: 'origin destination dateTime fullPrice discountRate price'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro60 belgrano60 linea60 congresoDeTucuman tribunales callao palermo subteD retiro belgrano sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!

!classDefinition: #BajeCardTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #BajeCardTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BajeCardTest class' category: #'2025-2C-2doParcial-Tests'!
BajeCardTest class
	instanceVariableNames: ''!

!classDefinition: #BusCardReaderTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #BusCardReaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BusCardReaderTest class' category: #'2025-2C-2doParcial-Tests'!
BusCardReaderTest class
	instanceVariableNames: ''!

!classDefinition: #SubwayCardReaderTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #SubwayCardReaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'SubwayCardReaderTest class' category: #'2025-2C-2doParcial-Tests'!
SubwayCardReaderTest class
	instanceVariableNames: ''!

!classDefinition: #TrainCardReaderTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #TrainCardReaderTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TrainCardReaderTest class' category: #'2025-2C-2doParcial-Tests'!
TrainCardReaderTest class
	instanceVariableNames: ''!

!classDefinition: #TransportLineTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #TransportLineTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportLineTest class' category: #'2025-2C-2doParcial-Tests'!
TransportLineTest class
	instanceVariableNames: ''!


!BajeCard commentStamp: '<historical>' prior: 0!
I am a BAJE card. I know my balance, the trips that were paid with me and the discount I was configured with. There always has to be enough balance to pay for a trip.
I am the one who knows how to apply the discounts, because they depend on the trips already made with me: I ask my discount for the rate to apply to the full price of the trip, and I answer it the transfer rate when its own discount does not apply, as discounts are not cumulative.!

!CardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a means of transport. When a BAJE card is brought close to me I charge the trip being made to it, after checking that both the origin and the destination are stops of my means of transport and that they are different.
My subclasses define the way in which the trip being made is informed to me.!

!BusCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a bus. The origin and the destination of the trip are informed to me when the card is tapped, and the price charged depends on the distance between them.!

!TurnstileCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a turnstile, used by the means of transport in which the trip is paid when entering a stop informing the direction in which the passenger is going. That direction has to be either the head of the line or the end of the route, and it is taken as the destination of the trip.!

!SubwayCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a turnstile of a subway stop. The whole trip is paid when entering, and as the fare table of a subway line is flat, the price does not depend on the stop nor on the direction.!

!TrainCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a turnstile of a train stop. When entering, the trip up to the direction the passenger is going is charged. Marking the exit is optional; when it is marked, the price of the trip actually made is calculated and the difference with what was charged when entering is refunded, keeping the discount that was applied at that moment. If the exit is not marked, what was charged when entering is kept.!

!Discount commentStamp: '<historical>' prior: 0!
I am the discount configuration of a BAJE card. I answer the rate that has to be applied to the full price of a trip. My subclasses answer the rate of the card, which is the transfer rate when their own discount does not apply, as discounts are not cumulative.!

!NoDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a card that has no discount of its own, so it always pays the full price of the trip, or half of it when the trip is a transfer.!

!RetireeDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a retiree card. The first two trips of each day are free and no other discount is applied to them, as discounts are not cumulative. The rest of the trips of the day pay the full price, so the transfer discount does apply to them.!

!StudentDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a student card. From Monday to Friday it pays half of the price and no other discount is applied, as discounts are not cumulative. On weekends it pays the full price, so the transfer discount does apply.!

!FareTable commentStamp: '<historical>' prior: 0!
I am the fare table (cuadro tarifario) of a means of transport. I know the price charged for each bracket of distance, expressed as the maximum distance of the bracket and the price of that bracket, and I answer the price for any distance.
A means of transport with a fixed price, like a subway line, has a fare table with a single bracket that reaches PlusInfinity.!

!Stop commentStamp: '<historical>' prior: 0!
I represent a stop of a means of transport. I know my name and my distance to the head of the line, and with that I can tell the distance to any other stop of my line, which is the absolute difference between both distances to the head of the line.
I am always unique, even if another means of transport has a stop with my same name.!

!TransportLine commentStamp: '<historical>' prior: 0!
I represent a means of transport, be it a bus line, a subway line or a train branch. I know my route, as an ordered collection of stops going from the head of the line to the end of the route, and my fare table, and I can answer the price of travelling between two of my stops.
I am the same class for every means of transport because what changes between them is not the route nor the way the price is calculated, but the way the card is charged, and that is the responsibility of my card readers. Charging a fixed price, like the subway does, is just a matter of having a fare table with a single bracket.!

!Trip commentStamp: '<historical>' prior: 0!
I represent a trip made with a BAJE card. I know where it started, where it ended, when it started, the full price of the trip, the discount rate that was applied to it and the price actually charged.
I keep the discount rate because the price of a train trip is adjusted when the exit is marked, and that adjustment has to keep the discount that was applied when the trip started.!

!ISWMetropolitanoTest commentStamp: '<historical>' prior: 0!
I hold the fixture used by all the tests of the ISWMetropolitano system: the bus line 60, the subway line D and the Retiro-Tigre branch of the Mitre train, with the dates of a weekend and of some week days of November of 2025.!

!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount
	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
lastTrip
	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
numberOfTripsOn: aDateTime
	^trips count: [:aTrip | aTrip dateTime sameDayAs: aDateTime]! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
trips
	^trips copy! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
finishLastTripAt: aStop pricedBy: aTransportLine
	"The price charged when the trip started is adjusted to the one of the trip actually made,
	keeping the discount that was applied when it started"
	| trip newFullPrice newPrice |

	trip := self lastTrip.
	newFullPrice := aTransportLine priceFrom: trip origin to: aStop.
	newPrice := newFullPrice * trip discountRate.
	balance := balance + trip price - newPrice.
	trip endAt: aStop fullPrice: newFullPrice price: newPrice.
	^trip! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
payTripFrom: anOrigin to: aDestination costing: aFullPrice on: aDateTime
	| rate price trip |

	rate := discount rateFor: self on: aDateTime.
	price := aFullPrice * rate.
	self assertCanPay: price.
	balance := balance - price.
	trip := Trip from: anOrigin to: aDestination on: aDateTime fullPrice: aFullPrice discountRate: rate.
	trips add: trip.
	^trip! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:49:30 am (UTC)'!
isTransferOn: aDateTime
	^trips notEmpty and: [(self lastTrip dateTime distanceTo: aDateTime) abs <= self class timeToBeConsideredATransfer]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
transferRateOn: aDateTime
	^(self isTransferOn: aDateTime)
		ifTrue: [self class transferDiscountRate]
		ifFalse: [1]! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
assertCanPay: aPrice
	aPrice > balance ifTrue: [self error: self class notEnoughBalanceErrorDescription]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
withBalance: aBalance discount: aDiscount
	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
notEnoughBalanceErrorDescription
	^'There is not enough balance to pay for the trip'! !

!BajeCard class methodsFor: 'constants' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
timeToBeConsideredATransfer
	^2 * hour! !

!BajeCard class methodsFor: 'constants' stamp: 'HAW 16/Sep/2026, 1:48:56 am (UTC)'!
transferDiscountRate
	^1/2! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
initializeFor: aTransportLine
	line := aTransportLine! !

!CardReader methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
line
	^line! !

!CardReader methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
assertAreDifferent: anOrigin and: aDestination
	anOrigin = aDestination ifTrue: [self error: self class originAndDestinationMustBeDifferentErrorDescription]! !

!CardReader methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
assertIsStopOfLine: aStop
	(line includesStop: aStop) ifFalse: [self error: self class stopDoesNotBelongToTheMeansOfTransportErrorDescription]! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 1:52:57 am (UTC)'!
payTripOf: aBajeCard from: anOrigin to: aDestination on: aDateTime
	self assertIsStopOfLine: anOrigin.
	self assertIsStopOfLine: aDestination.
	self assertAreDifferent: anOrigin and: aDestination.
	^aBajeCard
		payTripFrom: anOrigin
		to: aDestination
		costing: (line priceFrom: anOrigin to: aDestination)
		on: aDateTime! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
for: aTransportLine
	^self new initializeFor: aTransportLine! !

!CardReader class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription
	^'The origin and the destination of a trip must be different'! !

!CardReader class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
stopDoesNotBelongToTheMeansOfTransportErrorDescription
	^'The stop does not belong to the means of transport'! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:52:57 am (UTC)'!
charge: aBajeCard from: anOrigin to: aDestination on: aDateTime
	^self payTripOf: aBajeCard from: anOrigin to: aDestination on: aDateTime! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:52:57 am (UTC)'!
charge: aBajeCard boardingAt: aStop towards: aDirection on: aDateTime
	self assertIsValidDirection: aDirection.
	^self payTripOf: aBajeCard from: aStop to: aDirection on: aDateTime! !

!TurnstileCardReader methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
assertIsValidDirection: aDirection
	(aDirection = line headOfLine or: [aDirection = line endOfLine])
		ifFalse: [self error: self class directionMustBeTheHeadOrTheEndOfTheLineErrorDescription]! !

!TurnstileCardReader class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
directionMustBeTheHeadOrTheEndOfTheLineErrorDescription
	^'The direction must be either the head of the line or the end of the route'! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:48:43 am (UTC)'!
chargeExitOf: aBajeCard at: aStop
	self assertIsStopOfLine: aStop.
	^aBajeCard finishLastTripAt: aStop pricedBy: line! !

!Discount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
rateFor: aBajeCard on: aDateTime
	self subclassResponsibility! !

!NoDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
rateFor: aBajeCard on: aDateTime
	^aBajeCard transferRateOn: aDateTime! !

!RetireeDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
rateFor: aBajeCard on: aDateTime
	"Discounts are not cumulative: while there are free trips left that is the only discount applied"
	^(aBajeCard numberOfTripsOn: aDateTime) < self class numberOfFreeTripsPerDay
		ifTrue: [0]
		ifFalse: [aBajeCard transferRateOn: aDateTime]! !

!RetireeDiscount class methodsFor: 'constants' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
numberOfFreeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
rateFor: aBajeCard on: aDateTime
	"Discounts are not cumulative: from Monday to Friday only the student discount is applied"
	^(self isWeekend: aDateTime)
		ifTrue: [aBajeCard transferRateOn: aDateTime]
		ifFalse: [self class discountRate]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
isWeekend: aDateTime
	^aDateTime date isSaturday or: [aDateTime date isSunday]! !

!StudentDiscount class methodsFor: 'constants' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
discountRate
	^1/2! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
initializeForDistancesUpTo: aCollectionOfAssociations
	brackets := aCollectionOfAssociations asOrderedCollection! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
priceFor: aDistance
	^(brackets detect: [:aBracket | aDistance <= aBracket key]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
flatFareOf: aPrice
	^self forDistancesUpTo: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
forDistancesUpTo: aCollectionOfAssociations
	"Each association goes from the maximum distance of the bracket to the price charged for it.
	They have to be sorted by increasing distance and the last one should reach PlusInfinity new"
	^self new initializeForDistancesUpTo: aCollectionOfAssociations! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
initializeNamed: aName distanceToHeadOfLine: aDistance
	name := aName.
	distanceToHeadOfLine := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
distanceTo: aStop
	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
distanceToHeadOfLine
	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:47:47 am (UTC)'!
named: aName distanceToHeadOfLine: aDistance
	^self new initializeNamed: aName distanceToHeadOfLine: aDistance! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable
	name := aName.
	stops := aCollectionOfStops asOrderedCollection.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
distanceFrom: aStop to: anotherStop
	^aStop distanceTo: anotherStop! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
endOfLine
	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
headOfLine
	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
name
	^name! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
stops
	^stops copy! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
includesStop: aStop
	^stops includes: aStop! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
priceFrom: aStop to: anotherStop
	^fareTable priceFor: (self distanceFrom: aStop to: anotherStop)! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable
	self assertHasEnoughStops: aCollectionOfStops.
	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops
	aCollectionOfStops size < 2 ifTrue: [self error: self mustHaveAtLeastTwoStopsErrorDescription]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:47:55 am (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
initializeFrom: anOrigin to: aDestination on: aDateTime fullPrice: aFullPrice discountRate: aDiscountRate
	origin := anOrigin.
	destination := aDestination.
	dateTime := aDateTime.
	fullPrice := aFullPrice.
	discountRate := aDiscountRate.
	price := aFullPrice * aDiscountRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
dateTime
	^dateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
discountRate
	^discountRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
fullPrice
	^fullPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
price
	^price! !

!Trip methodsFor: 'changing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
endAt: aStop fullPrice: aFullPrice price: aPrice
	destination := aStop.
	fullPrice := aFullPrice.
	price := aPrice! !

!Trip methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
printOn: aStream
	aStream
		nextPutAll: 'trip from ';
		print: origin;
		nextPutAll: ' to ';
		print: destination;
		nextPutAll: ' on ';
		print: dateTime;
		nextPutAll: ' charging ';
		print: price! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:49:06 am (UTC)'!
from: anOrigin to: aDestination on: aDateTime fullPrice: aFullPrice discountRate: aDiscountRate
	^self new initializeFrom: anOrigin to: aDestination on: aDateTime fullPrice: aFullPrice discountRate: aDiscountRate! !

!ISWMetropolitanoTest methodsFor: 'running' stamp: 'HAW 16/Sep/2026, 1:50:22 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitucion' distanceToHeadOfLine: 0*kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' distanceToHeadOfLine: 5*kilometer.
	retiro60 := Stop named: 'Retiro' distanceToHeadOfLine: 8*kilometer.
	belgrano60 := Stop named: 'Belgrano' distanceToHeadOfLine: 12*kilometer.
	linea60 := TransportLine
		named: 'Linea 60'
		stops: { constitucion. plazaDeMayo. retiro60. belgrano60 }
		fareTable: (FareTable forDistancesUpTo: { 5*kilometer -> (600*peso). 10*kilometer -> (1000*peso). PlusInfinity new -> (1300*peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucuman' distanceToHeadOfLine: 0*kilometer.
	tribunales := Stop named: 'Tribunales' distanceToHeadOfLine: 1.2*kilometer.
	callao := Stop named: 'Callao' distanceToHeadOfLine: 2.5*kilometer.
	palermo := Stop named: 'Palermo' distanceToHeadOfLine: 6*kilometer.
	subteD := TransportLine
		named: 'Subte Linea D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable flatFareOf: 1000*peso).

	retiro := Stop named: 'Retiro' distanceToHeadOfLine: 0*kilometer.
	belgrano := Stop named: 'Belgrano' distanceToHeadOfLine: 8*kilometer.
	sanIsidro := Stop named: 'San Isidro' distanceToHeadOfLine: 18*kilometer.
	tigre := Stop named: 'Tigre' distanceToHeadOfLine: 28*kilometer.
	mitre := TransportLine
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		stops: { retiro. belgrano. sanIsidro. tigre }
		fareTable: (FareTable forDistancesUpTo: { 15*kilometer -> (400*peso). PlusInfinity new -> (600*peso) })! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
mondayAt: anHour minutes: aMinute
	"Monday, November 24th of 2025"
	^self november2025Day: 24 at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
november2025Day: aDayNumber at: anHour minutes: aMinute
	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
saturdayAt: anHour minutes: aMinute
	"Saturday, November 22nd of 2025"
	^self november2025Day: 22 at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
sundayAt: anHour minutes: aMinute
	"Sunday, November 23rd of 2025"
	^self november2025Day: 23 at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
tuesdayAt: anHour minutes: aMinute
	"Tuesday, November 25th of 2025"
	^self november2025Day: 25 at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
cardWithoutDiscount
	^BajeCard withBalance: 100000*peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
retireeCard
	^BajeCard withBalance: 100000*peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
studentCard
	^BajeCard withBalance: 100000*peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:50:36 am (UTC)'!
assert: aCard wasChargedWith: aPrice
	self assert: (100000*peso) - aPrice equals: aCard balance! !

!ISWMetropolitanoTest class methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:50:22 am (UTC)'!
isAbstract
	^self name = #ISWMetropolitanoTest! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test01ACardWithoutDiscountAlwaysPaysTheFullPrice
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 13 minutes: 0).
	self assert: card wasChargedWith: 1200*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test02AStudentCardPaysHalfThePriceFromMondayToFriday
	| card reader |

	card := self studentCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 11 minutes: 0).
	self assert: card wasChargedWith: 300*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test03AStudentCardPaysTheFullPriceOnWeekends
	| card reader |

	card := self studentCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self saturdayAt: 11 minutes: 0).
	self assert: card wasChargedWith: 600*peso.

	card := self studentCard.
	reader charge: card from: constitucion to: plazaDeMayo on: (self sundayAt: 11 minutes: 0).
	self assert: card wasChargedWith: 600*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test04TheStudentDiscountIsNotCumulativeWithTheTransferDiscount
	| card reader |

	card := self studentCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 10 minutes: 30).
	self assert: card wasChargedWith: 600*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test05AStudentCardGetsTheTransferDiscountOnWeekends
	| card reader |

	card := self studentCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self saturdayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self saturdayAt: 10 minutes: 30).
	self assert: card wasChargedWith: 900*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test06ARetireeCardHasTwoFreeTripsPerDayAndPaysTheFullPriceForTheRest
	| card reader |

	card := self retireeCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 30).
	self assert: card wasChargedWith: 0*peso.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 11 minutes: 0).
	self assert: card wasChargedWith: 600*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test07TheFreeTripsOfARetireeCardAreRenewedEveryDay
	| card reader |

	card := self retireeCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 30).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 11 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 8 minutes: 0).
	self assert: card wasChargedWith: 600*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test08ARetireeCardGetsTheTransferDiscountOnceItUsedItsFreeTrips
	| card reader |

	card := self retireeCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 8 minutes: 30).
	reader charge: card from: constitucion to: plazaDeMayo on: (self mondayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 300*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test09ATripStartedWithinTwoHoursOfTheLastOneIsATransfer
	| card busReader subwayReader |

	card := self cardWithoutDiscount.
	busReader := BusCardReader for: linea60.
	subwayReader := SubwayCardReader for: subteD.
	busReader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasChargedWith: 600*peso.
	subwayReader charge: card boardingAt: tribunales towards: palermo on: (self tuesdayAt: 10 minutes: 30).
	self assert: card wasChargedWith: 1100*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test10ATripStartedMoreThanTwoHoursAfterTheLastOneIsNotATransfer
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 12 minutes: 1).
	self assert: card wasChargedWith: 1200*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test11ATripStartedExactlyTwoHoursAfterTheLastOneIsATransfer
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 12 minutes: 0).
	self assert: card wasChargedWith: 900*peso! !

!BajeCardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:52:08 am (UTC)'!
test12ThereIsNoLimitOfTransfersAndTheyAreCountedFromTheStartOfTheLastTrip
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 11 minutes: 30).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 13 minutes: 0).
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 14 minutes: 30).
	self assert: card wasChargedWith: 1500*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test01ChargesThePriceOfTheDistanceBetweenOriginAndDestination
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasChargedWith: 600*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test02ChargesAStudentCardHalfThePriceOnAWeekDay
	| card reader |

	card := self studentCard.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: belgrano60 on: (self mondayAt: 11 minutes: 0).
	self assert: card wasChargedWith: 650*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test03RegistersTheTripInTheCard
	| card reader trip |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	trip := reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	self assert: 1 equals: card trips size.
	self assert: trip equals: card lastTrip.
	self assert: constitucion equals: trip origin.
	self assert: plazaDeMayo equals: trip destination.
	self assert: 600*peso equals: trip price.
	self assert: (self tuesdayAt: 10 minutes: 0) equals: trip dateTime! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test04OriginAndDestinationCanNotBeTheSameStop
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	self
		should: [reader charge: card from: plazaDeMayo to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: CardReader originAndDestinationMustBeDifferentErrorDescription.
	self assert: card wasChargedWith: 0*peso.
	self assert: card trips isEmpty! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test05OriginAndDestinationMustBelongToTheMeansOfTransport
	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: linea60.
	self
		should: [reader charge: card from: constitucion to: palermo on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: CardReader stopDoesNotBelongToTheMeansOfTransportErrorDescription.
	self
		should: [reader charge: card from: palermo to: constitucion on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: CardReader stopDoesNotBelongToTheMeansOfTransportErrorDescription.
	self assert: card wasChargedWith: 0*peso.
	self assert: card trips isEmpty! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test06CanNotTravelWithoutEnoughBalance
	| card reader |

	card := BajeCard withBalance: 599*peso discount: NoDiscount new.
	reader := BusCardReader for: linea60.
	self
		should: [reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: BajeCard notEnoughBalanceErrorDescription.
	self assert: 599*peso equals: card balance.
	self assert: card trips isEmpty! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:03 am (UTC)'!
test07CanTravelSpendingAllTheBalance
	| card reader |

	card := BajeCard withBalance: 600*peso discount: NoDiscount new.
	reader := BusCardReader for: linea60.
	reader charge: card from: constitucion to: plazaDeMayo on: (self tuesdayAt: 10 minutes: 0).
	self assert: 0*peso equals: card balance! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test01ChargesTheFixedPriceNoMatterTheStopAndTheDirection
	| card reader |

	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subteD.
	reader charge: card boardingAt: tribunales towards: palermo on: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasChargedWith: 1000*peso! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test02DoesNotChargeARetireeCardOnItsFirstTripOfTheDay
	| card reader |

	card := self retireeCard.
	reader := SubwayCardReader for: subteD.
	reader charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self saturdayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 0*peso.
	self assert: 1 equals: card trips size! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test03TheDirectionMustBeTheHeadOrTheEndOfTheLine
	| card reader |

	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subteD.
	self
		should: [reader charge: card boardingAt: tribunales towards: callao on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: TurnstileCardReader directionMustBeTheHeadOrTheEndOfTheLineErrorDescription.
	self assert: card trips isEmpty! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test04CanNotBoardAtTheStopTheTripIsHeadingTo
	| card reader |

	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subteD.
	self
		should: [reader charge: card boardingAt: palermo towards: palermo on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: CardReader originAndDestinationMustBeDifferentErrorDescription.
	self assert: card trips isEmpty! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test05TheStopMustBelongToTheMeansOfTransport
	| card reader |

	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subteD.
	self
		should: [reader charge: card boardingAt: constitucion towards: palermo on: (self tuesdayAt: 10 minutes: 0)]
		raise: Error
		withMessageText: CardReader stopDoesNotBelongToTheMeansOfTransportErrorDescription.
	self assert: card trips isEmpty! !

!SubwayCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:18 am (UTC)'!
test06TheTripGoesFromTheBoardingStopToTheDirectionOfTheTrip
	| card reader trip |

	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subteD.
	trip := reader charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self tuesdayAt: 10 minutes: 0).
	self assert: tribunales equals: trip origin.
	self assert: congresoDeTucuman equals: trip destination! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test01ChargesOnEntryThePriceUpToTheDirectionOfTheTrip
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 600*peso! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test02RefundsTheDifferenceOfTheTripActuallyMadeWhenExiting
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	reader chargeExitOf: card at: belgrano.
	self assert: card wasChargedWith: 400*peso! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test03KeepsThePriceChargedOnEntryWhenTheExitIsNotMarked
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 600*peso.
	self assert: retiro equals: card lastTrip destination! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test04MarkingTheExitAdjustsTheDestinationOfTheTrip
	| card reader trip |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	trip := reader chargeExitOf: card at: belgrano.
	self assert: trip equals: card lastTrip.
	self assert: sanIsidro equals: trip origin.
	self assert: belgrano equals: trip destination.
	self assert: 400*peso equals: trip price.
	self assert: 1 equals: card trips size! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test05DoesNotRefundAnythingWhenExitingAtTheDirectionOfTheTrip
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	reader chargeExitOf: card at: retiro.
	self assert: card wasChargedWith: 600*peso! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test06TheAdjustmentKeepsTheDiscountAppliedWhenTheTripStarted
	"The student pays half of the price both on entry and after the adjustment"
	| card reader |

	card := self studentCard.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self mondayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 300*peso.
	reader chargeExitOf: card at: belgrano.
	self assert: card wasChargedWith: 200*peso! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test07TheAdjustmentOfAFreeTripDoesNotRefundAnything
	| card reader |

	card := self retireeCard.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: sanIsidro towards: retiro on: (self saturdayAt: 9 minutes: 0).
	reader chargeExitOf: card at: belgrano.
	self assert: card wasChargedWith: 0*peso! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test08TheDirectionMustBeTheHeadOrTheEndOfTheLine
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	self
		should: [reader charge: card boardingAt: retiro towards: sanIsidro on: (self saturdayAt: 9 minutes: 0)]
		raise: Error
		withMessageText: TurnstileCardReader directionMustBeTheHeadOrTheEndOfTheLineErrorDescription.
	self assert: card trips isEmpty! !

!TrainCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:51:32 am (UTC)'!
test09ChargesTheTripUpToTheEndOfTheRouteWhenGoingInThatDirection
	| card reader |

	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader charge: card boardingAt: belgrano towards: tigre on: (self saturdayAt: 9 minutes: 0).
	self assert: card wasChargedWith: 600*peso.
	reader chargeExitOf: card at: sanIsidro.
	self assert: card wasChargedWith: 400*peso! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test01MeansOfTransportCanNotHaveLessThanTwoStops
	self
		should: [TransportLine named: 'Linea 60' stops: { constitucion } fareTable: (FareTable flatFareOf: 600*peso)]
		raise: Error
		withMessageText: TransportLine mustHaveAtLeastTwoStopsErrorDescription! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test02DistanceBetweenStopsIsTheAbsoluteDifferenceOfTheirDistancesToTheHeadOfTheLine
	self assert: 12*kilometer equals: (linea60 distanceFrom: constitucion to: belgrano60).
	self assert: 12*kilometer equals: (linea60 distanceFrom: belgrano60 to: constitucion).
	self assert: 4*kilometer equals: (linea60 distanceFrom: retiro60 to: belgrano60)! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test03PriceDependsOnTheBracketOfTheFareTableTheDistanceFallsInto
	self assert: 600*peso equals: (linea60 priceFrom: constitucion to: plazaDeMayo).
	self assert: 1000*peso equals: (linea60 priceFrom: constitucion to: retiro60).
	self assert: 1300*peso equals: (linea60 priceFrom: constitucion to: belgrano60)! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test04TheUpperLimitOfABracketIsChargedWithThePriceOfThatBracket
	"Constitucion to Plaza de Mayo is exactly 5 km, the upper limit of the first bracket"
	self assert: 5*kilometer equals: (linea60 distanceFrom: constitucion to: plazaDeMayo).
	self assert: 600*peso equals: (linea60 priceFrom: constitucion to: plazaDeMayo)! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test05FlatFareTableChargesTheSamePriceNoMatterTheDistance
	self assert: 1000*peso equals: (subteD priceFrom: congresoDeTucuman to: tribunales).
	self assert: 1000*peso equals: (subteD priceFrom: congresoDeTucuman to: palermo)! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test06HeadAndEndOfTheLineAreTheFirstAndLastStops
	self assert: congresoDeTucuman equals: subteD headOfLine.
	self assert: palermo equals: subteD endOfLine! !

!TransportLineTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:50:48 am (UTC)'!
test07StopsOfOtherMeansOfTransportDoNotBelongToTheLine
	self assert: (mitre includesStop: belgrano).
	self deny: (mitre includesStop: belgrano60)! !
