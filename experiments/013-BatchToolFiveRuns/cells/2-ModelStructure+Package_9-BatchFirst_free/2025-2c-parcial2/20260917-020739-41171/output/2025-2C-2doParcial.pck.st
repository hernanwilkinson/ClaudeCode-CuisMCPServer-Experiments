'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:10:39 am'!
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

!classDefinition: #FareBracket category: #'2025-2C-2doParcial'!
Object subclass: #FareBracket
	instanceVariableNames: 'upperDistance cost'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareBracket class' category: #'2025-2C-2doParcial'!
FareBracket class
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
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Stop class' category: #'2025-2C-2doParcial'!
Stop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin destination startTime payableFraction amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroLine60 belgranoLine60 line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount

	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
lastTripOrigin

	^trips last origin! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [:aTrip | aTrip startedOn: aDate]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
adjustLastTripEndingAt: aStop costing: aCost

	| refund |

	refund := trips last endAt: aStop costing: aCost.
	balance := balance + refund.

	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payTripFrom: anOrigin to: aDestination on: aDateTime costing: aCost

	| payableFraction amount |

	payableFraction := self payableFractionOn: aDateTime.
	amount := aCost * payableFraction.
	self assertCanPay: amount.

	balance := balance - amount.
	trips add: (Trip from: anOrigin to: aDestination startingOn: aDateTime payingFraction: payableFraction charged: amount).

	^amount! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
isTransferOn: aDateTime

	^trips notEmpty and: [ (trips last startTime distanceTo: aDateTime) <= self transferPeriod ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payableFractionOn: aDateTime

	"Discounts are not cumulative, the best one applies"
	^(discount payableFractionOn: aDateTime for: self) min: (self transferPayableFractionOn: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
transferPayableFractionOn: aDateTime

	^(self isTransferOn: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
transferPeriod

	^2 * hour! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
withBalance: aBalance discount: aCardDiscount

	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payableFractionOn: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payableFractionOn: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payableFractionOn: aDateTime for: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
payableFractionOn: aDateTime for: aCard

	^(self isWeekend: aDateTime) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
isWeekend: aDateTime

	^{ Saturday. Sunday } includes: aDateTime date day! !

!FareBracket methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
initializeUpTo: anUpperDistance costing: aCost

	upperDistance := anUpperDistance.
	cost := aCost! !

!FareBracket methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
cost

	^cost! !

!FareBracket methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
includes: aDistance

	^aDistance <= upperDistance! !

!FareBracket class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
upTo: anUpperDistance costing: aCost

	^self new initializeUpTo: anUpperDistance costing: aCost! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
initializeWithBrackets: aCollectionOfFareBrackets

	brackets := aCollectionOfFareBrackets! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
costFor: aDistance

	^(brackets detect: [:aBracket | aBracket includes: aDistance]) cost! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
fixed: aCost

	^self withBrackets: { FareBracket upTo: PlusInfinity new costing: aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
withBrackets: aCollectionOfFareBrackets

	^self new initializeWithBrackets: aCollectionOfFareBrackets! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
initializeWithStops: aSequenceOfStops fareTable: aFareTable

	stops := aSequenceOfStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
assertIsStop: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
assertValidTripFrom: anOrigin to: aDestination

	self assertIsStop: anOrigin.
	self assertIsStop: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!MeansOfTransport methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime

	self assertValidTripFrom: anOrigin to: aDestination.

	^aCard payTripFrom: anOrigin to: aDestination on: aDateTime costing: (self costFrom: anOrigin to: aDestination)! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
withStops: aSequenceOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aSequenceOfStops.

	^self new initializeWithStops: aSequenceOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
assertHasAtLeastTwoStops: aSequenceOfStops

	aSequenceOfStops size < 2 ifTrue: [ self error: self mustHaveAtLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop does not belong to this means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination on: aDateTime

	^self charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
chargeTripOf: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self assertIsDirection: aDirection.

	^self charge: aCard forTripFrom: aStop to: aDirection on: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
assertIsDirection: aStop

	(aStop = stops first or: [ aStop = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
chargeExitOf: aCard at: aStop

	^aCard adjustLastTripEndingAt: aStop costing: (self costFrom: aCard lastTripOrigin to: aStop)! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:40 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingOn: aDateTime payingFraction: aPayableFraction charged: anAmount

	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	payableFraction := aPayableFraction.
	amountCharged := anAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
amountCharged

	^amountCharged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
startedOn: aDate

	^startTime date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
endAt: aStop costing: aCost

	| adjustedAmount refund |

	adjustedAmount := aCost * payableFraction.
	refund := amountCharged - adjustedAmount.
	destination := aStop.
	amountCharged := adjustedAmount.

	^refund! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:09:41 am (UTC)'!
from: anOrigin to: aDestination startingOn: aDateTime payingFraction: aPayableFraction charged: anAmount

	^self new initializeFrom: anOrigin to: aDestination startingOn: aDateTime payingFraction: aPayableFraction charged: anAmount! !

!TransportSystemTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroLine60 := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoLine60 := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		withStops: { constitucion. plazaDeMayo. retiroLine60. belgranoLine60 }
		fareTable: (FareTable withBrackets: {
			FareBracket upTo: 5 * kilometer costing: 600 * peso.
			FareBracket upTo: 10 * kilometer costing: 1000 * peso.
			FareBracket upTo: PlusInfinity new costing: 1300 * peso }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := Train
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withBrackets: {
			FareBracket upTo: 15 * kilometer costing: 400 * peso.
			FareBracket upTo: PlusInfinity new costing: 600 * peso })! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
monday

	^November twentyfourth, 2025! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
on: aDate at: hours minutes: minutes

	^aDate atTimeOfDay: (TimeOfDay hours: hours minutes: minutes)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
saturday

	^November twentysecond, 2025! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText]! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
tuesday

	^November twentyfifth, 2025! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test01BusChargesFullPriceToCardWithoutDiscount

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test02BusCostDependsOnDistance

	self assert: 1000 * peso equals: (line60 chargeTripOf: self cardWithoutDiscount from: retiroLine60 to: constitucion on: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 1300 * peso equals: (line60 chargeTripOf: self cardWithoutDiscount from: constitucion to: belgranoLine60 on: (self on: self tuesday at: 10 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |

	card := self studentCard.

	self assert: 650 * peso equals: (line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self on: self monday at: 11 minutes: 0)).
	self assert: 9350 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: (line60 chargeTripOf: self studentCard from: constitucion to: belgranoLine60 on: (self on: self saturday at: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree

	| card |

	card := self retireeCard.

	self assert: 0 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman on: (self on: self saturday at: 9 minutes: 0)).
	self assert: 10000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test06RetireePaysFullPriceFromThirdTripOfTheDay

	| card |

	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self saturday at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman on: (self on: self saturday at: 12 minutes: 0).

	self assert: 1000 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self saturday at: 15 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test07RetireeFreeTripsAreRenewedEachDay

	| card |

	card := self retireeCard.
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self saturday at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman on: (self on: self saturday at: 12 minutes: 0).

	self assert: 0 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self monday at: 15 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test08SubwayCostIsFixed

	| card |

	card := self cardWithoutDiscount.

	self assert: 1000 * peso equals: (subwayD chargeTripOf: card boardingAt: callao towards: palermo on: (self on: self tuesday at: 9 minutes: 0)).
	self assert: 1000 * peso equals: (subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman on: (self on: self tuesday at: 14 minutes: 0)).
	self assert: 8000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test09TrainChargesUpToTheDirectionOnEntry

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (mitre chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre on: (self on: self saturday at: 9 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test10TrainRefundsDifferenceOnExit

	| card |

	card := self cardWithoutDiscount.
	mitre chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre on: (self on: self saturday at: 9 minutes: 0).

	self assert: 200 * peso equals: (mitre chargeExitOf: card at: belgranoMitre).
	self assert: 9600 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test11TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |

	card := self studentCard.
	mitre chargeTripOf: card boardingAt: sanIsidro towards: retiroMitre on: (self on: self monday at: 9 minutes: 0).

	self assert: 100 * peso equals: (mitre chargeExitOf: card at: belgranoMitre).
	self assert: 9800 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test12TrainExitWithSameFareRefundsNothing

	| card |

	card := self cardWithoutDiscount.
	mitre chargeTripOf: card boardingAt: sanIsidro towards: tigre on: (self on: self saturday at: 9 minutes: 0).

	self assert: 0 * peso equals: (mitre chargeExitOf: card at: tigre).
	self assert: 9600 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test13TripWithinTwoHoursIsATransfer

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 500 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self tuesday at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test14TransfersAreCountedFromTheStartOfTheLastTrip

	| card |

	card := self cardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self tuesday at: 11 minutes: 30).

	self assert: 300 * peso equals: (line60 chargeTripOf: card from: plazaDeMayo to: constitucion on: (self on: self tuesday at: 13 minutes: 30)).
	self assert: 1000 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self tuesday at: 15 minutes: 31))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test15StudentOnWeekdaysDoesNotAccumulateTransferDiscount

	| card |

	card := self studentCard.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self tuesday at: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test16StudentOnWeekendsGetsTransferDiscount

	| card |

	card := self studentCard.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self saturday at: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self saturday at: 10 minutes: 30))! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test17RetireeFreeTripIsNotAffectedByTransfersButThirdTripIs

	| card |

	card := self retireeCard.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0).

	self assert: 0 * peso equals: (subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self on: self tuesday at: 10 minutes: 30)).
	self assert: 500 * peso equals: (subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman on: (self on: self tuesday at: 11 minutes: 0))! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test18CanNotPayWithoutEnoughBalance

	| card |

	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.

	self should: [ line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0) ] failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test19CanPayWithExactBalance

	| card |

	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.

	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0).
	self assert: 0 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test20CanNotTravelToAStopOfAnotherMeansOfTransport

	| card |

	card := self cardWithoutDiscount.

	self should: [ line60 chargeTripOf: card from: constitucion to: retiroMitre on: (self on: self tuesday at: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self should: [ subwayD chargeTripOf: card boardingAt: plazaDeMayo towards: palermo on: (self on: self tuesday at: 10 minutes: 0) ] failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test21OriginAndDestinationMustBeDifferent

	| card |

	card := self cardWithoutDiscount.

	self should: [ line60 chargeTripOf: card from: plazaDeMayo to: plazaDeMayo on: (self on: self tuesday at: 10 minutes: 0) ] failWith: MeansOfTransport originAndDestinationMustBeDifferentErrorDescription.
	self should: [ mitre chargeTripOf: card boardingAt: tigre towards: tigre on: (self on: self tuesday at: 10 minutes: 0) ] failWith: MeansOfTransport originAndDestinationMustBeDifferentErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test22MeansOfTransportMustHaveAtLeastTwoStops

	self should: [ Bus withStops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ] failWith: MeansOfTransport mustHaveAtLeastTwoStopsErrorDescription.
	self should: [ Train withStops: #() fareTable: (FareTable fixed: 100 * peso) ] failWith: MeansOfTransport mustHaveAtLeastTwoStopsErrorDescription! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:10:25 am (UTC)'!
test23DirectionMustBeHeadOfLineOrLastStop

	| card |

	card := self cardWithoutDiscount.

	self should: [ subwayD chargeTripOf: card boardingAt: tribunales towards: callao on: (self on: self tuesday at: 10 minutes: 0) ] failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self should: [ mitre chargeTripOf: card boardingAt: retiroMitre towards: sanIsidro on: (self on: self tuesday at: 10 minutes: 0) ] failWith: TurnstileMeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !
