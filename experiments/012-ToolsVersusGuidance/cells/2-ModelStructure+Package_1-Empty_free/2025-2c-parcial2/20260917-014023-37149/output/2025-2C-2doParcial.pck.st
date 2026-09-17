'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:43:43 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance discount chargedTrips'
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

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
CardReader subclass: #Turnstile
	instanceVariableNames: 'stop'
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

!classDefinition: #ChargedTrip category: #'2025-2C-2doParcial'!
Object subclass: #ChargedTrip
	instanceVariableNames: 'trip priceFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'ChargedTrip class' category: #'2025-2C-2doParcial'!
ChargedTrip class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'fares'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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

!classDefinition: #TransportStop category: #'2025-2C-2doParcial'!
Object subclass: #TransportStop
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'line origin destination start'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #BajeCardTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #BajeCardTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BajeCardTest class' category: #'2025-2C-2doParcial-Tests'!
BajeCardTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	chargedTrips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
trips

	^chargedTrips collect: [ :aChargedTrip | aChargedTrip trip ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
endLastTripAt: aStop

	"Answers what is refunded for ending the last trip at aStop instead of where it was charged to"

	| adjustedTrip refund |

	adjustedTrip := chargedTrips last endingAt: aStop.
	refund := chargedTrips last amount - adjustedTrip amount.

	balance := balance + refund.
	chargedTrips removeLast.
	chargedTrips add: adjustedTrip.

	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
pay: aTrip

	| chargedTrip |

	chargedTrip := ChargedTrip of: aTrip withPriceFactor: (self priceFactorFor: aTrip).
	self assertCanPay: chargedTrip amount.

	balance := balance - chargedTrip amount.
	chargedTrips add: chargedTrip.

	^chargedTrip amount! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
isTransfer: aTrip

	^chargedTrips notEmpty and: [ aTrip startsWithin: self class transferTimeLimit after: chargedTrips last trip ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFactorFor: aTrip

	^(discount priceFactorFor: aTrip after: self trips) min: (self transferPriceFactorFor: aTrip)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
transferPriceFactorFor: aTrip

	^(self isTransfer: aTrip)
		ifTrue: [ self class transferPriceFactor ]
		ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
transferPriceFactor

	^1/2! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFactorFor: aTrip after: previousTrips

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFactorFor: aTrip after: previousTrips

	^1! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFactorFor: aTrip after: previousTrips

	| tripsOfTheDay |

	tripsOfTheDay := previousTrips count: [ :aPreviousTrip | aPreviousTrip startsOnSameDayAs: aTrip ].

	^tripsOfTheDay < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'constants' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFactorFor: aTrip after: previousTrips

	^aTrip isOnWeekend
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard pay: (Trip on: line from: anOrigin to: aDestination startingAt: aDateTime)! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeAt: aStop

	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:42:30 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	self assertIsValidDirection: aDirection.

	^aCard pay: (Trip on: line from: stop to: aDirection startingAt: aDateTime)! !

!Turnstile methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:42:30 am (UTC)'!
assertIsValidDirection: aDirection

	(line isHeadOrEndOfLine: aDirection) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
at: aStop of: aLine

	aLine assertIncludes: aStop.

	^(self for: aLine) initializeAt: aStop! !

!Turnstile class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head or the end of the line'! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:42:30 am (UTC)'!
chargeExitOf: aCard

	^aCard endLastTripAt: stop! !

!ChargedTrip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeOf: aTrip withPriceFactor: aPriceFactor

	trip := aTrip.
	priceFactor := aPriceFactor! !

!ChargedTrip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
amount

	^trip price * priceFactor! !

!ChargedTrip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
trip

	^trip! !

!ChargedTrip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
endingAt: aStop

	^self class of: (trip endingAt: aStop) withPriceFactor: priceFactor! !

!ChargedTrip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
of: aTrip withPriceFactor: aPriceFactor

	^self new initializeOf: aTrip withPriceFactor: aPriceFactor! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeWithFares: aCollectionOfMaximumDistanceToPrice

	fares := aCollectionOfMaximumDistanceToPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFor: aDistance

	^(fares detect: [ :fare | aDistance <= fare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
fixed: aPrice

	^self withFares: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
withFares: aCollectionOfMaximumDistanceToPrice

	"Each fare is an association from the maximum distance it covers to its price, in increasing order of distance.
	The last one should cover up to PlusInfinity new"

	^self new initializeWithFares: aCollectionOfMaximumDistanceToPrice! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := (aCollectionOfStops asSortedCollection: [ :aStop :anotherStop | aStop distanceToHeadOfLine <= anotherStop distanceToHeadOfLine ]) asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
endOfLine

	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
headOfLine

	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
isHeadOrEndOfLine: aStop

	^aStop == self headOfLine or: [ aStop == self endOfLine ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable

	self assertHasEnoughStops: aCollectionOfStops.

	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops

	aCollectionOfStops size < self minimumNumberOfStops ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
minimumNumberOfStops

	^2! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeNamed: aName atDistanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
name

	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
named: aName atDistanceToHeadOfLine: aDistance

	^self new initializeNamed: aName atDistanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
price

	^line priceFrom: origin to: destination! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
isOnWeekend

	| day |

	day := start date day.
	^day isSaturday or: [ day isSunday ]! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
startsOnSameDayAs: aTrip

	^start sameDayAs: aTrip start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
startsWithin: aTimeSpan after: aTrip

	^(aTrip start distanceTo: start) <= aTimeSpan! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
endingAt: aStop

	^self class on: line from: origin to: aStop startingAt: start! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime

	aLine assertIncludes: anOrigin.
	aLine assertIncludes: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self sameOriginAndDestinationErrorDescription ].

	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:42:29 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!BajeCardTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
setUp

	constitucion := TransportStop named: 'Constitución' atDistanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' atDistanceToHeadOfLine: 5 * kilometer.
	retiro := TransportStop named: 'Retiro' atDistanceToHeadOfLine: 8 * kilometer.
	belgrano := TransportStop named: 'Belgrano' atDistanceToHeadOfLine: 12 * kilometer.
	line60 := TransportLine
		named: 'Colectivo Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withFares: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := TransportStop named: 'Congreso de Tucumán' atDistanceToHeadOfLine: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' atDistanceToHeadOfLine: 1.2 * kilometer.
	callao := TransportStop named: 'Callao' atDistanceToHeadOfLine: 2.5 * kilometer.
	palermo := TransportStop named: 'Palermo' atDistanceToHeadOfLine: 6 * kilometer.
	subwayD := TransportLine
		named: 'Subte Línea D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := TransportStop named: 'Retiro' atDistanceToHeadOfLine: 0 * kilometer.
	belgranoMitre := TransportStop named: 'Belgrano' atDistanceToHeadOfLine: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' atDistanceToHeadOfLine: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' atDistanceToHeadOfLine: 28 * kilometer.
	mitreTrain := TransportLine
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withFares: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
cardWithoutDiscount

	^BajeCard withoutDiscountWithBalance: 10000 * peso! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
on: aDate at: hours

	^self on: aDate at: hours minutes: 0! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
on: aDate at: hours minutes: minutes

	^aDate at: (TimeOfDay hours: hours minutes: minutes)! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
retireeCard

	^BajeCard retireeWithBalance: 10000 * peso! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!BajeCardTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
studentCard

	^BajeCard studentWithBalance: 10000 * peso! !

!BajeCardTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test01BusChargesFullPriceToCardWithoutDiscount

	| card |

	card := self cardWithoutDiscount.

	self
		assert: 600 * peso
		equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10)).
	self assert: 9400 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test02BusPriceDependsOnDistanceBetweenStops

	| reader |

	reader := BusCardReader for: line60.

	self assert: 1000 * peso equals: (reader charge: self cardWithoutDiscount from: plazaDeMayo to: belgrano at: (self on: November/25/2025 at: 10)).
	self assert: 1300 * peso equals: (reader charge: self cardWithoutDiscount from: belgrano to: constitucion at: (self on: November/25/2025 at: 10))! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test03StudentPaysHalfFromMondayToFriday

	self
		assert: 650 * peso
		equals: ((BusCardReader for: line60) charge: self studentCard from: constitucion to: belgrano at: (self on: November/24/2025 at: 11))! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| reader |

	reader := BusCardReader for: line60.

	self assert: 1300 * peso equals: (reader charge: self studentCard from: constitucion to: belgrano at: (self on: November/22/2025 at: 11)).
	self assert: 1300 * peso equals: (reader charge: self studentCard from: constitucion to: belgrano at: (self on: November/23/2025 at: 11))! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test05RetireeTravelsFreeOnFirstTripOfTheDay

	| card |

	card := self retireeCard.

	self
		assert: 0 * peso
		equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: congresoDeTucuman at: (self on: November/22/2025 at: 9)).
	self assert: 10000 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test06RetireePaysFullPriceAfterTwoTripsOfTheDay

	| card turnstile |

	card := self retireeCard.
	turnstile := Turnstile at: tribunales of: subwayD.

	self assert: 0 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 8)).
	self assert: 0 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 11)).
	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 14))! !

!BajeCardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test07RetireeFreeTripsAreCountedPerDay

	| card turnstile |

	card := self retireeCard.
	turnstile := Turnstile at: tribunales of: subwayD.

	turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 8).
	turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 11).

	self assert: 0 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/23/2025 at: 8))! !

!BajeCardTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test08SubwayPriceIsFixed

	self assert: 1000 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: self cardWithoutDiscount towards: palermo at: (self on: November/25/2025 at: 10)).
	self assert: 1000 * peso equals: ((Turnstile at: callao of: subwayD) charge: self cardWithoutDiscount towards: congresoDeTucuman at: (self on: November/25/2025 at: 10))! !

!BajeCardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test09TrainChargesUpToTheDirectionOnEntry

	| card |

	card := self cardWithoutDiscount.

	self
		assert: 600 * peso
		equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroMitre at: (self on: November/22/2025 at: 9)).
	self assert: 9400 * peso equals: card balance.
	self assert: 400 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: self cardWithoutDiscount towards: tigre at: (self on: November/22/2025 at: 9))! !

!BajeCardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test10TrainRefundsTheDifferenceOnExit

	| card |

	card := self cardWithoutDiscount.
	(TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroMitre at: (self on: November/22/2025 at: 9).

	self assert: 200 * peso equals: ((TrainTurnstile at: belgranoMitre of: mitreTrain) chargeExitOf: card).
	self assert: 9600 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test11TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |

	card := self studentCard.
	(TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroMitre at: (self on: November/25/2025 at: 9).

	self assert: 100 * peso equals: ((TrainTurnstile at: belgranoMitre of: mitreTrain) chargeExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test12TrainExitDoesNotCountAsANewTrip

	| card |

	card := self retireeCard.
	(TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroMitre at: (self on: November/22/2025 at: 9).
	(TrainTurnstile at: belgranoMitre of: mitreTrain) chargeExitOf: card.

	self assert: 1 equals: card trips size.
	self assert: belgranoMitre equals: card trips last destination.
	self assert: 0 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: tigre at: (self on: November/22/2025 at: 18))! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test13TripWithinTwoHoursOfLastTripPaysHalf

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10)).
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self on: November/25/2025 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test14TripAfterTwoHoursOfLastTripIsNotATransfer

	| card |

	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).

	self assert: 1000 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self on: November/25/2025 at: 12 minutes: 1))! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test15TransfersAreCountedFromTheStartOfTheLastTrip

	| card reader |

	card := self cardWithoutDiscount.
	reader := BusCardReader for: line60.

	reader charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).
	reader charge: card from: plazaDeMayo to: constitucion at: (self on: November/25/2025 at: 11 minutes: 30).

	self assert: 300 * peso equals: (reader charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 13))! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test16StudentDiscountIsNotCumulativeWithTransfers

	| card turnstile |

	card := self studentCard.
	turnstile := Turnstile at: tribunales of: subwayD.

	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/25/2025 at: 10)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/25/2025 at: 10 minutes: 30))! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test17StudentGetsTransferDiscountOnWeekends

	| card turnstile |

	card := self studentCard.
	turnstile := Turnstile at: tribunales of: subwayD.

	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 10)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 10 minutes: 30))! !

!BajeCardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:43:24 am (UTC)'!
test18RetireeGetsTransferDiscountAfterFreeTrips

	| card turnstile |

	card := self retireeCard.
	turnstile := Turnstile at: tribunales of: subwayD.

	turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 10).
	turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 10 minutes: 30).

	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self on: November/22/2025 at: 11))! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test19CanNotPayWithoutEnoughBalance

	| card |

	card := BajeCard withoutDiscountWithBalance: 500 * peso.

	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test20CanPayWithExactBalance

	| card |

	card := BajeCard withoutDiscountWithBalance: 600 * peso.

	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).

	self assert: 0 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test21MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine named: 'Linea corta' stops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test22TripStopsMustBelongToTheMeansOfTransport

	| card |

	card := self cardWithoutDiscount.

	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: palermo at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self
		should: [ (BusCardReader for: line60) charge: card from: retiroMitre to: belgrano at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test23TripOriginAndDestinationMustBeDifferent

	| card |

	card := self cardWithoutDiscount.

	self
		should: [ (BusCardReader for: line60) charge: card from: retiro to: retiro at: (self on: November/25/2025 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self
		should: [ (Turnstile at: palermo of: subwayD) charge: card towards: palermo at: (self on: November/25/2025 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test24TurnstileDirectionMustBeHeadOrEndOfLine

	| card |

	card := self cardWithoutDiscount.

	self
		should: [ (Turnstile at: tribunales of: subwayD) charge: card towards: callao at: (self on: November/25/2025 at: 10) ]
		failWith: Turnstile invalidDirectionErrorDescription.
	self
		should: [ (TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiro at: (self on: November/25/2025 at: 10) ]
		failWith: Turnstile invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BajeCardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:43:25 am (UTC)'!
test25TurnstileStopMustBelongToTheMeansOfTransport

	self
		should: [ Turnstile at: retiro of: subwayD ]
		failWith: TransportLine stopNotInLineErrorDescription! !
