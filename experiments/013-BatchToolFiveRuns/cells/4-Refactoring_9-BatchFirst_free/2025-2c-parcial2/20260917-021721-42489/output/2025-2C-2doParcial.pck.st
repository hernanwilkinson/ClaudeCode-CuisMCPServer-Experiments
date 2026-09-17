'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:20:30 am'!
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

!classDefinition: #TurnstileTransport category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #TurnstileTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileTransport class' category: #'2025-2C-2doParcial'!
TurnstileTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
TurnstileTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
TurnstileTransport subclass: #Train
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Train class' category: #'2025-2C-2doParcial'!
Train class
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
	instanceVariableNames: 'meansOfTransport origin destination start priceFactor charged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #BAJECardTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #BAJECardTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congresoDeTucuman tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BAJECardTest class' category: #'2025-2C-2doParcial-Tests'!
BAJECardTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
adjustLastTripArrivingAt: aStop

	| lastTrip chargedOnEntry |
	lastTrip := trips last.
	chargedOnEntry := lastTrip charged.
	lastTrip endAt: aStop.

	balance := balance + chargedOnEntry - lastTrip charged! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip on: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime priceFactor: (self priceFactorAt: aDateTime).
	self assertCanPay: trip charged.

	balance := balance - trip charged.
	trips add: trip! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ (trips last start distanceTo: aDateTime) <= self transferTimeLimit ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
priceFactorAt: aDateTime

	^(discount priceFactorFor: self at: aDateTime) min: (self transferPriceFactorAt: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
transferPriceFactorAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
assertCanPay: aPrice

	aPrice > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^(self isWeekend: aDateTime) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 5:19:13 am (UTC)'!
isWeekend: aDateTime

	^{ Saturday. Sunday } includes: aDateTime date day! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
initializeWithPricesUpToDistance: distancesAndPrices

	pricesUpToDistance := distancesAndPrices asSortedCollection: [ :aDistanceAndPrice :anotherDistanceAndPrice | aDistanceAndPrice key <= anotherDistanceAndPrice key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
priceFor: aDistance

	^(pricesUpToDistance detect: [ :aDistanceAndPrice | aDistance <= aDistanceAndPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
fixed: aPrice

	^self withPricesUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
withPricesUpToDistance: distancesAndPrices

	^self new initializeWithPricesUpToDistance: distancesAndPrices! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
initializeStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
headOfLine

	^stops first! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
lastStop

	^stops last! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.

	aCard payTripOn: self from: anOrigin to: aDestination at: aDateTime! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
stops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.

	^self new initializeStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop does not belong to the means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
chargeTapOf: aCard from: anOrigin to: aDestination at: aDateTime

	self charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime! !

!TurnstileTransport methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
chargeEntryOf: aCard at: aStop towards: aDirection at: aDateTime

	self assertIsDirection: aDirection.

	self charge: aCard forTripFrom: aStop to: aDirection at: aDateTime! !

!TurnstileTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
assertIsDirection: aStop

	(aStop = self headOfLine or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Subway class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
stops: aStops fare: aPrice

	^self stops: aStops fareTable: (FareTable fixed: aPrice)! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
chargeExitOf: aCard at: aStop

	aCard adjustLastTripArrivingAt: aStop! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime priceFactor: aPriceFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	start := aDateTime.
	priceFactor := aPriceFactor.
	self endAt: aDestination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
charged

	^charged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
endAt: aDestination

	destination := aDestination.
	charged := (meansOfTransport fareFrom: origin to: destination) * priceFactor! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:19:12 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime priceFactor: aPriceFactor

	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime priceFactor: aPriceFactor! !

!BAJECardTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		stops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withPricesUpToDistance: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway stops: { congresoDeTucuman. tribunales. callao. palermo } fare: 1000 * peso.

	retiroTrain := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoTrain := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTrain := Train
		stops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpToDistance: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
cardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: self initialBalance! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
initialBalance

	^10000 * peso! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
monday

	^November twentyfourth, 2025! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
on: aDate at: anHour

	^self on: aDate at: anHour minutes: 0! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
on: aDate at: anHour minutes: aNumberOfMinutes

	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
retireeCard

	^BAJECard retireeWithBalance: self initialBalance! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
saturday

	^November twentysecond, 2025! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
studentCard

	^BAJECard studentWithBalance: self initialBalance! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
sunday

	^November twentythird, 2025! !

!BAJECardTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
tuesday

	^November twentyfifth, 2025! !

!BAJECardTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
assert: aCard wasCharged: aPrice

	self assert: self initialBalance - aPrice equals: aCard balance! !

!BAJECardTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCard withTrips: aNumberOfTrips

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: aCard wasCharged: 0 * peso.
			self assert: aNumberOfTrips equals: aCard trips size ]! !

!BAJECardTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test01BusChargesFareUpToFiveKilometersWithoutDiscount

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).

	self assert: card wasCharged: 600 * peso.
	self assert: 1 equals: card trips size! !

!BAJECardTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test02BusChargesFareUpToTenKilometers

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: retiroBus at: (self on: self tuesday at: 10).

	self assert: card wasCharged: 1000 * peso! !

!BAJECardTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test03BusChargesFareForMoreThanTenKilometers

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: belgranoBus to: constitucion at: (self on: self tuesday at: 10).

	self assert: card wasCharged: 1300 * peso! !

!BAJECardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test04StudentPaysHalfOnWeekdays

	| card |
	card := self studentCard.

	line60 chargeTapOf: card from: constitucion to: belgranoBus at: (self on: self monday at: 11).

	self assert: card wasCharged: 650 * peso! !

!BAJECardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test05StudentPaysFullPriceOnWeekends

	| card |
	card := self studentCard.

	line60 chargeTapOf: card from: constitucion to: belgranoBus at: (self on: self saturday at: 11).
	line60 chargeTapOf: card from: constitucion to: belgranoBus at: (self on: self sunday at: 11).

	self assert: card wasCharged: 2600 * peso! !

!BAJECardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test06RetireeHasTwoFreeTripsPerDay

	| card |
	card := self retireeCard.

	subwayD chargeEntryOf: card at: tribunales towards: congresoDeTucuman at: (self on: self saturday at: 9).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self saturday at: 12).

	self assert: card wasCharged: 0 * peso.
	self assert: 2 equals: card trips size! !

!BAJECardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test07RetireePaysFullPriceAfterTwoTripsInTheSameDay

	| card |
	card := self retireeCard.

	subwayD chargeEntryOf: card at: tribunales towards: congresoDeTucuman at: (self on: self saturday at: 9).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self saturday at: 12).
	subwayD chargeEntryOf: card at: callao towards: palermo at: (self on: self saturday at: 15).

	self assert: card wasCharged: 1000 * peso! !

!BAJECardTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test08RetireeFreeTripsAreRenewedEachDay

	| card |
	card := self retireeCard.

	subwayD chargeEntryOf: card at: tribunales towards: congresoDeTucuman at: (self on: self saturday at: 9).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self saturday at: 12).
	subwayD chargeEntryOf: card at: callao towards: palermo at: (self on: self sunday at: 15).

	self assert: card wasCharged: 0 * peso! !

!BAJECardTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test09SubwayChargesFixedFare

	| card |
	card := self cardWithoutDiscount.

	subwayD chargeEntryOf: card at: callao towards: palermo at: (self on: self tuesday at: 9).

	self assert: card wasCharged: 1000 * peso! !

!BAJECardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test10TrainChargesOnEntryByDistanceToDirection

	| card |
	card := self cardWithoutDiscount.

	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroTrain at: (self on: self saturday at: 9).

	self assert: card wasCharged: 600 * peso! !

!BAJECardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test11TrainRefundsDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.

	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroTrain at: (self on: self saturday at: 9).
	mitreTrain chargeExitOf: card at: belgranoTrain.

	self assert: card wasCharged: 400 * peso.
	self assert: 1 equals: card trips size.
	self assert: belgranoTrain equals: card trips last destination! !

!BAJECardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test12TrainExitKeepsDiscountAppliedOnEntry

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self saturday at: 9).
	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroTrain at: (self on: self saturday at: 9 minutes: 30).
	mitreTrain chargeExitOf: card at: belgranoTrain.

	self assert: card wasCharged: 800 * peso! !

!BAJECardTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test13RetireeFreeTrainTripRefundsNothingOnExit

	| card |
	card := self retireeCard.

	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroTrain at: (self on: self saturday at: 9).
	mitreTrain chargeExitOf: card at: belgranoTrain.

	self assert: card wasCharged: 0 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test14TripWithinTwoHoursOfLastTripStartIsHalfPrice

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self tuesday at: 10 minutes: 30).

	self assert: card wasCharged: 1100 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test15TripAfterTwoHoursOfLastTripStartIsNotATransfer

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self tuesday at: 12 minutes: 1).

	self assert: card wasCharged: 1600 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test16TransfersHaveNoLimitAndCountFromTheLastTripStart

	| card |
	card := self cardWithoutDiscount.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self tuesday at: 11 minutes: 30).
	subwayD chargeEntryOf: card at: palermo towards: congresoDeTucuman at: (self on: self tuesday at: 13).

	self assert: card wasCharged: 1600 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test17StudentTransferDiscountIsNotCumulativeOnWeekdays

	| card |
	card := self studentCard.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self tuesday at: 10 minutes: 30).

	self assert: card wasCharged: 800 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test18StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self saturday at: 10).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self saturday at: 10 minutes: 30).

	self assert: card wasCharged: 1100 * peso! !

!BAJECardTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test19RetireeGetsTransferDiscountAfterFreeTrips

	| card |
	card := self retireeCard.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).
	line60 chargeTapOf: card from: plazaDeMayo to: constitucion at: (self on: self tuesday at: 10 minutes: 30).
	subwayD chargeEntryOf: card at: tribunales towards: palermo at: (self on: self tuesday at: 11).

	self assert: card wasCharged: 500 * peso! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test20CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 599 * peso.

	self
		should: [ line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: BAJECard insufficientBalanceErrorDescription equals: anError messageText.
			self assert: 599 * peso equals: card balance.
			self assert: card trips isEmpty ]! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test21CanPayWithExactlyTheBalanceNeeded

	| card |
	card := BAJECard withoutDiscountWithBalance: 600 * peso.

	line60 chargeTapOf: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10).

	self assert: 0 * peso equals: card balance! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test22OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTapOf: card from: plazaDeMayo to: plazaDeMayo at: (self on: self tuesday at: 10) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test23OriginMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTapOf: card from: retiroTrain to: plazaDeMayo at: (self on: self tuesday at: 10) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test24DestinationMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ line60 chargeTapOf: card from: constitucion to: belgranoTrain at: (self on: self tuesday at: 10) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test25MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus stops: { constitucion } fareTable: (FareTable fixed: 600 * peso) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport notEnoughStopsErrorDescription equals: anError messageText ]! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test26SubwayDirectionMustBeHeadOfLineOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD chargeEntryOf: card at: tribunales towards: callao at: (self on: self tuesday at: 10) ]
		failWith: TurnstileTransport invalidDirectionErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test27TrainDirectionMustBeHeadOfLineOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ mitreTrain chargeEntryOf: card at: tigre towards: sanIsidro at: (self on: self tuesday at: 10) ]
		failWith: TurnstileTransport invalidDirectionErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:14 am (UTC)'!
test28CanNotBoardTowardsTheSameStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD chargeEntryOf: card at: palermo towards: palermo at: (self on: self tuesday at: 10) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription
		leaving: card
		withTrips: 0! !

!BAJECardTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:20:15 am (UTC)'!
test29DirectionMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayD chargeEntryOf: card at: tribunales towards: tigre at: (self on: self tuesday at: 10) ]
		failWith: TurnstileTransport invalidDirectionErrorDescription
		leaving: card
		withTrips: 0! !
