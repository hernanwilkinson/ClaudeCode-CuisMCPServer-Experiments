'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:36:58 am'!
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

!classDefinition: #StopTurnstile category: #'2025-2C-2doParcial'!
CardReader subclass: #StopTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StopTurnstile class' category: #'2025-2C-2doParcial'!
StopTurnstile class
	instanceVariableNames: ''!

!classDefinition: #SubwayTurnstile category: #'2025-2C-2doParcial'!
StopTurnstile subclass: #SubwayTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayTurnstile class' category: #'2025-2C-2doParcial'!
SubwayTurnstile class
	instanceVariableNames: ''!

!classDefinition: #TrainTurnstile category: #'2025-2C-2doParcial'!
StopTurnstile subclass: #TrainTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainTurnstile class' category: #'2025-2C-2doParcial'!
TrainTurnstile class
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
	instanceVariableNames: 'meansOfTransport origin destination startedAt chargeFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'line60 subwayD mitreTigre constitucion plazaDeMayo retiro belgrano congresoDeTucuman tribunales callao palermo retiroMitre belgranoMitre sanIsidro tigre busReader subwayTurnstile trainTurnstile'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
initializeWithBalance: anAmount discount: aCardDiscount

	balance := anAmount.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
endLastTripAt: aStop

	| lastTrip chargedOnEntry refund |
	lastTrip := trips last.
	chargedOnEntry := lastTrip charge.
	lastTrip endAt: aStop.
	refund := chargedOnEntry - lastTrip charge.
	balance := balance + refund.

	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip
		on: aMeansOfTransport
		from: anOrigin
		to: aDestination
		startedAt: aDateTime
		chargeFactor: (discount chargeFactorForTripAt: aDateTime of: self).

	self debit: trip charge.
	trips add: trip.

	^trip charge! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
debit: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].

	balance := balance - anAmount! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last allowsTransferAt: aDateTime ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
withBalance: anAmount discount: aCardDiscount

	^self new initializeWithBalance: anAmount discount: aCardDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	self subclassResponsibility! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
transferChargeFactorForTripAt: aDateTime of: aCard

	^(aCard isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	^self transferChargeFactorForTripAt: aDateTime of: aCard! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay ifTrue: [ ^0 ].

	^self transferChargeFactorForTripAt: aDateTime of: aCard! !

!RetireeDiscount class methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	(self isWeekend: aDateTime) ifFalse: [ ^1/2 ].

	^self transferChargeFactorForTripAt: aDateTime of: aCard! !

!StudentDiscount methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
isWeekend: aDateTime

	^{ Saturday. Sunday } includes: aDateTime date day! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
initializeOn: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	meansOfTransport assertIsValidTripFrom: anOrigin to: aDestination.

	^aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
on: aMeansOfTransport

	^self new initializeOn: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime

	^self charge: aCard from: anOrigin to: aDestination at: aDateTime! !

!StopTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeTripOf: aCard boardingAt: aStop towards: aDirection at: aDateTime

	meansOfTransport assertIsDirection: aDirection.

	^self charge: aCard from: aStop to: aDirection at: aDateTime! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
chargeExitOf: aCard at: aStop

	^aCard endLastTripAt: aStop! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
initialize

	priceRanges := OrderedCollection new! !

!FareTable methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
upTo: aDistance charge: aPrice

	priceRanges add: aDistance -> aPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
priceFor: aDistance

	^(priceRanges detect: [ :aPriceRange | aDistance <= aPriceRange key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
fixedPrice: aPrice

	^self new upTo: PlusInfinity new charge: aPrice! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := aCollectionOfStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
name

	^name! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
assertIsDirection: aStop

	(aStop = stops first or: [ aStop = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
assertIsInRoute: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIsInRoute: anOrigin.
	self assertIsInRoute: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable

	self assertHasEnoughStops: aCollectionOfStops.

	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop is not in the route of the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:35:59 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime chargeFactor: aFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	startedAt := aDateTime.
	chargeFactor := aFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
startedAt

	^startedAt! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
charge

	^(meansOfTransport costFrom: origin to: destination) * chargeFactor! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
allowsTransferAt: aDateTime

	^(startedAt distanceTo: aDateTime) <= self class transferTimeWindow! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
startedOn: aDate

	^startedAt date = aDate! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
endAt: aStop

	destination := aStop! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime chargeFactor: aFactor

	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime chargeFactor: aFactor! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:36:00 am (UTC)'!
transferTimeWindow

	^2 * hour! !

!TransportSystemTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
setUp

	| busFareTable trainFareTable |
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	busFareTable := FareTable new.
	busFareTable upTo: 5 * kilometer charge: 600 * peso.
	busFareTable upTo: 10 * kilometer charge: 1000 * peso.
	busFareTable upTo: PlusInfinity new charge: 1300 * peso.
	line60 := MeansOfTransport named: 'Colectivo Línea 60' stops: { constitucion. plazaDeMayo. retiro. belgrano } fareTable: busFareTable.

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport named: 'Subte Línea D' stops: { congresoDeTucuman. tribunales. callao. palermo } fareTable: (FareTable fixedPrice: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	trainFareTable := FareTable new.
	trainFareTable upTo: 15 * kilometer charge: 400 * peso.
	trainFareTable upTo: PlusInfinity new charge: 600 * peso.
	mitreTigre := MeansOfTransport named: 'Tren Mitre - Ramal Retiro-Tigre' stops: { retiroMitre. belgranoMitre. sanIsidro. tigre } fareTable: trainFareTable.

	busReader := BusCardReader on: line60.
	subwayTurnstile := SubwayTurnstile on: subwayD.
	trainTurnstile := TrainTurnstile on: mitreTigre! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinutes

	^(FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinutes)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test01BusChargesByDistanceWithoutDiscount

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test02BusFareTableRanges

	self assert: 1000 * peso equals: (busReader chargeTripOf: self cardWithoutDiscount from: constitucion to: retiro at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: (busReader chargeTripOf: self cardWithoutDiscount from: belgrano to: constitucion at: (self november: 25 at: 10 minutes: 0)).
	self assert: 600 * peso equals: (busReader chargeTripOf: self cardWithoutDiscount from: belgrano to: retiro at: (self november: 25 at: 10 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |
	card := self studentCard.

	self assert: 650 * peso equals: (busReader chargeTripOf: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0)).
	self assert: 9350 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: (busReader chargeTripOf: self studentCard from: constitucion to: belgrano at: (self november: 23 at: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |
	card := self retireeCard.

	self assert: 0 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: congresoDeTucuman towards: palermo at: (self november: 22 at: 12 minutes: 0)).
	self assert: 1000 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 15 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test06RetireeFreeTripsRestartEachDay

	| card |
	card := self retireeCard.

	subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayTurnstile chargeTripOf: card boardingAt: congresoDeTucuman towards: palermo at: (self november: 22 at: 12 minutes: 0).

	self assert: 0 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 23 at: 9 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test07SubwayChargesAFixedPrice

	self assert: 1000 * peso equals: (subwayTurnstile chargeTripOf: self cardWithoutDiscount boardingAt: tribunales towards: congresoDeTucuman at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1000 * peso equals: (subwayTurnstile chargeTripOf: self cardWithoutDiscount boardingAt: congresoDeTucuman towards: palermo at: (self november: 25 at: 10 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test08TrainChargesByDistanceToTheDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (trainTurnstile chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test09TrainRefundsTheDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	trainTurnstile chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: 200 * peso equals: (trainTurnstile chargeExitOf: card at: belgranoMitre).
	self assert: 9600 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test10TrainRefundKeepsTheDiscountAppliedOnEntry

	| card |
	card := self studentCard.

	self assert: 300 * peso equals: (trainTurnstile chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 25 at: 9 minutes: 0)).
	self assert: 100 * peso equals: (trainTurnstile chargeExitOf: card at: belgranoMitre).
	self assert: 9800 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test11TrainExitWithoutDifferenceRefundsNothing

	| card |
	card := self cardWithoutDiscount.
	trainTurnstile chargeTripOf: card boardingAt: tigre towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: 0 * peso equals: (trainTurnstile chargeExitOf: card at: belgranoMitre).
	self assert: 9400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test12TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test13TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 1000 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12 minutes: 1))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test14TransfersAreCountedFromTheStartOfTheLastTrip

	| card |
	card := self cardWithoutDiscount.
	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 11 minutes: 30).

	self assert: 300 * peso equals: (busReader chargeTripOf: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 13 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test15StudentDoesNotGetTransferDiscountOnWeekdays

	| card |
	card := self studentCard.
	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test16StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.
	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test17RetireeGetsTransferDiscountAfterFreeTrips

	| card |
	card := self retireeCard.
	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	busReader chargeTripOf: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 10 minutes: 30).

	self assert: 500 * peso equals: (subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test18CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.

	self should: [ busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test19CanPayWithExactlyTheBalance

	| card |
	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.

	busReader chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 0 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test20OriginAndDestinationMustBeInTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self should: [ busReader chargeTripOf: card from: tribunales to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self should: [ busReader chargeTripOf: card from: plazaDeMayo to: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self should: [ trainTurnstile chargeTripOf: card boardingAt: retiro towards: tigre at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test21OriginAndDestinationMustBeDifferent

	self should: [ busReader chargeTripOf: self cardWithoutDiscount from: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self should: [ subwayTurnstile chargeTripOf: self cardWithoutDiscount boardingAt: palermo towards: palermo at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport sameOriginAndDestinationErrorDescription! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test22MeansOfTransportMustHaveAtLeastTwoStops

	self should: [ MeansOfTransport named: 'Línea vacía' stops: { constitucion } fareTable: (FareTable fixedPrice: 1000 * peso) ] failWith: MeansOfTransport notEnoughStopsErrorDescription.
	self should: [ MeansOfTransport named: 'Línea vacía' stops: #() fareTable: (FareTable fixedPrice: 1000 * peso) ] failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:36:44 am (UTC)'!
test23DirectionMustBeTheHeadOrTheLastStop

	| card |
	card := self cardWithoutDiscount.

	self should: [ subwayTurnstile chargeTripOf: card boardingAt: tribunales towards: callao at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self should: [ trainTurnstile chargeTripOf: card boardingAt: retiroMitre towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ] failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !
