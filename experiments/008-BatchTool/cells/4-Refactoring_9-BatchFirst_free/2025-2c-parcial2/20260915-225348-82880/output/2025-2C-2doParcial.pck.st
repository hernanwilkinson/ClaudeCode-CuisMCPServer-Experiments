'From Cuis7.9 [latest update: #8185] on 15 September 2026 at 11:02:53 pm'!
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

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
CardReader subclass: #Turnstile
	instanceVariableNames: 'stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Turnstile class' category: #'2025-2C-2doParcial'!
Turnstile class
	instanceVariableNames: ''!

!classDefinition: #SubwayTurnstile category: #'2025-2C-2doParcial'!
Turnstile subclass: #SubwayTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayTurnstile class' category: #'2025-2C-2doParcial'!
SubwayTurnstile class
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
	instanceVariableNames: 'entries'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #FareTableEntry category: #'2025-2C-2doParcial'!
Object subclass: #FareTableEntry
	instanceVariableNames: 'upToDistance price'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTableEntry class' category: #'2025-2C-2doParcial'!
FareTableEntry class
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
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Stop class' category: #'2025-2C-2doParcial'!
Stop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'meansOfTransport origin destination dateTime discountFactor amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'line60 constitucion plazaDeMayo retiro belgrano subteD congresoDeTucuman tribunales callao palermo mitre trenRetiro trenBelgrano sanIsidro tigre'
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

!classDefinition: #MeansOfTransportTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #MeansOfTransportTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'MeansOfTransportTest class' category: #'2025-2C-2doParcial-Tests'!
MeansOfTransportTest class
	instanceVariableNames: ''!

!classDefinition: #SubwayTurnstileTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #SubwayTurnstileTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'SubwayTurnstileTest class' category: #'2025-2C-2doParcial-Tests'!
SubwayTurnstileTest class
	instanceVariableNames: ''!

!classDefinition: #TrainTurnstileTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #TrainTurnstileTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TrainTurnstileTest class' category: #'2025-2C-2doParcial-Tests'!
TrainTurnstileTest class
	instanceVariableNames: ''!


!BajeCard commentStamp: '<historical>' prior: 0!
I am a BAJE card. I know my balance, my discount configuration and the trips made with me.

When a card reader tells me to pay a trip, I ask my means of transport for its price, my discount for the factor to apply - which depends on when the trip is made and on the trips already made with me - and I charge the resulting amount, if I have enough balance for it.

Discounts are not cumulative: my discount decides whether it applies or whether the transfer discount does. A trip started within 2 hours of the start of the last one is a transfer.!

!CardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a means of transport. When a BAJE card is tapped on me I tell it to pay for the trip being made. My subclasses know how each means of transport is used.!

!BusCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a bus. The card is tapped once, telling the origin and the destination of the trip, and I charge the price of travelling that distance.!

!Turnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a stop of a means of transport. The card is tapped on me telling the direction one is going, which must be either the head of the line or the end of the route, and I charge the trip from my stop to that direction.!

!SubwayTurnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a subway stop. What is charged when the card is tapped on me is the whole trip: there is nothing to adjust when leaving the subway.!

!TrainTurnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a train stop. When the card is tapped on me on entrance, the trip up to the direction marked is charged. The card can also be tapped on me on exit, and then the trip is adjusted to the one actually made, refunding the difference. If the exit is not marked, what was charged on entrance is kept.!

!Discount commentStamp: '<historical>' prior: 0!
I am the discount configuration of a BajeCard. I answer the factor to apply to the price of a trip made at a given moment with a given card. My subclasses implement the different configurations, and each one decides whether its own discount applies or whether the transfer discount of the card does, because discounts are not cumulative.!

!NoDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a card without discount: the full price is always paid, unless the trip is a transfer.!

!RetireeDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a retiree card: the first two trips of each day are free and the rest are charged the full price, unless they are transfers.!

!StudentDiscount commentStamp: '<historical>' prior: 0!
I am the configuration of a student card: 50% of the price is paid from Monday to Friday and 100% on weekends, when the transfer discount does apply.!

!FareTable commentStamp: '<historical>' prior: 0!
I represent the fare table (cuadro tarifario) of a means of transport. I know, for a distance to travel, how much has to be charged for it. I am created with my entries ordered from the shortest distance to the longest one.

	FareTable with: {
		FareTableEntry upTo: 5*kilometer price: 600*peso.
		FareTableEntry upTo: PlusInfinity new price: 1000*peso }

	FareTable alwaysCharging: 1000*peso!

!FareTableEntry commentStamp: '<historical>' prior: 0!
I represent one entry of a fare table: I know the price to charge for every distance up to the distance I was created with. Use PlusInfinity new as the distance of the last entry of a fare table to cover every remaining distance.!

!MeansOfTransport commentStamp: '<historical>' prior: 0!
I represent a means of transport - a bus line, a subway line, a train branch. I know my route, which is the ordered collection of my stops, from my head of the line to my end of route, and my fare table.

I know the price of travelling between two of my stops, which depends on the distance between them, and I assert that both stops belong to my route and that they are different. I can not be created with less than two stops.!

!Stop commentStamp: '<historical>' prior: 0!
I represent a stop of a means of transport. I know my name and my distance to the head of the line of the means of transport I belong to. The distance between two stops is the absolute value of the difference of their distances to the head of the line.

I am unique: two stops with the same name on different means of transport are different stops.!

!Trip commentStamp: '<historical>' prior: 0!
I represent a trip made with a BajeCard. I know the means of transport it was made on, its origin and destination stops, when it started, how much was charged for it and the discount factor that was applied.

When the exit of a train is marked, my destination and the amount charged are adjusted to the trip actually made, keeping the discount factor that was applied when the card was tapped on entrance.!

!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
initializeWithBalance: anAmount discount: aDiscount

	balance := anAmount.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
balance

	^ balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
discount

	^ discount! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
trips

	^ trips copy! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
adjustLastTripTo: aStop

	| trip amountToCharge |

	trip := trips last.
	amountToCharge := (trip meansOfTransport priceFrom: trip origin to: aStop) * trip discountFactor.

	balance := balance + trip amountCharged.
	self pay: amountToCharge.
	trip adjustDestinationTo: aStop charging: amountToCharge.

	^ trip! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| price discountFactor amountToCharge trip |

	price := aMeansOfTransport priceFrom: anOrigin to: aDestination.
	discountFactor := discount discountFactorFor: self at: aDateTime.
	amountToCharge := price * discountFactor.

	self pay: amountToCharge.

	trip := Trip
		on: aMeansOfTransport
		from: anOrigin
		to: aDestination
		at: aDateTime
		charging: amountToCharge
		withDiscountFactor: discountFactor.
	trips add: trip.

	^ trip! !

!BajeCard methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
pay: anAmount

	self assertCanPay: anAmount.
	balance := balance - anAmount! !

!BajeCard methodsFor: 'validation' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class notEnoughBalanceErrorDescription ]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
isTransferAt: aDateTime

	^ trips notEmpty and: [ (trips last dateTime distanceTo: aDateTime) <= self class transferTimeLimit ]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
numberOfTripsOn: aDate

	^ trips count: [ :aTrip | aTrip dateTime date = aDate ]! !

!BajeCard methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
transferDiscountFactorAt: aDateTime

	^ (self isTransferAt: aDateTime)
		ifTrue: [ self class transferDiscountFactor ]
		ifFalse: [ 1 ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
withBalance: anAmount discount: aDiscount

	^ self new initializeWithBalance: anAmount discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
notEnoughBalanceErrorDescription

	^ 'There is not enough balance to pay for the trip'! !

!BajeCard class methodsFor: 'transfer policy' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
transferDiscountFactor

	^ 1/2! !

!BajeCard class methodsFor: 'transfer policy' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
transferTimeLimit

	^ 2 * hour! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeFor: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!CardReader methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
meansOfTransport

	^ meansOfTransport! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
for: aMeansOfTransport

	^ self new initializeFor: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
chargeTo: aCard from: anOrigin to: aDestination at: aDateTime

	^ aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeFor: aMeansOfTransport at: aStop

	self initializeFor: aMeansOfTransport.
	stop := aStop! !

!Turnstile methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
stop

	^ stop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
chargeTo: aCard goingTo: aDirection at: aDateTime

	self assertIsValidDirection: aDirection.

	^ aCard payTripOn: meansOfTransport from: stop to: aDirection at: aDateTime! !

!Turnstile methodsFor: 'validation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
assertIsValidDirection: aDirection

	(aDirection = meansOfTransport headOfLine or: [ aDirection = meansOfTransport endOfRoute ])
		ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
for: aMeansOfTransport at: aStop

	^ self new initializeFor: aMeansOfTransport at: aStop! !

!Turnstile class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
invalidDirectionErrorDescription

	^ 'The direction must be the head of the line or the end of the route'! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
chargeExitTo: aCard

	^ aCard adjustLastTripTo: stop! !

!Discount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
discountFactorFor: aCard at: aDateTime

	^ self subclassResponsibility! !

!NoDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
discountFactorFor: aCard at: aDateTime

	^ aCard transferDiscountFactorAt: aDateTime! !

!RetireeDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
discountFactorFor: aCard at: aDateTime

	^ (aCard numberOfTripsOn: aDateTime date) < self class numberOfFreeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard transferDiscountFactorAt: aDateTime ]! !

!RetireeDiscount class methodsFor: 'discount policy' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
numberOfFreeTripsPerDay

	^ 2! !

!StudentDiscount methodsFor: 'discounts' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
discountFactorFor: aCard at: aDateTime

	^ (self isWeekend: aDateTime date)
		ifTrue: [ aCard transferDiscountFactorAt: aDateTime ]
		ifFalse: [ self class studentDiscountFactor ]! !

!StudentDiscount methodsFor: 'discounts - private' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
isWeekend: aDate

	^ aDate isSaturday or: [ aDate isSunday ]! !

!StudentDiscount class methodsFor: 'discount policy' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
studentDiscountFactor

	^ 1/2! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeWith: aCollectionOfEntries

	entries := aCollectionOfEntries asOrderedCollection! !

!FareTable methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
priceFor: aDistance

	^ (entries detect: [ :anEntry | anEntry includes: aDistance ]) price! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
alwaysCharging: aPrice

	^ self with: (Array with: (FareTableEntry upTo: PlusInfinity new price: aPrice))! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
with: aCollectionOfEntries

	^ self new initializeWith: aCollectionOfEntries! !

!FareTableEntry methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeUpTo: aDistance price: aPrice

	upToDistance := aDistance.
	price := aPrice! !

!FareTableEntry methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
price

	^ price! !

!FareTableEntry methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
upToDistance

	^ upToDistance! !

!FareTableEntry methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
includes: aDistance

	^ aDistance <= upToDistance! !

!FareTableEntry class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
upTo: aDistance price: aPrice

	^ self new initializeUpTo: aDistance price: aPrice! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeNamed: aName withStops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := aCollectionOfStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
endOfRoute

	^ stops last! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
headOfLine

	^ stops first! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
name

	^ name! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
priceFrom: anOrigin to: aDestination

	self assertIsOwnStop: anOrigin.
	self assertIsOwnStop: aDestination.
	self assertAreDifferent: anOrigin and: aDestination.

	^ fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
stops

	^ stops copy! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
includes: aStop

	^ stops includes: aStop! !

!MeansOfTransport methodsFor: 'validation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
assertAreDifferent: anOrigin and: aDestination

	anOrigin = aDestination ifTrue: [ self error: self class stopsMustBeDifferentErrorDescription ]! !

!MeansOfTransport methodsFor: 'validation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
assertIsOwnStop: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotIncludedErrorDescription ]! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
named: aName withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aCollectionOfStops.
	^ self new initializeNamed: aName withStops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'validation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
assertHasAtLeastTwoStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self mustHaveAtLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription

	^ 'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
stopNotIncludedErrorDescription

	^ 'The stop does not belong to the means of transport'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
stopsMustBeDifferentErrorDescription

	^ 'The origin and the destination stops must be different'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
distanceTo: aStop

	^ (distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
distanceToHeadOfLine

	^ distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
name

	^ name! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^ self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime charging: anAmount withDiscountFactor: aDiscountFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	dateTime := aDateTime.
	amountCharged := anAmount.
	discountFactor := aDiscountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
amountCharged

	^ amountCharged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
dateTime

	^ dateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
destination

	^ destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
discountFactor

	^ discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
meansOfTransport

	^ meansOfTransport! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
origin

	^ origin! !

!Trip methodsFor: 'changing' stamp: 'HAW 16/Sep/2026, 1:58:17 am (UTC)'!
adjustDestinationTo: aStop charging: anAmount

	destination := aStop.
	amountCharged := anAmount! !

!Trip methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:58:36 am (UTC)'!
printOn: aStream

	aStream
		print: meansOfTransport;
		nextPutAll: ' from ';
		print: origin;
		nextPutAll: ' to ';
		print: destination! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:58:16 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime charging: anAmount withDiscountFactor: aDiscountFactor

	^ self new
		initializeOn: aMeansOfTransport
		from: anOrigin
		to: aDestination
		at: aDateTime
		charging: anAmount
		withDiscountFactor: aDiscountFactor! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
createBusLine60

	constitucion := Stop named: 'Constitucion' at: 0*kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5*kilometer.
	retiro := Stop named: 'Retiro' at: 8*kilometer.
	belgrano := Stop named: 'Belgrano' at: 12*kilometer.

	line60 := MeansOfTransport
		named: 'Linea 60'
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable with: {
			FareTableEntry upTo: 5*kilometer price: 600*peso.
			FareTableEntry upTo: 10*kilometer price: 1000*peso.
			FareTableEntry upTo: PlusInfinity new price: 1300*peso })! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
createMitreTrain

	trenRetiro := Stop named: 'Retiro' at: 0*kilometer.
	trenBelgrano := Stop named: 'Belgrano' at: 8*kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18*kilometer.
	tigre := Stop named: 'Tigre' at: 28*kilometer.

	mitre := MeansOfTransport
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		withStops: { trenRetiro. trenBelgrano. sanIsidro. tigre }
		fareTable: (FareTable with: {
			FareTableEntry upTo: 15*kilometer price: 400*peso.
			FareTableEntry upTo: PlusInfinity new price: 600*peso })! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
createSubwayLineD

	congresoDeTucuman := Stop named: 'Congreso de Tucuman' at: 0*kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2*kilometer.
	callao := Stop named: 'Callao' at: 2.5*kilometer.
	palermo := Stop named: 'Palermo' at: 6*kilometer.

	subteD := MeansOfTransport
		named: 'Subte Linea D'
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable alwaysCharging: 1000*peso)! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
setUp

	self createBusLine60.
	self createSubwayLineD.
	self createMitreTrain! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
monday24AtHours: anHourNumber minutes: aMinuteNumber

	^ self november2025: 24 atHours: anHourNumber minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
november2025: aDayNumber atHours: anHourNumber minutes: aMinuteNumber

	^ (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		atTimeOfDay: (TimeOfDay hours: anHourNumber minutes: aMinuteNumber)! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
saturday22AtHours: anHourNumber minutes: aMinuteNumber

	^ self november2025: 22 atHours: anHourNumber minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'fixture - dates' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
tuesday25AtHours: anHourNumber minutes: aMinuteNumber

	^ self november2025: 25 atHours: anHourNumber minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
cardWithoutDiscount

	^ BajeCard withBalance: self initialBalance discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
initialBalance

	^ 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
retireeCard

	^ BajeCard withBalance: self initialBalance discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'fixture - cards' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
studentCard

	^ BajeCard withBalance: self initialBalance discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
assert: aCard wasChargedWith: anAmount

	self assert: self initialBalance - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:59:48 am (UTC)'!
assertErrorIsSignaledWhen: aBlock describedAs: anErrorDescription

	| wasSignaled |

	wasSignaled := false.
	[ aBlock value ]
		on: Error
		do: [ :anError |
			wasSignaled := true.
			self assert: anErrorDescription equals: anError messageText ].

	self assert: wasSignaled! !

!BajeCardTest methodsFor: 'fixture' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
travelWith: aCard onSubwayAt: aDateTime

	^ (SubwayTurnstile for: subteD at: tribunales)
		chargeTo: aCard
		goingTo: palermo
		at: aDateTime! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testCardWithoutDiscountAlwaysPaysTheFullPrice

	| card |

	card := self cardWithoutDiscount.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 13 minutes: 0).

	self assert: card wasChargedWith: 2000*peso! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testFreeTripsOfARetireeAreCountedPerDay

	| card |

	card := self retireeCard.
	self travelWith: card onSubwayAt: (self monday24AtHours: 8 minutes: 0).
	self travelWith: card onSubwayAt: (self monday24AtHours: 12 minutes: 0).
	self travelWith: card onSubwayAt: (self monday24AtHours: 16 minutes: 0).
	self assert: card wasChargedWith: 1000*peso.

	self travelWith: card onSubwayAt: (self tuesday25AtHours: 8 minutes: 0).
	self assert: card wasChargedWith: 1000*peso! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testRetireeHasTwoFreeTripsPerDayAndPaysTheFullPriceForTheRest

	| card |

	card := self retireeCard.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 8 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 12 minutes: 0).
	self assert: card wasChargedWith: 0*peso.

	self travelWith: card onSubwayAt: (self tuesday25AtHours: 16 minutes: 0).
	self assert: card wasChargedWith: 1000*peso! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testStudentPaysHalfThePriceFromMondayToFriday

	| card |

	card := self studentCard.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 0).

	self assert: card wasChargedWith: 500*peso! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testStudentPaysTheFullPriceOnWeekends

	| card |

	card := self studentCard.
	self travelWith: card onSubwayAt: (self saturday22AtHours: 9 minutes: 0).

	self assert: card wasChargedWith: 1000*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testATripExactlyTwoHoursAfterTheStartOfTheLastOneIsATransfer

	| card |

	card := self cardWithoutDiscount.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 12 minutes: 0).

	self assert: card wasChargedWith: 1500*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testATripMoreThanTwoHoursAfterTheStartOfTheLastOneIsNotATransfer

	| card |

	card := self cardWithoutDiscount.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 12 minutes: 1).

	self assert: card wasChargedWith: 2000*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testATripWithinTwoHoursOfTheStartOfTheLastOneIsATransfer

	| card |

	card := self cardWithoutDiscount.
	(BusCardReader for: line60)
		chargeTo: card
		from: constitucion
		to: plazaDeMayo
		at: (self tuesday25AtHours: 10 minutes: 0).
	self assert: card wasChargedWith: 600*peso.

	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 30).
	self assert: card wasChargedWith: 1100*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testRetireeGetsTheTransferDiscountOnceTheFreeTripsOfTheDayAreUsed

	| card |

	card := self retireeCard.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 8 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 8 minutes: 30).
	self assert: card wasChargedWith: 0*peso.

	self travelWith: card onSubwayAt: (self tuesday25AtHours: 9 minutes: 0).
	self assert: card wasChargedWith: 500*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testStudentDiscountIsNotCumulativeWithTheTransferDiscount

	| card reader |

	card := self studentCard.
	reader := BusCardReader for: line60.
	reader chargeTo: card from: constitucion to: plazaDeMayo at: (self tuesday25AtHours: 10 minutes: 0).
	self assert: card wasChargedWith: 300*peso.

	reader chargeTo: card from: constitucion to: belgrano at: (self tuesday25AtHours: 10 minutes: 30).
	self assert: card wasChargedWith: 950*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testStudentGetsTheTransferDiscountOnWeekends

	| card |

	card := self studentCard.
	self travelWith: card onSubwayAt: (self saturday22AtHours: 9 minutes: 0).
	self travelWith: card onSubwayAt: (self saturday22AtHours: 9 minutes: 30).

	self assert: card wasChargedWith: 1500*peso! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 2:01:54 am (UTC)'!
testThereIsNoLimitOnTheNumberOfTransfers

	| card |

	card := self cardWithoutDiscount.
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 10 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 11 minutes: 30).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 13 minutes: 0).
	self travelWith: card onSubwayAt: (self tuesday25AtHours: 14 minutes: 30).

	self assert: card wasChargedWith: 2500*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testCanNotTravelFromAStopToItself

	| card |

	card := self cardWithoutDiscount.

	self
		assertErrorIsSignaledWhen: [ (BusCardReader for: line60)
			chargeTo: card
			from: retiro
			to: retiro
			at: (self tuesday25AtHours: 10 minutes: 0) ]
		describedAs: MeansOfTransport stopsMustBeDifferentErrorDescription.

	self assert: self initialBalance equals: card balance! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testCanNotTravelWithoutEnoughBalance

	| card |

	card := BajeCard withBalance: 599*peso discount: NoDiscount new.

	self
		assertErrorIsSignaledWhen: [ (BusCardReader for: line60)
			chargeTo: card
			from: constitucion
			to: plazaDeMayo
			at: (self tuesday25AtHours: 10 minutes: 0) ]
		describedAs: BajeCard notEnoughBalanceErrorDescription.

	self assert: 599*peso equals: card balance.
	self assert: card trips isEmpty! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testCanTravelWhenTheBalanceIsExactlyThePriceOfTheTrip

	| card |

	card := BajeCard withBalance: 600*peso discount: NoDiscount new.
	(BusCardReader for: line60)
		chargeTo: card
		from: constitucion
		to: plazaDeMayo
		at: (self tuesday25AtHours: 10 minutes: 0).

	self assert: 0*peso equals: card balance! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testChargesAccordingToTheDistanceWhenTheCardHasNoDiscount

	| card |

	card := self cardWithoutDiscount.
	(BusCardReader for: line60)
		chargeTo: card
		from: constitucion
		to: plazaDeMayo
		at: (self tuesday25AtHours: 10 minutes: 0).

	self assert: card wasChargedWith: 600*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testChargesHalfThePriceToAStudentFromMondayToFriday

	| card |

	card := self studentCard.
	(BusCardReader for: line60)
		chargeTo: card
		from: constitucion
		to: belgrano
		at: (self monday24AtHours: 11 minutes: 0).

	self assert: card wasChargedWith: 650*peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testRegistersTheTripMade

	| card when trip |

	card := self cardWithoutDiscount.
	when := self tuesday25AtHours: 10 minutes: 0.
	trip := (BusCardReader for: line60) chargeTo: card from: constitucion to: plazaDeMayo at: when.

	self assert: 1 equals: card trips size.
	self assert: trip equals: card trips first.
	self assert: line60 equals: trip meansOfTransport.
	self assert: constitucion equals: trip origin.
	self assert: plazaDeMayo equals: trip destination.
	self assert: when equals: trip dateTime.
	self assert: 600*peso equals: trip amountCharged! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testCanNotBeCreatedWithLessThanTwoStops

	| fareTable |

	fareTable := FareTable alwaysCharging: 1000*peso.

	self
		assertErrorIsSignaledWhen: [ MeansOfTransport named: 'No stops' withStops: #() fareTable: fareTable ]
		describedAs: MeansOfTransport mustHaveAtLeastTwoStopsErrorDescription.

	self
		assertErrorIsSignaledWhen: [ MeansOfTransport named: 'One stop' withStops: { constitucion } fareTable: fareTable ]
		describedAs: MeansOfTransport mustHaveAtLeastTwoStopsErrorDescription! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testDistanceBetweenStopsIsTheAbsoluteDifferenceToTheHeadOfLine

	self assert: 12*kilometer equals: (constitucion distanceTo: belgrano).
	self assert: 12*kilometer equals: (belgrano distanceTo: constitucion).
	self assert: 4*kilometer equals: (retiro distanceTo: belgrano)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testKnowsItsHeadOfLineAndItsEndOfRoute

	self assert: constitucion equals: line60 headOfLine.
	self assert: belgrano equals: line60 endOfRoute! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testOriginAndDestinationMustBeDifferent

	self
		assertErrorIsSignaledWhen: [ line60 priceFrom: retiro to: retiro ]
		describedAs: MeansOfTransport stopsMustBeDifferentErrorDescription! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testOriginAndDestinationMustBelongToTheMeansOfTransport

	self
		assertErrorIsSignaledWhen: [ line60 priceFrom: constitucion to: tribunales ]
		describedAs: MeansOfTransport stopNotIncludedErrorDescription.

	self
		assertErrorIsSignaledWhen: [ line60 priceFrom: tribunales to: constitucion ]
		describedAs: MeansOfTransport stopNotIncludedErrorDescription! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testPriceCanBeTheSameForEveryDistance

	self assert: 1000*peso equals: (subteD priceFrom: congresoDeTucuman to: tribunales).
	self assert: 1000*peso equals: (subteD priceFrom: palermo to: congresoDeTucuman)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testPriceDependsOnTheDistanceToTravel

	self assert: 600*peso equals: (line60 priceFrom: constitucion to: plazaDeMayo).
	self assert: 1000*peso equals: (line60 priceFrom: constitucion to: retiro).
	self assert: 1300*peso equals: (line60 priceFrom: constitucion to: belgrano).
	self assert: 600*peso equals: (line60 priceFrom: belgrano to: retiro)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testStopsWithTheSameNameOnDifferentMeansOfTransportAreDifferentStops

	self deny: retiro = trenRetiro.
	self assert: (line60 includes: retiro).
	self deny: (line60 includes: trenRetiro)! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testCanNotTravelFromTheStopOfTheTurnstileToItself

	| card |

	card := self cardWithoutDiscount.

	self
		assertErrorIsSignaledWhen: [ (SubwayTurnstile for: subteD at: congresoDeTucuman)
			chargeTo: card
			goingTo: congresoDeTucuman
			at: (self tuesday25AtHours: 10 minutes: 0) ]
		describedAs: MeansOfTransport stopsMustBeDifferentErrorDescription.

	self assert: self initialBalance equals: card balance! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testChargesNothingToARetireeOnTheirFirstTripOfTheDay

	| card trip |

	card := self retireeCard.
	trip := (SubwayTurnstile for: subteD at: tribunales)
		chargeTo: card
		goingTo: congresoDeTucuman
		at: (self saturday22AtHours: 9 minutes: 0).

	self assert: card wasChargedWith: 0*peso.
	self assert: 0*peso equals: trip amountCharged.
	self assert: 1 equals: card trips size! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testChargesTheFixedPriceNoMatterTheDistanceToTravel

	| card |

	card := self cardWithoutDiscount.
	(SubwayTurnstile for: subteD at: tribunales)
		chargeTo: card
		goingTo: congresoDeTucuman
		at: (self tuesday25AtHours: 10 minutes: 0).

	self assert: card wasChargedWith: 1000*peso! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testDirectionMustBeTheHeadOfLineOrTheEndOfRoute

	| card |

	card := self cardWithoutDiscount.

	self
		assertErrorIsSignaledWhen: [ (SubwayTurnstile for: subteD at: tribunales)
			chargeTo: card
			goingTo: callao
			at: (self tuesday25AtHours: 10 minutes: 0) ]
		describedAs: Turnstile invalidDirectionErrorDescription.

	self assert: self initialBalance equals: card balance.
	self assert: card trips isEmpty! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testTravelsTowardsTheDirectionMarkedWhenTappingTheCard

	| trip |

	trip := (SubwayTurnstile for: subteD at: tribunales)
		chargeTo: self cardWithoutDiscount
		goingTo: palermo
		at: (self tuesday25AtHours: 10 minutes: 0).

	self assert: tribunales equals: trip origin.
	self assert: palermo equals: trip destination! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testChargesUpToTheStopMarkedAsDirectionWhenEntering

	| card |

	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self saturday22AtHours: 9 minutes: 0).

	self assert: card wasChargedWith: 600*peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testDirectionMustBeTheHeadOfLineOrTheEndOfRoute

	| card |

	card := self cardWithoutDiscount.

	self
		assertErrorIsSignaledWhen: [ (TrainTurnstile for: mitre at: sanIsidro)
			chargeTo: card
			goingTo: trenBelgrano
			at: (self saturday22AtHours: 9 minutes: 0) ]
		describedAs: Turnstile invalidDirectionErrorDescription.

	self assert: self initialBalance equals: card balance! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testKeepsTheDiscountOfTheCardWhenAdjustingTheExit

	| card |

	card := self studentCard.
	(TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self monday24AtHours: 9 minutes: 0).
	self assert: card wasChargedWith: 300*peso.

	(TrainTurnstile for: mitre at: trenBelgrano) chargeExitTo: card.
	self assert: card wasChargedWith: 200*peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testKeepsWhatWasChargedWhenEnteringIfTheExitIsNotMarked

	| card |

	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self saturday22AtHours: 9 minutes: 0).

	self assert: card wasChargedWith: 600*peso.
	self assert: trenRetiro equals: card trips last destination! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testMarkingTheExitDoesNotRegisterANewTrip

	| card |

	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self saturday22AtHours: 9 minutes: 0).
	(TrainTurnstile for: mitre at: trenBelgrano) chargeExitTo: card.

	self assert: 1 equals: card trips size! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testRefundsNothingWhenExitingAtTheStopMarkedAsDirection

	| card |

	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self saturday22AtHours: 9 minutes: 0).
	(TrainTurnstile for: mitre at: trenRetiro) chargeExitTo: card.

	self assert: card wasChargedWith: 600*peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 2:01:17 am (UTC)'!
testRefundsTheDifferenceOfTheTripActuallyMadeWhenExiting

	| card trip |

	card := self cardWithoutDiscount.
	trip := (TrainTurnstile for: mitre at: sanIsidro)
		chargeTo: card
		goingTo: trenRetiro
		at: (self saturday22AtHours: 9 minutes: 0).
	(TrainTurnstile for: mitre at: trenBelgrano) chargeExitTo: card.

	self assert: card wasChargedWith: 400*peso.
	self assert: trenBelgrano equals: trip destination.
	self assert: 400*peso equals: trip amountCharged! !
