'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:48:30 am'!
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

!classDefinition: #DirectionalMeansOfTransport category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #DirectionalMeansOfTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'DirectionalMeansOfTransport class' category: #'2025-2C-2doParcial'!
DirectionalMeansOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
DirectionalMeansOfTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
DirectionalMeansOfTransport subclass: #Train
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
	instanceVariableNames: 'meansOfTransport origin destination start rate'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
initializeWithBalance: anAmount discount: aDiscount

	balance := anAmount.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
numberOfTripsOnDayOf: aDateTime

	^trips count: [ :trip | trip startedOnDayOf: aDateTime ]! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
chargeTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip on: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime rate: (discount rateAt: aDateTime for: self).
	trip cost > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - trip cost.
	trips add: trip! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
registerExitAt: aStop

	| adjustedTrip |
	adjustedTrip := trips last endingAt: aStop.
	balance := balance + trips last cost - adjustedTrip cost.
	trips removeLast.
	trips add: adjustedTrip! !

!BAJECard methodsFor: 'rates' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
transferRateAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedWithinTransferTimeOf: aDateTime ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
withBalance: anAmount discount: aDiscount

	^self new initializeWithBalance: anAmount discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!CardDiscount methodsFor: 'rates' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
rateAt: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'rates' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
rateAt: aDateTime for: aCard

	^aCard transferRateAt: aDateTime! !

!RetireeDiscount methodsFor: 'rates' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
rateAt: aDateTime for: aCard

	^(aCard numberOfTripsOnDayOf: aDateTime) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard transferRateAt: aDateTime ]! !

!RetireeDiscount methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'rates' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
rateAt: aDateTime for: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ aCard transferRateAt: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
initializeWithPricesUpToDistance: distancesToPrices

	pricesUpToDistance := distancesToPrices! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
priceFor: aDistance

	^(pricesUpToDistance detect: [ :distanceToPrice | aDistance <= distanceToPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
fixedAt: aPrice

	^self withPricesUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
withPricesUpToDistance: distancesToPrices

	^self new initializeWithPricesUpToDistance: distancesToPrices! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
initializeWithStops: aCollectionOfStops fareTable: aFareTable

	stops := aCollectionOfStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
registerTripOf: aCard from: anOrigin to: aDestination at: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.
	aCard chargeTripOn: self from: anOrigin to: aDestination at: aDateTime! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasEnoughStops: aCollectionOfStops.
	^self new initializeWithStops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop is not in this means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime

	self registerTripOf: aCard from: anOrigin to: aDestination at: aDateTime! !

!DirectionalMeansOfTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
chargeTripOf: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self assertIsDirection: aDirection.
	self registerTripOf: aCard from: aStop to: aDirection at: aDateTime! !

!DirectionalMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
assertIsDirection: aStop

	(aStop = stops first or: [ aStop = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!DirectionalMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
chargeExitOf: aCard at: aStop

	self assertIncludes: aStop.
	aCard registerExitAt: aStop! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime rate: aRate

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	rate := aRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
cost

	^(meansOfTransport priceFrom: origin to: destination) * rate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
startedOnDayOf: aDateTime

	^start sameDayAs: aDateTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
startedWithinTransferTimeOf: aDateTime

	^(start distanceTo: aDateTime) <= self class transferTime! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
endingAt: aStop

	^self class on: meansOfTransport from: origin to: aStop at: start rate: rate! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime rate: aRate

	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime rate: aRate! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:47:16 am (UTC)'!
transferTime

	^2 * hour! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiro := Stop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := Bus
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withPricesUpToDistance: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subwayD := Subway
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixedAt: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitreTrain := Train
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpToDistance: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
assert: aCard wasChargedFor: anAmount

	self assert: 5000 * peso - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 5000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:18 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
retireeCard

	^BAJECard withBalance: 5000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
studentCard

	^BAJECard withBalance: 5000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test01BusChargesFareForDistanceWithoutDiscount

	| card |
	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFor: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test02BusChargesMiddleFareUpToItsDistance

	| card |
	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: belgrano to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFor: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |
	card := self studentCard.
	line60 chargeTripOf: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0).

	self assert: card wasChargedFor: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |
	card := self studentCard.
	line60 chargeTripOf: card from: constitucion to: belgrano at: (self november: 23 at: 11 minutes: 0).

	self assert: card wasChargedFor: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |
	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12 minutes: 0).

	self assert: card wasChargedFor: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test06RetireePaysFullPriceAfterFreeTripsOfTheDay

	| card |
	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 15 minutes: 0).

	self assert: card wasChargedFor: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test07RetireeHasFreeTripsAgainOnAnotherDay

	| card |
	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 23 at: 15 minutes: 0).

	self assert: card wasChargedFor: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test08TrainChargesFareToDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.
	mitreTrain chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: card wasChargedFor: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test09TrainRefundsDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	mitreTrain chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	mitreTrain chargeExitOf: card at: belgranoMitre.

	self assert: card wasChargedFor: 400 * peso.
	self assert: 1 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test10TrainExitKeepsDiscountOfEntry

	| card |
	card := self studentCard.
	mitreTrain chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 24 at: 9 minutes: 0).
	mitreTrain chargeExitOf: card at: belgranoMitre.

	self assert: card wasChargedFor: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test11TripWithinTwoHoursOfLastTripPaysHalf

	| card |
	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFor: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test12TransfersHaveNoLimit

	| card |
	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 12 minutes: 0).

	self assert: card wasChargedFor: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test13TripAfterTwoHoursOfLastTripIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12 minutes: 1).

	self assert: card wasChargedFor: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test14StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	card := self studentCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFor: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test15StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 10 minutes: 30).

	self assert: card wasChargedFor: 1500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test16RetireeGetsTransferDiscountAfterFreeTrips

	| card |
	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 13 minutes: 0).

	self assert: card wasChargedFor: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test17CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.

	self
		should: [ line60 chargeTripOf: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test18StopsMustBeInTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTripOf: card from: constitucion to: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self
		should: [ mitreTrain chargeTripOf: card boardingAt: retiro towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self assert: card wasChargedFor: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test19OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTripOf: card from: retiro to: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self
		should: [ subwayD chargeTripOf: card boardingAt: palermo towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: card wasChargedFor: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus withStops: { constitucion } fareTable: (FareTable fixedAt: 600 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:48:09 am (UTC)'!
test21DirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD chargeTripOf: card boardingAt: tribunales towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: DirectionalMeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ mitreTrain chargeTripOf: card boardingAt: retiroMitre towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: DirectionalMeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasChargedFor: 0 * peso! !
