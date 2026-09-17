'From Cuis7.9 [latest update: #8185] on 15 September 2026 at 10:57:48 pm'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BAJECard category: #'2025-2C-2doParcial'!
Object subclass: #BAJECard
	instanceVariableNames: 'balance discountPolicy trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BAJECard class' category: #'2025-2C-2doParcial'!
BAJECard class
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

!classDefinition: #DiscountPolicy category: #'2025-2C-2doParcial'!
Object subclass: #DiscountPolicy
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'DiscountPolicy class' category: #'2025-2C-2doParcial'!
DiscountPolicy class
	instanceVariableNames: ''!

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
DiscountPolicy subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
DiscountPolicy subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
	instanceVariableNames: ''!

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
DiscountPolicy subclass: #StudentDiscount
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
	instanceVariableNames: 'maximumDistance price'
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
	instanceVariableNames: 'meansOfTransport origin destination startDateTime chargedAmount discountFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subteD retiroTrain belgranoTrain sanIsidro tigre trenMitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!

!classDefinition: #BAJECardTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #BAJECardTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BAJECardTest class' category: #'2025-2C-2doParcial-Tests'!
BAJECardTest class
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

!classDefinition: #DiscountPolicyTest category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest subclass: #DiscountPolicyTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'DiscountPolicyTest class' category: #'2025-2C-2doParcial-Tests'!
DiscountPolicyTest class
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


!BAJECard commentStamp: '<historical>' prior: 0!
I am a BAJE card, the card used to pay the trips made in the means of transport of the city. I know my balance, my discount policy and all the trips made with me. I charge a trip applying the factor answered by my discount policy to its price, and I can not be used when my balance is not enough to pay for it.!

!CardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a means of transport. I charge the trips made with a BAJE card that is tapped on me. My subclasses know how the trip being paid is determined for each means of transport.!

!BusCardReader commentStamp: '<historical>' prior: 0!
I am the card reader of a bus. I charge when the card is tapped, and the price depends on the distance between the origin and the destination of the trip.!

!Turnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a stop of a means of transport. I charge when a card is tapped on me, indicating the direction the trip is going to, which must be the head of the line or the end of the route, and the trip charged goes from my stop to that direction.!

!SubwayTurnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a subway stop. I charge the price of the fare table of the line, which does not depend on the distance travelled.!

!TrainTurnstile commentStamp: '<historical>' prior: 0!
I am a turnstile of a train stop. When the card is tapped to enter, I charge the trip up to the stop of the direction it is going to. When it is tapped to exit, I adjust the charge to the trip that was really made, keeping the discount that was applied when entering. If the exit is not tapped, what was charged when entering is kept.!

!DiscountPolicy commentStamp: '<historical>' prior: 0!
I am the discount configuration of a BAJE card. I answer the factor to apply to the price of a trip made at a given date and time, knowing the trips already made with the card. Discounts are not cumulative: a card that is getting one of my discounts does not get the transfer discount too. A trip started within the transfer window of the beginning of the last trip made is a transfer and pays half of its price.!

!NoDiscount commentStamp: '<historical>' prior: 0!
I am the discount policy of a card that always pays the full price of its trips, except when they are transfers.!

!RetireeDiscount commentStamp: '<historical>' prior: 0!
I am the discount policy of a retiree card. It has two free trips per day and pays the rest of them as a card without discount does, getting the transfer discount when they are transfers.!

!StudentDiscount commentStamp: '<historical>' prior: 0!
I am the discount policy of a student card. It pays 50% of the price from Monday to Friday and the full price on weekends, when it gets the transfer discount instead.!

!FareTable commentStamp: '<historical>' prior: 0!
I am the fare table (cuadro tarifario) of a means of transport. I know my entries, ordered from the shortest to the longest maximum distance, and I answer the price to be paid to travel a given distance, which is the price of the first entry that includes it.!

!FareTableEntry commentStamp: '<historical>' prior: 0!
I am an entry of a fare table. I know the maximum distance I apply to and the price to be paid for it. I include any distance that is not greater than my maximum distance, which can be PlusInfinity new when I apply to any distance.!

!MeansOfTransport commentStamp: '<historical>' prior: 0!
I represent a means of transport, like a bus line, a subway line or a train branch. I know my route, as an ordered collection of stops going from the head of the line (my first stop) to the end of the route (my last stop), and my fare table. I answer the price of travelling between two of my stops and I assert the validity of the trips and directions asked of me. I must have at least two stops.!

!Stop commentStamp: '<historical>' prior: 0!
I represent a stop of a means of transport. I know my name and my distance to the head of the line of the means of transport I belong to. The distance between two stops is the absolute value of the difference of their distances to the head of the line. I am unique, so two stops with the same name of different means of transport are different stops.!

!Trip commentStamp: '<historical>' prior: 0!
I represent a trip made with a BAJE card. I know the means of transport where it was made, its origin, its destination, the date and time it started, the amount charged for it and the discount factor that was applied to its price. When a train trip ends, I am told the stop where it really ended and the amount that was finally charged for it.!

!ISWMetropolitanoTest commentStamp: '<historical>' prior: 0!
I am the common setUp of the tests of the ISWMetropolitano system. I create the bus line 60, the subway line D and the Retiro-Tigre branch of the Mitre train with their stops and fare tables, and I know how to create the cards, the readers and the dates used by my subclasses.!

!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscountPolicy

	balance := aBalance.
	discountPolicy := aDiscountPolicy.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
discountPolicy

	^discountPolicy! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
lastTrip

	^trips last! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
adjustLastTripTo: aStop costing: anAmount

	| lastTrip difference |

	lastTrip := self lastTrip.
	difference := anAmount - lastTrip chargedAmount.
	self assertCanPay: difference.

	balance := balance - difference.
	lastTrip endedAt: aStop charging: anAmount.

	^lastTrip! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime costing: aPrice

	| discountFactor amountToCharge trip |

	discountFactor := discountPolicy factorAt: aDateTime given: trips.
	amountToCharge := aPrice * discountFactor.
	self assertCanPay: amountToCharge.

	balance := balance - amountToCharge.
	trip := Trip
		on: aMeansOfTransport
		from: anOrigin
		to: aDestination
		startingAt: aDateTime
		charging: amountToCharge
		withDiscountFactor: discountFactor.
	trips add: trip.

	^trip! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ ^self error: self class notEnoughBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
withBalance: aBalance discount: aDiscountPolicy

	^self new initializeWithBalance: aBalance discount: aDiscountPolicy! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
notEnoughBalanceErrorDescription

	^'There is not enough balance in the card to pay the trip'! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
initializeOf: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!CardReader methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
meansOfTransport

	^meansOfTransport! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
of: aMeansOfTransport

	^self new initializeOf: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
tapWith: aCard from: anOrigin to: aDestination on: aDateTime

	| price |

	price := meansOfTransport priceFrom: anOrigin to: aDestination.

	^aCard
		payTripOn: meansOfTransport
		from: anOrigin
		to: aDestination
		at: aDateTime
		costing: price! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
initializeOf: aMeansOfTransport at: aStop

	self initializeOf: aMeansOfTransport.
	stop := aStop! !

!Turnstile methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
stop

	^stop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
tapWith: aCard towards: aDirection on: aDateTime

	| price |

	meansOfTransport assertIsValidDirection: aDirection.
	price := meansOfTransport priceFrom: stop to: aDirection.

	^aCard
		payTripOn: meansOfTransport
		from: stop
		to: aDirection
		at: aDateTime
		costing: price! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
of: aMeansOfTransport at: aStop

	aMeansOfTransport assertIncludesStop: aStop.

	^self new initializeOf: aMeansOfTransport at: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:53:16 am (UTC)'!
tapExitWith: aCard on: aDateTime

	| tripBeingMade actualPrice |

	tripBeingMade := aCard lastTrip.
	actualPrice := (meansOfTransport priceFrom: tripBeingMade origin to: stop) * tripBeingMade discountFactor.

	^aCard adjustLastTripTo: stop costing: actualPrice! !

!DiscountPolicy methodsFor: 'discounting' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
factorAt: aDateTime given: aCollectionOfTrips

	^self subclassResponsibility! !

!DiscountPolicy methodsFor: 'discounting' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
transferFactorAt: aDateTime given: aCollectionOfTrips

	^(self isTransferAt: aDateTime given: aCollectionOfTrips)
		ifTrue: [ 1/2 ]
		ifFalse: [ 1 ]! !

!DiscountPolicy methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
isTransferAt: aDateTime given: aCollectionOfTrips

	aCollectionOfTrips isEmpty ifTrue: [ ^false ].

	^(aDateTime distanceFrom: aCollectionOfTrips last startDateTime) <= self class transferWindow! !

!DiscountPolicy methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
isWeekend: aDateTime

	| day |

	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!DiscountPolicy methodsFor: 'querying' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
numberOfTripsOn: aDateTime of: aCollectionOfTrips

	^aCollectionOfTrips count: [ :aTrip | aTrip startDateTime date = aDateTime date ]! !

!DiscountPolicy class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
transferWindow

	^2 * hour! !

!NoDiscount methodsFor: 'discounting' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
factorAt: aDateTime given: aCollectionOfTrips

	^self transferFactorAt: aDateTime given: aCollectionOfTrips! !

!RetireeDiscount methodsFor: 'discounting' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
factorAt: aDateTime given: aCollectionOfTrips

	^(self numberOfTripsOn: aDateTime of: aCollectionOfTrips) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ self transferFactorAt: aDateTime given: aCollectionOfTrips ]! !

!RetireeDiscount class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discounting' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
factorAt: aDateTime given: aCollectionOfTrips

	^(self isWeekend: aDateTime)
		ifTrue: [ self transferFactorAt: aDateTime given: aCollectionOfTrips ]
		ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
initializeWithEntries: aCollectionOfEntries

	entries := aCollectionOfEntries! !

!FareTable methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
priceFor: aDistance

	^(entries detect: [ :anEntry | anEntry includes: aDistance ]) price! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
fixedPriceOf: aPrice

	^self withEntries: (Array with: (FareTableEntry upTo: PlusInfinity new costing: aPrice))! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
withEntries: aCollectionOfEntries

	^self new initializeWithEntries: aCollectionOfEntries! !

!FareTableEntry methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
initializeUpTo: aMaximumDistance costing: aPrice

	maximumDistance := aMaximumDistance.
	price := aPrice! !

!FareTableEntry methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
maximumDistance

	^maximumDistance! !

!FareTableEntry methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
price

	^price! !

!FareTableEntry methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
includes: aDistance

	^aDistance <= maximumDistance! !

!FareTableEntry class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
upTo: aMaximumDistance costing: aPrice

	^self new initializeUpTo: aMaximumDistance costing: aPrice! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := aCollectionOfStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
endOfRoute

	^stops last! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
headOfLine

	^stops first! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
name

	^name! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
stops

	^stops copy! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
includesStop: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
isValidDirection: aStop

	^aStop == self headOfLine or: [ aStop == self endOfRoute ]! !

!MeansOfTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
priceFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
assertIncludesStop: aStop

	(self includesStop: aStop) ifFalse: [ ^self error: self class stopNotIncludedErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
assertIsValidDirection: aStop

	(self isValidDirection: aStop) ifFalse: [ ^self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	((self includesStop: anOrigin) and: [ self includesStop: aDestination ])
		ifFalse: [ ^self error: self class stopNotIncludedErrorDescription ].
	anOrigin == aDestination ifTrue: [ ^self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable

	aCollectionOfStops size < 2 ifTrue: [ ^self error: self lessThanTwoStopsErrorDescription ].

	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the end of the route'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
lessThanTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
stopNotIncludedErrorDescription

	^'Origin and destination must belong to the same means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
initializeNamed: aName distanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:18 am (UTC)'!
named: aName distanceToHeadOfLine: aDistance

	^self new initializeNamed: aName distanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime charging: anAmount withDiscountFactor: aFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	startDateTime := aDateTime.
	chargedAmount := anAmount.
	discountFactor := aFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
chargedAmount

	^chargedAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
discountFactor

	^discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
meansOfTransport

	^meansOfTransport! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
startDateTime

	^startDateTime! !

!Trip methodsFor: 'updating' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
endedAt: aStop charging: anAmount

	destination := aStop.
	chargedAmount := anAmount! !

!Trip methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
printOn: aStream

	aStream
		nextPutAll: meansOfTransport name;
		nextPutAll: ' from ';
		print: origin;
		nextPutAll: ' to ';
		print: destination! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:52:36 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime charging: anAmount withDiscountFactor: aFactor

	^self new
		initializeOn: aMeansOfTransport
		from: anOrigin
		to: aDestination
		startingAt: aDateTime
		charging: anAmount
		withDiscountFactor: aFactor! !

!ISWMetropolitanoTest methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitucion' distanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' distanceToHeadOfLine: 5 * kilometer.
	retiro := Stop named: 'Retiro' distanceToHeadOfLine: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' distanceToHeadOfLine: 12 * kilometer.
	line60 := MeansOfTransport
		named: 'Linea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: self line60FareTable.

	congresoDeTucuman := Stop named: 'Congreso de Tucuman' distanceToHeadOfLine: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' distanceToHeadOfLine: 1.2 * kilometer.
	callao := Stop named: 'Callao' distanceToHeadOfLine: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' distanceToHeadOfLine: 6 * kilometer.
	subteD := MeansOfTransport
		named: 'Subte Linea D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixedPriceOf: 1000 * peso).

	retiroTrain := Stop named: 'Retiro' distanceToHeadOfLine: 0 * kilometer.
	belgranoTrain := Stop named: 'Belgrano' distanceToHeadOfLine: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' distanceToHeadOfLine: 18 * kilometer.
	tigre := Stop named: 'Tigre' distanceToHeadOfLine: 28 * kilometer.
	trenMitre := MeansOfTransport
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		stops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: self trenMitreFareTable! !

!ISWMetropolitanoTest methodsFor: 'fare tables' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
line60FareTable

	^FareTable withEntries: {
		FareTableEntry upTo: 5 * kilometer costing: 600 * peso.
		FareTableEntry upTo: 10 * kilometer costing: 1000 * peso.
		FareTableEntry upTo: PlusInfinity new costing: 1300 * peso }! !

!ISWMetropolitanoTest methodsFor: 'fare tables' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
trenMitreFareTable

	^FareTable withEntries: {
		FareTableEntry upTo: 15 * kilometer costing: 400 * peso.
		FareTableEntry upTo: PlusInfinity new costing: 600 * peso }! !

!ISWMetropolitanoTest methodsFor: 'date times' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
monday24At: anHour minutes: aMinuteNumber

	^self november: 24 at: anHour minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'date times' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinuteNumber

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinuteNumber)! !

!ISWMetropolitanoTest methodsFor: 'date times' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
saturday22At: anHour minutes: aMinuteNumber

	^self november: 22 at: anHour minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'date times' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
tuesday25At: anHour minutes: aMinuteNumber

	^self november: 25 at: anHour minutes: aMinuteNumber! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
cardWithNoDiscount

	^BAJECard withBalance: self initialBalance discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
initialBalance

	^10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
retireeCard

	^BAJECard withBalance: self initialBalance discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
studentCard

	^BAJECard withBalance: self initialBalance discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'readers' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
line60Reader

	^BusCardReader of: line60! !

!ISWMetropolitanoTest methodsFor: 'readers' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
subteDTurnstileAt: aStop

	^SubwayTurnstile of: subteD at: aStop! !

!ISWMetropolitanoTest methodsFor: 'readers' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
trenMitreTurnstileAt: aStop

	^TrainTurnstile of: trenMitre at: aStop! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:54:28 am (UTC)'!
assert: aCard wasChargedWith: anAmount

	self assert: self initialBalance - anAmount equals: aCard balance! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testAFreeTripCanBeMadeWithoutBalance

	| card |

	card := BAJECard withBalance: 0 * peso discount: RetireeDiscount new.
	(self subteDTurnstileAt: tribunales) tapWith: card towards: congresoDeTucuman on: (self saturday22At: 9 minutes: 0).

	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testANewCardHasNoTrips

	| card |

	card := self cardWithNoDiscount.

	self assert: self initialBalance equals: card balance.
	self assert: card trips isEmpty! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testCanNotTravelWithoutEnoughBalance

	| card |

	card := BAJECard withBalance: 599 * peso discount: NoDiscount new.
	self
		should: [ self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: BAJECard notEnoughBalanceErrorDescription equals: anError messageText.
			self assert: 599 * peso equals: card balance.
			self assert: card trips isEmpty ]! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testCanTravelWhenTheBalanceIsExactlyThePriceOfTheTrip

	| card |

	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).

	self assert: 0 * peso equals: card balance! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testCanNotTravelBetweenStopsOfDifferentMeansOfTransport

	| card |

	card := self cardWithNoDiscount.
	self
		should: [ self line60Reader tapWith: card from: constitucion to: palermo on: (self tuesday25At: 10 minutes: 0) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotIncludedErrorDescription equals: anError messageText.
			self assert: self initialBalance equals: card balance.
			self assert: card trips isEmpty ]! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testCanNotTravelBetweenTheSameStop

	| card |

	card := self cardWithNoDiscount.
	self
		should: [ self line60Reader tapWith: card from: retiro to: retiro on: (self tuesday25At: 10 minutes: 0) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport sameOriginAndDestinationErrorDescription equals: anError messageText.
			self assert: self initialBalance equals: card balance.
			self assert: card trips isEmpty ]! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testChargesAccordingToTheFareTableOfTheLine

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: retiro on: (self tuesday25At: 10 minutes: 0).

	self assert: card wasChargedWith: 1000 * peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testChargesThePriceOfTheDistanceToTravel

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).

	self assert: card wasChargedWith: 600 * peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testChargesTheSameTravellingInTheOppositeDirection

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: belgrano to: constitucion on: (self tuesday25At: 10 minutes: 0).

	self assert: card wasChargedWith: 1300 * peso! !

!BusCardReaderTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testRegistersTheTripOnTheCard

	| card trip |

	card := self cardWithNoDiscount.
	trip := self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).

	self assert: 1 equals: card trips size.
	self assert: trip equals: card lastTrip.
	self assert: line60 equals: trip meansOfTransport.
	self assert: constitucion equals: trip origin.
	self assert: plazaDeMayo equals: trip destination.
	self assert: (self tuesday25At: 10 minutes: 0) equals: trip startDateTime.
	self assert: 600 * peso equals: trip chargedAmount! !

!DiscountPolicyTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testStudentDiscountIsNotCumulativeWithTheTransferDiscount

	| card |

	card := self studentCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self monday24At: 10 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self monday24At: 10 minutes: 30).

	self assert: card wasChargedWith: 300 * peso + (500 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testStudentGetsTheTransferDiscountOnWeekends

	| card |

	card := self studentCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 10 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self saturday22At: 10 minutes: 30).

	self assert: card wasChargedWith: 600 * peso + (500 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testStudentPaysHalfOfThePriceFromMondayToFriday

	| card |

	card := self studentCard.
	self line60Reader tapWith: card from: constitucion to: belgrano on: (self monday24At: 11 minutes: 0).

	self assert: card wasChargedWith: 650 * peso! !

!DiscountPolicyTest methodsFor: 'tests - student' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testStudentPaysTheFullPriceOnWeekends

	| card |

	card := self studentCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 10 minutes: 0).

	self assert: card wasChargedWith: 600 * peso! !

!DiscountPolicyTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testRetireeGetsTheTransferDiscountOnceTheFreeTripsWereUsed

	| card |

	card := self retireeCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 9 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 12 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 13 minutes: 0).

	self assert: card wasChargedWith: 300 * peso! !

!DiscountPolicyTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testRetireeHasTwoFreeTripsPerDayAndThenPaysTheFullPrice

	| card |

	card := self retireeCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 9 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 12 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 15 minutes: 0).

	self assert: card wasChargedWith: 600 * peso! !

!DiscountPolicyTest methodsFor: 'tests - retiree' stamp: 'HAW 16/Sep/2026, 1:56:59 am (UTC)'!
testTheFreeTripsOfTheRetireeAreRenewedEveryDay

	| card |

	card := self retireeCard.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 9 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 12 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self november: 23 at: 9 minutes: 0).

	self assert: card wasChargedWith: 0 * peso! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testATripAfterMoreThanTwoHoursOfTheLastOneIsNotATransfer

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 12 minutes: 1).

	self assert: card wasChargedWith: 600 * peso + (600 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testATripExactlyTwoHoursAfterTheLastOneIsATransfer

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 12 minutes: 0).

	self assert: card wasChargedWith: 600 * peso + (300 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testATripMoreThanTwoHoursAfterTheEntranceOfTheTrainIsNotATransfer

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 30).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 11 minutes: 30).

	self assert: card wasChargedWith: 400 * peso + (600 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:52 am (UTC)'!
testATripWithinTwoHoursOfTheLastOneIsATransfer

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self tuesday25At: 10 minutes: 30).

	self assert: card wasChargedWith: 600 * peso + (500 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testTheTransferIsMeasuredFromTheBeginningOfTheLastTrip

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self tuesday25At: 11 minutes: 30).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 13 minutes: 0).

	self assert: card wasChargedWith: 600 * peso + (500 * peso) + (300 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testTheTransferIsMeasuredFromTheEntranceOfTheTrainTrip

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 30).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self saturday22At: 10 minutes: 45).

	self assert: card wasChargedWith: 400 * peso + (300 * peso)! !

!DiscountPolicyTest methodsFor: 'tests - transfer' stamp: 'HAW 16/Sep/2026, 1:56:53 am (UTC)'!
testThereIsNoLimitOfTransfers

	| card |

	card := self cardWithNoDiscount.
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 10 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self tuesday25At: 10 minutes: 30).
	self line60Reader tapWith: card from: constitucion to: plazaDeMayo on: (self tuesday25At: 12 minutes: 0).
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self tuesday25At: 13 minutes: 30).

	self assert: card wasChargedWith: 600 * peso + (500 * peso) + (300 * peso) + (500 * peso)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testCanNotBeCreatedWithLessThanTwoStops

	self
		should: [ MeansOfTransport named: 'Linea 1' stops: { constitucion } fareTable: self line60FareTable ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport lessThanTwoStopsErrorDescription equals: anError messageText ]! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testCanNotPutATurnstileOnAStopOfAnotherMeansOfTransport

	self
		should: [ SubwayTurnstile of: subteD at: constitucion ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotIncludedErrorDescription equals: anError messageText ]! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testDistanceBetweenStopsDoesNotDependOnTheDirection

	self assert: 7 * kilometer equals: (plazaDeMayo distanceTo: belgrano).
	self assert: 7 * kilometer equals: (belgrano distanceTo: plazaDeMayo)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testKnowsTheHeadOfLineAndTheEndOfRoute

	self assert: constitucion equals: line60 headOfLine.
	self assert: belgrano equals: line60 endOfRoute.
	self assert: (line60 isValidDirection: constitucion).
	self assert: (line60 isValidDirection: belgrano).
	self deny: (line60 isValidDirection: retiro)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testPriceDependsOnTheDistanceTravelled

	self assert: 600 * peso equals: (line60 priceFrom: constitucion to: plazaDeMayo).
	self assert: 1000 * peso equals: (line60 priceFrom: constitucion to: retiro).
	self assert: 1300 * peso equals: (line60 priceFrom: constitucion to: belgrano).
	self assert: 1300 * peso equals: (line60 priceFrom: belgrano to: constitucion)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testPriceIsAlwaysTheSameWhenTheFareTableIsFixed

	self assert: 1000 * peso equals: (subteD priceFrom: tribunales to: congresoDeTucuman).
	self assert: 1000 * peso equals: (subteD priceFrom: tribunales to: palermo)! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testStopsOfATripMustBeDifferent

	self
		should: [ line60 priceFrom: retiro to: retiro ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport sameOriginAndDestinationErrorDescription equals: anError messageText ]! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testStopsOfATripMustBelongToTheSameMeansOfTransport

	self
		should: [ line60 priceFrom: constitucion to: tribunales ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotIncludedErrorDescription equals: anError messageText ].

	self
		should: [ line60 priceFrom: retiroTrain to: belgrano ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotIncludedErrorDescription equals: anError messageText ]! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:55:17 am (UTC)'!
testStopsWithTheSameNameOfDifferentMeansOfTransportAreDifferent

	self deny: (trenMitre includesStop: retiro).
	self deny: (line60 includesStop: retiroTrain).
	self assert: retiro name equals: retiroTrain name! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testCanNotTravelTowardsTheStopOfTheTurnstile

	| card |

	card := self cardWithNoDiscount.
	self
		should: [ (self subteDTurnstileAt: palermo) tapWith: card towards: palermo on: (self tuesday25At: 10 minutes: 0) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport sameOriginAndDestinationErrorDescription equals: anError messageText.
			self assert: self initialBalance equals: card balance.
			self assert: card trips isEmpty ]! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testChargesTheFixedPriceTravellingTowardsTheEndOfRoute

	| card |

	card := self cardWithNoDiscount.
	(self subteDTurnstileAt: tribunales) tapWith: card towards: palermo on: (self tuesday25At: 10 minutes: 0).

	self assert: card wasChargedWith: 1000 * peso! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testChargesTheFixedPriceTravellingTowardsTheHeadOfLine

	| card |

	card := self cardWithNoDiscount.
	(self subteDTurnstileAt: tribunales) tapWith: card towards: congresoDeTucuman on: (self tuesday25At: 10 minutes: 0).

	self assert: card wasChargedWith: 1000 * peso! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testDirectionMustBeTheHeadOfLineOrTheEndOfRoute

	| card |

	card := self cardWithNoDiscount.
	self
		should: [ (self subteDTurnstileAt: tribunales) tapWith: card towards: callao on: (self tuesday25At: 10 minutes: 0) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport invalidDirectionErrorDescription equals: anError messageText.
			self assert: self initialBalance equals: card balance.
			self assert: card trips isEmpty ]! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testRegistersTheTripTowardsTheDirectionTravelled

	| card trip |

	card := self cardWithNoDiscount.
	trip := (self subteDTurnstileAt: callao) tapWith: card towards: palermo on: (self tuesday25At: 10 minutes: 0).

	self assert: subteD equals: trip meansOfTransport.
	self assert: callao equals: trip origin.
	self assert: palermo equals: trip destination! !

!SubwayTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testRetireeTravellingForTheFirstTimeInTheDayIsNotCharged

	| card |

	card := self retireeCard.
	(self subteDTurnstileAt: tribunales) tapWith: card towards: congresoDeTucuman on: (self saturday22At: 9 minutes: 0).

	self assert: card wasChargedWith: 0 * peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testAFreeTripKeepsBeingFreeWhenTappingTheExit

	| card |

	card := self retireeCard.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 30).

	self assert: card wasChargedWith: 0 * peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testChargesUpToTheEndOfTheRouteWhenEntering

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).

	self assert: card wasChargedWith: 600 * peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testDoesNotRefundWhenGettingOffAtTheEndOfTheRoute

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: retiroTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 45).

	self assert: card wasChargedWith: 600 * peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testKeepsTheChargeOfTheEntranceWhenTheExitIsNotTapped

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).

	self assert: card wasChargedWith: 600 * peso.
	self assert: retiroTrain equals: card lastTrip destination! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testRefundsTheDifferenceOfTheTripMadeWhenTappingTheExit

	| card |

	card := self cardWithNoDiscount.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 30).

	self assert: card wasChargedWith: 400 * peso! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testTappingTheExitUpdatesTheTripInsteadOfAddingANewOne

	| card trip |

	card := self cardWithNoDiscount.
	trip := (self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self saturday22At: 9 minutes: 0).
	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self saturday22At: 9 minutes: 30).

	self assert: 1 equals: card trips size.
	self assert: trip equals: card lastTrip.
	self assert: belgranoTrain equals: trip destination.
	self assert: 400 * peso equals: trip chargedAmount! !

!TrainTurnstileTest methodsFor: 'tests' stamp: 'HAW 16/Sep/2026, 1:56:03 am (UTC)'!
testTheAdjustmentOfTheExitKeepsTheDiscountOfTheEntrance

	| card |

	card := self studentCard.
	(self trenMitreTurnstileAt: sanIsidro) tapWith: card towards: retiroTrain on: (self monday24At: 9 minutes: 0).
	self assert: card wasChargedWith: 300 * peso.

	(self trenMitreTurnstileAt: belgranoTrain) tapExitWith: card on: (self monday24At: 9 minutes: 30).
	self assert: card wasChargedWith: 200 * peso! !
