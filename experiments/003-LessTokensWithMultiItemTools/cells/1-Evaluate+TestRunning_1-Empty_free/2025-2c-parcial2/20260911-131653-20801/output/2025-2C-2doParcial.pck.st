'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 1:27:09 pm'!
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

!classDefinition: #BAJETrip category: #'2025-2C-2doParcial'!
Object subclass: #BAJETrip
	instanceVariableNames: 'boardingStop startTime fare priceFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BAJETrip class' category: #'2025-2C-2doParcial'!
BAJETrip class
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
	instanceVariableNames: 'faresUpToDistance'
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

!classDefinition: #PublicTransportTestObjects category: #'2025-2C-2doParcial-Tests'!
Object subclass: #PublicTransportTestObjects
	instanceVariableNames: 'constitucion plazaDeMayo retiroOfLine60 belgranoOfLine60 retiroOfMitre congresoDeTucuman tribunales callao palermo belgranoOfMitre sanIsidro tigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTestObjects class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTestObjects class
	instanceVariableNames: ''!

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'objects'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!

!classDefinition: #BAJECardTest category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest subclass: #BAJECardTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BAJECardTest class' category: #'2025-2C-2doParcial-Tests'!
BAJECardTest class
	instanceVariableNames: ''!

!classDefinition: #BusTest category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest subclass: #BusTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BusTest class' category: #'2025-2C-2doParcial-Tests'!
BusTest class
	instanceVariableNames: ''!

!classDefinition: #SubwayTest category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest subclass: #SubwayTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'SubwayTest class' category: #'2025-2C-2doParcial-Tests'!
SubwayTest class
	instanceVariableNames: ''!

!classDefinition: #TrainTest category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest subclass: #TrainTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TrainTest class' category: #'2025-2C-2doParcial-Tests'!
TrainTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initializeWithBalance: anAmount discount: aDiscount

	balance := anAmount.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
adjustLastTripFareTo: anActualFare

	| lastTrip chargeBeforeAdjustment |
	lastTrip := trips last.
	chargeBeforeAdjustment := lastTrip charge.

	lastTrip changeFareTo: anActualFare.

	balance := balance + chargeBeforeAdjustment - lastTrip charge! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
pay: aFare forTripBoardingAt: aBoardingStop at: aDateTime

	| trip |
	trip := BAJETrip boardingAt: aBoardingStop at: aDateTime withFare: aFare priceFactor: (self priceFactorForTripAt: aDateTime).
	self assertCanPay: trip charge.

	balance := balance - trip charge.
	trips add: trip! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
priceFactorForTripAt: aDateTime

	"Discounts are not cumulative, so only the best one is applied"
	^(discount priceFactorForTripAt: aDateTime of: self) min: (self transferPriceFactorAt: aDateTime)! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
lastTripBoardingStop

	^trips last boardingStop! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :trip | trip startedOn: aDate ]! !

!BAJECard methodsFor: 'transfers' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ (trips last startTime distanceTo: aDateTime) <= self class transferTimeLimit ]! !

!BAJECard methodsFor: 'transfers' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
transferPriceFactorAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ self class transferPriceFactor ]
		ifFalse: [ self class noTransferPriceFactor ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
withBalance: anAmount discount: aDiscount

	^self new initializeWithBalance: anAmount discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
noTransferPriceFactor

	^1! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
transferPriceFactor

	^1/2! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
transferTimeLimit

	^2 * hour! !

!BAJETrip methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initializeBoardingAt: aStop at: aDateTime withFare: aFare priceFactor: aPriceFactor

	boardingStop := aStop.
	startTime := aDateTime.
	fare := aFare.
	priceFactor := aPriceFactor! !

!BAJETrip methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
boardingStop

	^boardingStop! !

!BAJETrip methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
charge

	^fare * priceFactor! !

!BAJETrip methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
startTime

	^startTime! !

!BAJETrip methodsFor: 'fare adjustment' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
changeFareTo: aFare

	fare := aFare! !

!BAJETrip methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
startedOn: aDate

	^startTime date = aDate! !

!BAJETrip class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
boardingAt: aStop at: aDateTime withFare: aFare priceFactor: aPriceFactor

	^self new initializeBoardingAt: aStop at: aDateTime withFare: aFare priceFactor: aPriceFactor! !

!CardDiscount methodsFor: 'price factor' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
priceFactorForTripAt: aDateTime of: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'price factor' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
priceFactorForTripAt: aDateTime of: aCard

	^1! !

!RetireeDiscount methodsFor: 'price factor' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
priceFactorForTripAt: aDateTime of: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self numberOfFreeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'price factor - private' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
numberOfFreeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'price factor' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
priceFactorForTripAt: aDateTime of: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'price factor - private' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.

	^day isSaturday or: [ day isSunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initializeWithFaresUpToDistance: aCollectionOfMaximumDistanceToFare

	faresUpToDistance := aCollectionOfMaximumDistanceToFare! !

!FareTable methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
fareFor: aDistance

	^(faresUpToDistance detect: [ :maximumDistanceAndFare | aDistance <= maximumDistanceAndFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
fixedFare: aFare

	^self withFaresUpToDistance: { PlusInfinity new -> aFare }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
withFaresUpToDistance: aCollectionOfMaximumDistanceToFare

	^self new initializeWithFaresUpToDistance: aCollectionOfMaximumDistanceToFare! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initializeWithStops: aCollectionOfStops fareTable: aFareTable

	stops := aCollectionOfStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assertIsInRoute: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIsInRoute: anOrigin.
	self assertIsInRoute: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.

	aCard pay: (self fareFrom: anOrigin to: aDestination) forTripBoardingAt: anOrigin at: aDateTime! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aCollectionOfStops.

	^self new initializeWithStops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assertHasAtLeastTwoStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and the destination of a trip must be different stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
stopNotInRouteErrorDescription

	^'The stop does not belong to the route of this means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	self chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assertIsValidDirection: aDirection

	(aDirection = stops first or: [ aDirection = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileMeansOfTransport methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
charge: aCard boardingAt: aBoardingStop towards: aDirection at: aDateTime

	self assertIsValidDirection: aDirection.

	self chargeTripOf: aCard from: aBoardingStop to: aDirection at: aDateTime! !

!TurnstileMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be either the head of the line or the end of the route'! !

!Train methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
chargeExitOf: aCard at: anExitStop

	aCard adjustLastTripFareTo: (self fareFrom: aCard lastTripBoardingStop to: anExitStop)! !

!Stop methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initializeNamed: aName atDistanceFromHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'distance' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
named: aName atDistanceFromHead: aDistance

	^self new initializeNamed: aName atDistanceFromHead: aDistance! !

!PublicTransportTestObjects methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initialize

	constitucion := Stop named: 'Constitucion' atDistanceFromHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceFromHead: 5 * kilometer.
	retiroOfLine60 := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	belgranoOfLine60 := Stop named: 'Belgrano' atDistanceFromHead: 12 * kilometer.

	congresoDeTucuman := Stop named: 'Congreso de Tucuman' atDistanceFromHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceFromHead: 6/5 * kilometer.
	callao := Stop named: 'Callao' atDistanceFromHead: 5/2 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceFromHead: 6 * kilometer.

	retiroOfMitre := Stop named: 'Retiro' atDistanceFromHead: 0 * kilometer.
	belgranoOfMitre := Stop named: 'Belgrano' atDistanceFromHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceFromHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceFromHead: 28 * kilometer! !

!PublicTransportTestObjects methodsFor: 'bus line 60' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
belgranoOfLine60

	^belgranoOfLine60! !

!PublicTransportTestObjects methodsFor: 'bus line 60' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
constitucion

	^constitucion! !

!PublicTransportTestObjects methodsFor: 'bus line 60' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
line60

	^Bus
		withStops: { constitucion. plazaDeMayo. retiroOfLine60. belgranoOfLine60 }
		fareTable: (FareTable withFaresUpToDistance: {
			5 * kilometer -> (600 * peso).
			10 * kilometer -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) })! !

!PublicTransportTestObjects methodsFor: 'bus line 60' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
plazaDeMayo

	^plazaDeMayo! !

!PublicTransportTestObjects methodsFor: 'bus line 60' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
retiroOfLine60

	^retiroOfLine60! !

!PublicTransportTestObjects methodsFor: 'cards' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
cardWithoutDiscount

	^self cardWithoutDiscountWithBalance: self initialBalance! !

!PublicTransportTestObjects methodsFor: 'cards' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
cardWithoutDiscountWithBalance: anAmount

	^BAJECard withBalance: anAmount discount: NoDiscount new! !

!PublicTransportTestObjects methodsFor: 'cards' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
initialBalance

	^10000 * peso! !

!PublicTransportTestObjects methodsFor: 'cards' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
retireeCard

	^BAJECard withBalance: self initialBalance discount: RetireeDiscount new! !

!PublicTransportTestObjects methodsFor: 'cards' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
studentCard

	^BAJECard withBalance: self initialBalance discount: StudentDiscount new! !

!PublicTransportTestObjects methodsFor: 'dates' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
mondayAt: anHour minutes: aNumberOfMinutes

	^November twentyfourth, 2025 at: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!PublicTransportTestObjects methodsFor: 'dates' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
saturdayAt: anHour minutes: aNumberOfMinutes

	^November twentysecond, 2025 at: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!PublicTransportTestObjects methodsFor: 'dates' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
sundayAt: anHour minutes: aNumberOfMinutes

	^November twentythird, 2025 at: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!PublicTransportTestObjects methodsFor: 'dates' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
tuesdayAt: anHour minutes: aNumberOfMinutes

	^November twentyfifth, 2025 at: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!PublicTransportTestObjects methodsFor: 'dates' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
wednesdayAt: anHour minutes: aNumberOfMinutes

	^November twentysixth, 2025 at: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!PublicTransportTestObjects methodsFor: 'mitre train' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
belgranoOfMitre

	^belgranoOfMitre! !

!PublicTransportTestObjects methodsFor: 'mitre train' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
mitreTrain

	^Train
		withStops: { retiroOfMitre. belgranoOfMitre. sanIsidro. tigre }
		fareTable: (FareTable withFaresUpToDistance: {
			15 * kilometer -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!PublicTransportTestObjects methodsFor: 'mitre train' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
retiroOfMitre

	^retiroOfMitre! !

!PublicTransportTestObjects methodsFor: 'mitre train' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
sanIsidro

	^sanIsidro! !

!PublicTransportTestObjects methodsFor: 'mitre train' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
tigre

	^tigre! !

!PublicTransportTestObjects methodsFor: 'subway line D' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
callao

	^callao! !

!PublicTransportTestObjects methodsFor: 'subway line D' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
congresoDeTucuman

	^congresoDeTucuman! !

!PublicTransportTestObjects methodsFor: 'subway line D' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
palermo

	^palermo! !

!PublicTransportTestObjects methodsFor: 'subway line D' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
subwayLineD

	^Subway
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixedFare: 1000 * peso)! !

!PublicTransportTestObjects methodsFor: 'subway line D' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
tribunales

	^tribunales! !

!PublicTransportTest methodsFor: 'setup' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
setUp

	objects := PublicTransportTestObjects new! !

!PublicTransportTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assert: aCard wasCharged: anAmount

	self assert: objects initialBalance - anAmount equals: aCard balance! !

!PublicTransportTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
assertWasNotCharged: aCard

	self assert: objects initialBalance equals: aCard balance! !

!PublicTransportTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest class methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
isAbstract

	^self = PublicTransportTest! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test01CanNotPayATripWithoutEnoughBalance

	| card |
	card := objects cardWithoutDiscountWithBalance: 500 * peso.

	self
		should: [ objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.

	self assert: 500 * peso equals: card balance! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test02CanPayATripWithTheExactBalance

	| card |
	card := objects cardWithoutDiscountWithBalance: 600 * peso.

	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	self assert: 0 * peso equals: card balance! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test03ATripThatCouldNotBePaidIsNotConsideredForTransfers

	| card |
	card := objects cardWithoutDiscountWithBalance: 500 * peso.
	self
		should: [ objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.

	self
		should: [ objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 10 minutes: 30) ]
		failWith: BAJECard insufficientBalanceErrorDescription.

	self assert: 500 * peso equals: card balance! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test04StudentPaysHalfTheFareFromMondayToFriday

	| card |
	card := objects studentCard.

	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects mondayAt: 11 minutes: 0).

	self assert: card wasCharged: 650 * peso! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test05StudentPaysTheFullFareOnSaturdays

	| card |
	card := objects studentCard.

	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects saturdayAt: 11 minutes: 0).

	self assert: card wasCharged: 1300 * peso! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test06StudentPaysTheFullFareOnSundays

	| card |
	card := objects studentCard.

	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects sundayAt: 11 minutes: 0).

	self assert: card wasCharged: 1300 * peso! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test07RetireeDoesNotPayTheFirstTwoTripsOfTheDay

	| card |
	card := objects retireeCard.

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects saturdayAt: 9 minutes: 0).
	objects subwayLineD charge: card boardingAt: objects congresoDeTucuman towards: objects palermo at: (objects saturdayAt: 12 minutes: 0).

	self assertWasNotCharged: card! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test08RetireePaysTheFullFareAfterTheTwoFreeTripsOfTheDay

	| card |
	card := objects retireeCard.
	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects tuesdayAt: 9 minutes: 0).
	objects subwayLineD charge: card boardingAt: objects congresoDeTucuman towards: objects palermo at: (objects tuesdayAt: 12 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects palermo towards: objects congresoDeTucuman at: (objects tuesdayAt: 15 minutes: 0).

	self assert: card wasCharged: 1000 * peso! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test09RetireeHasTwoFreeTripsEveryDay

	| card |
	card := objects retireeCard.
	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects tuesdayAt: 9 minutes: 0).
	objects subwayLineD charge: card boardingAt: objects congresoDeTucuman towards: objects palermo at: (objects tuesdayAt: 12 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects palermo towards: objects congresoDeTucuman at: (objects wednesdayAt: 9 minutes: 0).

	self assertWasNotCharged: card! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test10RetireeCanMakeFreeTripsWithoutBalance

	| card |
	card := BAJECard withBalance: 0 * peso discount: RetireeDiscount new.

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects tuesdayAt: 9 minutes: 0).

	self assert: 0 * peso equals: card balance! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test11ATripWithinTwoHoursOfTheLastTripIsATransferAndPaysHalfTheFare

	| card |
	card := objects cardWithoutDiscount.
	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 10 minutes: 30).

	self assert: card wasCharged: 600 * peso + (500 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test12ATripExactlyTwoHoursAfterTheLastTripIsATransfer

	| card |
	card := objects cardWithoutDiscount.
	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 12 minutes: 0).

	self assert: card wasCharged: 600 * peso + (500 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test13ATripMoreThanTwoHoursAfterTheLastTripIsNotATransfer

	| card |
	card := objects cardWithoutDiscount.
	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 12 minutes: 1).

	self assert: card wasCharged: 600 * peso + (1000 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test14TransfersAreCountedFromTheStartOfTheLastTrip

	| card |
	card := objects cardWithoutDiscount.
	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).
	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects tuesdayAt: 11 minutes: 30).

	objects line60 charge: card from: objects plazaDeMayo to: objects constitucion at: (objects tuesdayAt: 13 minutes: 0).

	self assert: card wasCharged: 600 * peso + (500 * peso) + (300 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test15StudentDiscountIsNotCumulativeWithTheTransferDiscountFromMondayToFriday

	| card |
	card := objects studentCard.
	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects mondayAt: 11 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects mondayAt: 11 minutes: 30).

	self assert: card wasCharged: 650 * peso + (500 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test16StudentGetsTheTransferDiscountOnWeekends

	| card |
	card := objects studentCard.
	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects saturdayAt: 11 minutes: 0).

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects palermo at: (objects saturdayAt: 11 minutes: 30).

	self assert: card wasCharged: 1300 * peso + (500 * peso)! !

!BAJECardTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test17RetireeGetsTheTransferDiscountOnTheTripsThatAreNotFree

	| card |
	card := objects retireeCard.
	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects tuesdayAt: 9 minutes: 0).
	objects subwayLineD charge: card boardingAt: objects congresoDeTucuman towards: objects palermo at: (objects tuesdayAt: 12 minutes: 0).

	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 13 minutes: 0).

	self assert: card wasCharged: 300 * peso! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test01ChargesTheFareOfTheDistanceBetweenOriginAndDestination

	| card |
	card := objects cardWithoutDiscount.

	objects line60 charge: card from: objects constitucion to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 600 * peso! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test02ChargesTheFareOfTheNextDistanceRangeWhenThePreviousIsExceeded

	| card |
	card := objects cardWithoutDiscount.

	objects line60 charge: card from: objects constitucion to: objects retiroOfLine60 at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 1000 * peso! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test03ChargesTheFareOfTheLastDistanceRangeForTheLongestTrips

	| card |
	card := objects cardWithoutDiscount.

	objects line60 charge: card from: objects constitucion to: objects belgranoOfLine60 at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 1300 * peso! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test04TheDistanceBetweenStopsDoesNotDependOnTheTravelDirection

	| card |
	card := objects cardWithoutDiscount.

	objects line60 charge: card from: objects belgranoOfLine60 to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 1000 * peso! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test05CanNotTravelFromAStopToTheSameStop

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects line60 charge: card from: objects plazaDeMayo to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.

	self assertWasNotCharged: card! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test06CanNotTravelFromAStopOfAnotherMeansOfTransport

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects line60 charge: card from: objects retiroOfMitre to: objects plazaDeMayo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.

	self assertWasNotCharged: card! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test07CanNotTravelToAStopOfAnotherMeansOfTransport

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects line60 charge: card from: objects plazaDeMayo to: objects retiroOfMitre at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.

	self assertWasNotCharged: card! !

!BusTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test08MustHaveAtLeastTwoStops

	self
		should: [ Bus withStops: { objects constitucion } fareTable: (FareTable fixedFare: 600 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test01ChargesTheFixedFareBoardingTowardsTheHeadOfTheLine

	| card |
	card := objects cardWithoutDiscount.

	objects subwayLineD charge: card boardingAt: objects tribunales towards: objects congresoDeTucuman at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 1000 * peso! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test02ChargesTheFixedFareBoardingTowardsTheEndOfTheRoute

	| card |
	card := objects cardWithoutDiscount.

	objects subwayLineD charge: card boardingAt: objects congresoDeTucuman towards: objects palermo at: (objects tuesdayAt: 10 minutes: 0).

	self assert: card wasCharged: 1000 * peso! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test03TheDirectionCanNotBeAnIntermediateStop

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects subwayLineD charge: card boardingAt: objects tribunales towards: objects callao at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.

	self assertWasNotCharged: card! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test04TheDirectionCanNotBeAStopOfAnotherMeansOfTransport

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects subwayLineD charge: card boardingAt: objects tribunales towards: objects constitucion at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.

	self assertWasNotCharged: card! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test05CanNotBoardAtAStopOfAnotherMeansOfTransport

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects subwayLineD charge: card boardingAt: objects plazaDeMayo towards: objects palermo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.

	self assertWasNotCharged: card! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test06CanNotBoardAtTheStopOfTheDirection

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects subwayLineD charge: card boardingAt: objects palermo towards: objects palermo at: (objects tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.

	self assertWasNotCharged: card! !

!SubwayTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test07MustHaveAtLeastTwoStops

	self
		should: [ Subway withStops: { objects palermo } fareTable: (FareTable fixedFare: 1000 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test01OnEntryChargesTheFareOfTheDistanceToTheDirection

	| card |
	card := objects cardWithoutDiscount.

	objects mitreTrain charge: card boardingAt: objects sanIsidro towards: objects retiroOfMitre at: (objects saturdayAt: 9 minutes: 0).

	self assert: card wasCharged: 600 * peso! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test02OnEntryChargesALowerFareForAShorterDistanceToTheDirection

	| card |
	card := objects cardWithoutDiscount.

	objects mitreTrain charge: card boardingAt: objects sanIsidro towards: objects tigre at: (objects saturdayAt: 9 minutes: 0).

	self assert: card wasCharged: 400 * peso! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test03OnExitRefundsTheDifferenceWithTheFareOfTheTripMade

	| card train |
	card := objects cardWithoutDiscount.
	train := objects mitreTrain.
	train charge: card boardingAt: objects sanIsidro towards: objects retiroOfMitre at: (objects saturdayAt: 9 minutes: 0).

	train chargeExitOf: card at: objects belgranoOfMitre.

	self assert: card wasCharged: 400 * peso! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test04ExitingAtTheStopOfTheDirectionRefundsNothing

	| card train |
	card := objects cardWithoutDiscount.
	train := objects mitreTrain.
	train charge: card boardingAt: objects sanIsidro towards: objects retiroOfMitre at: (objects saturdayAt: 9 minutes: 0).

	train chargeExitOf: card at: objects retiroOfMitre.

	self assert: card wasCharged: 600 * peso! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test05TheDirectionCanNotBeAnIntermediateStop

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects mitreTrain charge: card boardingAt: objects sanIsidro towards: objects belgranoOfMitre at: (objects saturdayAt: 9 minutes: 0) ]
		failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.

	self assertWasNotCharged: card! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test06CanNotBoardAtAStopOfAnotherMeansOfTransport

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects mitreTrain charge: card boardingAt: objects belgranoOfLine60 towards: objects retiroOfMitre at: (objects saturdayAt: 9 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.

	self assertWasNotCharged: card! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:39 pm (UTC)'!
test07CanNotBoardAtTheStopOfTheDirection

	| card |
	card := objects cardWithoutDiscount.

	self
		should: [ objects mitreTrain charge: card boardingAt: objects tigre towards: objects tigre at: (objects saturdayAt: 9 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.

	self assertWasNotCharged: card! !

!TrainTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:26:40 pm (UTC)'!
test08OnExitTheRefundConsidersTheDiscountAppliedOnEntry

	| card train |
	card := objects studentCard.
	train := objects mitreTrain.
	train charge: card boardingAt: objects sanIsidro towards: objects retiroOfMitre at: (objects mondayAt: 9 minutes: 0).

	train chargeExitOf: card at: objects belgranoOfMitre.

	self assert: card wasCharged: 200 * peso! !
