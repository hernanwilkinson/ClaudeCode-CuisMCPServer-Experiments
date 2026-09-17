'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:54:29 am'!
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
	instanceVariableNames: 'costsByMaximumDistance'
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
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Stop class' category: #'2025-2C-2doParcial'!
Stop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin start payingFraction amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #BAJECardChargesTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #BAJECardChargesTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroLine60 belgranoLine60 line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'BAJECardChargesTest class' category: #'2025-2C-2doParcial-Tests'!
BAJECardChargesTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount

	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
lastTrip

	^trips last! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
adjustLastTripToCost: anActualCost

	balance := balance + (self lastTrip adjustToCost: anActualCost)! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payTripFrom: anOrigin costing: aCost on: aDateTime

	| trip |
	trip := Trip from: anOrigin startingOn: aDateTime paying: (self payingFractionOn: aDateTime) of: aCost.
	self assertCanPay: trip amountCharged.
	balance := balance - trip amountCharged.
	trips add: trip! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payingFractionOn: aDateTime

	^(discount payingFractionOn: aDateTime for: self) min: (self transferPayingFractionOn: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
transferPayingFractionOn: aDateTime

	^(self isTransferOn: aDateTime)
		ifTrue: [ self class transferPayingFraction ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
isTransferOn: aDateTime

	^trips notEmpty and: [ self lastTrip started: self class transferTimeSpan before: aDateTime ]! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
withBalance: aBalance discount: aCardDiscount

	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
transferPayingFraction

	^1/2! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
transferTimeSpan

	^2 * hour! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payingFractionOn: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payingFractionOn: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
freeTripsPerDay

	^2! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payingFractionOn: aDateTime for: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
payingFractionOn: aDateTime for: aCard

	| date |
	date := aDateTime date.
	^(date isSaturday or: [ date isSunday ])
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
initializeWithCostsUpTo: aCollectionOfMaximumDistancesToCosts

	costsByMaximumDistance := aCollectionOfMaximumDistancesToCosts! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
costFor: aDistance

	^(costsByMaximumDistance detect: [ :maximumDistanceToCost | aDistance <= maximumDistanceToCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
fixed: aCost

	^self withCostsUpTo: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
withCostsUpTo: aCollectionOfMaximumDistancesToCosts

	^self new initializeWithCostsUpTo: aCollectionOfMaximumDistancesToCosts! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.
	aCard payTripFrom: anOrigin costing: (self costFrom: anOrigin to: aDestination) on: aDateTime! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
assertIsInRoute: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIsInRoute: anOrigin.
	self assertIsInRoute: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.
	^self new initializeWithStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop is not in the route of the means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination on: aDateTime

	self charge: aCard forTripFrom: anOrigin to: aDestination on: aDateTime! !

!DirectionalMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
assertIsValidDirection: aDirection

	(aDirection = stops first or: [ aDirection = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!DirectionalMeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self assertIsValidDirection: aDirection.
	self charge: aCard forTripFrom: aStop to: aDirection on: aDateTime! !

!DirectionalMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Subway methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
chargeTripOf: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection on: aDateTime! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
chargeEntryOf: aCard at: aStop towards: aDirection on: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection on: aDateTime! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
chargeExitOf: aCard at: aStop

	self assertIsInRoute: aStop.
	aCard adjustLastTripToCost: (self costFrom: aCard lastTrip origin to: aStop)! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
initializeFrom: anOrigin startingOn: aDateTime paying: aPayingFraction of: aCost

	origin := anOrigin.
	start := aDateTime.
	payingFraction := aPayingFraction.
	amountCharged := aCost * payingFraction! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
amountCharged

	^amountCharged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
started: aTimeSpan before: aDateTime

	^(start distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
adjustToCost: anActualCost

	| refund |
	refund := amountCharged - (anActualCost * payingFraction).
	amountCharged := anActualCost * payingFraction.
	^refund! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:53:17 am (UTC)'!
from: anOrigin startingOn: aDateTime paying: aPayingFraction of: aCost

	^self new initializeFrom: anOrigin startingOn: aDateTime paying: aPayingFraction of: aCost! !

!BAJECardChargesTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroLine60 := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoLine60 := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		withStops: { constitucion. plazaDeMayo. retiroLine60. belgranoLine60 }
		fareTable: (FareTable withCostsUpTo: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

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
	mitreTrain := Train
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsUpTo: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!BAJECardChargesTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
assert: aCard isChargedWith: anAmount when: aBlock

	| previousBalance |
	previousBalance := aCard balance.
	aBlock value.
	self assert: previousBalance - anAmount equals: aCard balance! !

!BAJECardChargesTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
newCardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: 10000 * peso! !

!BAJECardChargesTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(November / aDayNumber / 2025) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!BAJECardChargesTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!BAJECardChargesTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test01BusChargesFareOfDistanceUpToFirstRange

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 600 * peso when: [
		line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test02BusChargesFareOfDistanceInMiddleRange

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 1000 * peso when: [
		line60 chargeTripOf: card from: retiroLine60 to: constitucion on: (self november: 25 at: 10 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test03BusChargesFareOfDistanceInLastRange

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 1300 * peso when: [
		line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self november: 25 at: 10 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test04StudentPaysHalfFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	self assert: card isChargedWith: 650 * peso when: [
		line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self november: 24 at: 11 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test05StudentPaysFullPriceOnWeekends

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	self assert: card isChargedWith: 1300 * peso when: [
		line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self november: 22 at: 11 minutes: 0) ].
	self assert: card isChargedWith: 1300 * peso when: [
		line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self november: 23 at: 11 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test07RetireeHasTwoFreeTripsPerDay

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	self assert: card isChargedWith: 0 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman on: (self november: 22 at: 9 minutes: 0) ].
	self assert: card isChargedWith: 0 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 15 minutes: 0) ].
	self assert: card isChargedWith: 1000 * peso when: [
		subwayD chargeTripOf: card boardingAt: callao towards: palermo on: (self november: 22 at: 20 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test08RetireeFreeTripsAreRenewedEachDay

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman on: (self november: 22 at: 9 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 15 minutes: 0).
	self assert: card isChargedWith: 0 * peso when: [
		subwayD chargeTripOf: card boardingAt: callao towards: palermo on: (self november: 23 at: 9 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test06SubwayChargesFixedFare

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 1000 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: congresoDeTucuman on: (self november: 22 at: 9 minutes: 0) ].
	self assert: card isChargedWith: 1000 * peso when: [
		subwayD chargeTripOf: card boardingAt: congresoDeTucuman towards: palermo on: (self november: 23 at: 9 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test09TrainChargesOnEntryFareOfDistanceToDirection

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 600 * peso when: [
		mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 22 at: 9 minutes: 0) ].
	self assert: card isChargedWith: 400 * peso when: [
		mitreTrain chargeEntryOf: card at: sanIsidro towards: tigre on: (self november: 23 at: 9 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test10TrainRefundsDifferenceOnExit

	| card |
	card := self newCardWithoutDiscount.
	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 22 at: 9 minutes: 0).
	self assert: card isChargedWith: -200 * peso when: [
		mitreTrain chargeExitOf: card at: belgranoMitre ]! !

!BAJECardChargesTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test11TrainKeepsEntryChargeWhenExitingAtSameFare

	| card |
	card := self newCardWithoutDiscount.
	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 22 at: 9 minutes: 0).
	self assert: card isChargedWith: 0 * peso when: [
		mitreTrain chargeExitOf: card at: retiroMitre ]! !

!BAJECardChargesTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test12TrainExitRefundKeepsDiscountAppliedOnEntry

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	self assert: card isChargedWith: 300 * peso when: [
		mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 25 at: 9 minutes: 0) ].
	self assert: card isChargedWith: -100 * peso when: [
		mitreTrain chargeExitOf: card at: belgranoMitre ]! !

!BAJECardChargesTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test13TrainExitOfFreeTripRefundsNothing

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 25 at: 9 minutes: 0).
	self assert: card isChargedWith: 0 * peso when: [
		mitreTrain chargeExitOf: card at: belgranoMitre ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test14TripWithinTwoHoursOfLastTripPaysHalf

	| card |
	card := self newCardWithoutDiscount.
	self assert: card isChargedWith: 600 * peso when: [
		line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ].
	self assert: card isChargedWith: 500 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 10 minutes: 30) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test15TransferIsMeasuredFromStartOfLastTripWithNoLimit

	| card |
	card := self newCardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 11 minutes: 30).
	self assert: card isChargedWith: 200 * peso when: [
		mitreTrain chargeEntryOf: card at: belgranoMitre towards: retiroMitre on: (self november: 25 at: 13 minutes: 30) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test16TripAfterTwoHoursOfLastTripIsNotTransfer

	| card |
	card := self newCardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	self assert: card isChargedWith: 1000 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 12 minutes: 1) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test17StudentTransferDiscountIsNotCumulativeFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	self assert: card isChargedWith: 500 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 10 minutes: 30) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test18StudentHasTransferDiscountOnWeekends

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	self assert: card isChargedWith: 600 * peso when: [
		line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 10 minutes: 0) ].
	self assert: card isChargedWith: 500 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 10 minutes: 30) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test19RetireeHasTransferDiscountAfterFreeTrips

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	self assert: card isChargedWith: 0 * peso when: [
		line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 10 minutes: 0) ].
	self assert: card isChargedWith: 0 * peso when: [
		subwayD chargeTripOf: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 10 minutes: 30) ].
	self assert: card isChargedWith: 500 * peso when: [
		subwayD chargeTripOf: card boardingAt: palermo towards: congresoDeTucuman on: (self november: 22 at: 11 minutes: 0) ]! !

!BAJECardChargesTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test20TrainExitRefundKeepsTransferDiscountAppliedOnEntry

	| card |
	card := self newCardWithoutDiscount.
	line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 8 minutes: 30).
	self assert: card isChargedWith: 300 * peso when: [
		mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 22 at: 9 minutes: 0) ].
	self assert: card isChargedWith: -100 * peso when: [
		mitreTrain chargeExitOf: card at: belgranoMitre ]! !

!BAJECardChargesTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test21CanNotPayTripWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 599 * peso.
	self
		should: [ line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test22TripNotPaidIsNotConsideredForTransfers

	| card |
	card := BAJECard withoutDiscountWithBalance: 600 * peso.
	self
		should: [ line60 chargeTripOf: card from: constitucion to: belgranoLine60 on: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: card isChargedWith: 600 * peso when: [
		line60 chargeTripOf: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 30) ]! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test23MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus withStops: { constitucion } fareTable: (FareTable fixed: 600 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test24OriginMustBeInRoute

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ line60 chargeTripOf: card from: retiroMitre to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test25DestinationMustBeInRoute

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ line60 chargeTripOf: card from: constitucion to: belgranoMitre on: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test26OriginAndDestinationMustBeDifferent

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ line60 chargeTripOf: card from: constitucion to: constitucion on: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self
		should: [ subwayD chargeTripOf: card boardingAt: palermo towards: palermo on: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test27SubwayDirectionMustBeHeadOfLineOrLastStop

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ subwayD chargeTripOf: card boardingAt: tribunales towards: callao on: (self november: 25 at: 10 minutes: 0) ]
		failWith: DirectionalMeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test28TrainDirectionMustBeHeadOfLineOrLastStop

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ mitreTrain chargeEntryOf: card at: tigre towards: sanIsidro on: (self november: 25 at: 10 minutes: 0) ]
		failWith: DirectionalMeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ mitreTrain chargeEntryOf: card at: tigre towards: palermo on: (self november: 25 at: 10 minutes: 0) ]
		failWith: DirectionalMeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test29SubwayBoardingStopMustBeInRoute

	| card |
	card := self newCardWithoutDiscount.
	self
		should: [ subwayD chargeTripOf: card boardingAt: plazaDeMayo towards: palermo on: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!BAJECardChargesTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:54:15 am (UTC)'!
test30TrainExitStopMustBeInRoute

	| card |
	card := self newCardWithoutDiscount.
	mitreTrain chargeEntryOf: card at: sanIsidro towards: retiroMitre on: (self november: 22 at: 9 minutes: 0).
	self
		should: [ mitreTrain chargeExitOf: card at: retiroLine60 ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 9400 * peso equals: card balance! !
