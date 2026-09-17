'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:23:41 am'!
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
	instanceVariableNames: 'fares'
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
	instanceVariableNames: 'meansOfTransport origin destination start priceFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
endLastTripAt: aStop

	| lastTrip previousPrice refund |
	lastTrip := trips last.
	previousPrice := lastTrip price.
	lastTrip endAt: aStop.
	refund := previousPrice - lastTrip price.
	balance := balance + refund.
	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip price |
	trip := Trip on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: (self priceFactorAt: aDateTime).
	price := trip price.
	self assertCanPay: price.
	balance := balance - price.
	trips add: trip.
	^price! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
priceFactorAt: aDateTime

	^discount priceFactorAt: aDateTime for: self ifNotApplicable: [ self transferPriceFactorAt: aDateTime ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
transferPriceFactorAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last isWithinTransferTimeAt: aDateTime ]! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
assertCanPay: aPrice

	aPrice > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
initializeFor: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
for: aMeansOfTransport

	^self new initializeFor: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
initializeAt: aStop

	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	meansOfTransport assertIsTerminal: aDirection.
	^aCard payTripOn: meansOfTransport from: stop to: aDirection at: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
for: aMeansOfTransport at: aStop

	aMeansOfTransport assertIncludes: aStop.
	^(self for: aMeansOfTransport) initializeAt: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
chargeExitOf: aCard

	^aCard endLastTripAt: stop! !

!Discount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^aBlock value! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: aBlock! !

!RetireeDiscount methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^(self isWeekend: aDateTime) ifTrue: aBlock ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
isWeekend: aDateTime

	^{ GregorianDay saturday. GregorianDay sunday } includes: aDateTime date day! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
initializeWithFares: someFaresUpToDistance

	fares := someFaresUpToDistance asSortedCollection: [ :aFare :anotherFare | aFare key <= anotherFare key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
fareFor: aDistance

	^(fares detect: [ :aFare | aDistance <= aFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
fixed: aPrice

	^self withFares: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
withFares: someFaresUpToDistance

	^self new initializeWithFares: someFaresUpToDistance! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
initializeNamed: aName withStops: someStops fareTable: aFareTable

	name := aName.
	stops := someStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
name

	^name! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
isTerminal: aStop

	^stops first = aStop or: [ stops last = aStop ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
assertIsTerminal: aStop

	self assertIncludes: aStop.
	(self isTerminal: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
named: aName withStops: someStops fareTable: aFareTable

	self assertHasEnoughStops: someStops.
	^self new initializeNamed: aName withStops: someStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
assertHasEnoughStops: someStops

	someStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop does not belong to the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	priceFactor := aPriceFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
meansOfTransport

	^meansOfTransport! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
price

	^(meansOfTransport costFrom: origin to: destination) * priceFactor! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
isWithinTransferTimeAt: aDateTime

	^(start distanceTo: aDateTime) <= (2 * hour)! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:22:37 am (UTC)'!
endAt: aStop

	meansOfTransport assertIsValidTripFrom: origin to: aStop.
	destination := aStop! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:36 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor

	aMeansOfTransport assertIsValidTripFrom: anOrigin to: aDestination.
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor! !

!PublicTransportTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiro := Stop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := MeansOfTransport
		named: 'Colectivo Línea 60'
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withFares: { 
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subwayD := MeansOfTransport
		named: 'Subte Línea D'
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitreTigre := MeansOfTransport
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withFares: { 
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
november: aDayNumber at: anHour

	^self november: aDayNumber at: anHour minutes: 0! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(November / aDayNumber / 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test01BusChargesFareForDistanceBetweenOriginAndDestination

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10)).
	self assert: 9400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:23:27 am (UTC)'!
test02BusFareTableUsesUpperRanges

	| reader |
	reader := BusCardReader for: line60.

	self assert: 1000 * peso equals: (reader charge: self cardWithoutDiscount from: constitucion to: retiro at: (self november: 25 at: 10)).
	self assert: 1300 * peso equals: (reader charge: self cardWithoutDiscount from: belgrano to: constitucion at: (self november: 25 at: 10)).
	self assert: 600 * peso equals: (reader charge: self cardWithoutDiscount from: belgrano to: retiro at: (self november: 25 at: 10))! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	self assert: 650 * peso equals: ((BusCardReader for: line60) charge: self studentCard from: constitucion to: belgrano at: (self november: 24 at: 11))! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: ((BusCardReader for: line60) charge: self studentCard from: constitucion to: belgrano at: (self november: 22 at: 11)).
	self assert: 1300 * peso equals: ((BusCardReader for: line60) charge: self studentCard from: constitucion to: belgrano at: (self november: 23 at: 11))! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test06RetireeHasTwoFreeTripsPerDay

	| card turnstile |
	card := self retireeCard.
	turnstile := Turnstile for: subwayD at: tribunales.

	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9)).
	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 12)).
	self assert: 1000 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 18)).
	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 23 at: 9))! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test05SubwayChargesFixedFare

	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) charge: self cardWithoutDiscount towards: palermo at: (self november: 22 at: 9)).
	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) charge: self cardWithoutDiscount towards: congresoDeTucuman at: (self november: 22 at: 9))! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test07TrainChargesFareToDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((TrainTurnstile for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9)).
	self assert: 9400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test08TrainRefundsDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9).

	self assert: 200 * peso equals: ((TrainTurnstile for: mitreTigre at: belgranoMitre) chargeExitOf: card).
	self assert: 9600 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test09TrainExitAdjustsKeepingTheDiscountAppliedOnEntry

	| card |
	card := self studentCard.
	(TrainTurnstile for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 9).

	self assert: 100 * peso equals: ((TrainTurnstile for: mitreTigre at: belgranoMitre) chargeExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test10TrainExitAtDirectionRefundsNothing

	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstile for: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9).

	self assert: 0 * peso equals: ((TrainTurnstile for: mitreTigre at: retiroMitre) chargeExitOf: card).
	self assert: 9400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test11TripWithinTwoHoursOfLastTripStartIsHalfPrice

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10)).
	self assert: 500 * peso equals: ((Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 500 * peso equals: ((Turnstile for: subwayD at: palermo) charge: card towards: congresoDeTucuman at: (self november: 25 at: 12 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test12TripAfterTwoHoursOfLastTripStartIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).

	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test13StudentDoesNotAccumulateTransferOnWeekdays

	| card turnstile |
	card := self studentCard.
	turnstile := Turnstile for: subwayD at: tribunales.

	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 10)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card turnstile |
	card := self studentCard.
	turnstile := Turnstile for: subwayD at: tribunales.

	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10)).
	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips

	| card turnstile |
	card := self retireeCard.
	turnstile := Turnstile for: subwayD at: tribunales.
	turnstile charge: card towards: palermo at: (self november: 22 at: 10).
	turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 10).

	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 20))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test21TransferIsCountedFromTheStartOfTheLastTrip

	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(BusCardReader for: line60) charge: card from: plazaDeMayo to: retiro at: (self november: 25 at: 11 minutes: 30).

	self assert: 500 * peso equals: ((Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 13))! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.

	self should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10) ] failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test17OriginAndDestinationMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self should: [ (BusCardReader for: line60) charge: card from: constitucion to: palermo at: (self november: 25 at: 10) ] failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self should: [ (BusCardReader for: line60) charge: card from: retiroMitre to: plazaDeMayo at: (self november: 25 at: 10) ] failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self should: [ Turnstile for: subwayD at: plazaDeMayo ] failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test18OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self should: [ (BusCardReader for: line60) charge: card from: retiro to: retiro at: (self november: 25 at: 10) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self should: [ (Turnstile for: subwayD at: palermo) charge: card towards: palermo at: (self november: 25 at: 10) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: card trips isEmpty! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test19MeansOfTransportMustHaveAtLeastTwoStops

	self should: [ MeansOfTransport named: 'Línea vacía' withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ] failWith: MeansOfTransport notEnoughStopsErrorDescription.
	self should: [ MeansOfTransport named: 'Línea vacía' withStops: #() fareTable: (FareTable fixed: 1000 * peso) ] failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:23:22 am (UTC)'!
test20SubwayAndTrainDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self should: [ (Turnstile for: subwayD at: tribunales) charge: card towards: callao at: (self november: 25 at: 10) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self should: [ (TrainTurnstile for: mitreTigre at: tigre) charge: card towards: belgranoMitre at: (self november: 25 at: 10) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !
