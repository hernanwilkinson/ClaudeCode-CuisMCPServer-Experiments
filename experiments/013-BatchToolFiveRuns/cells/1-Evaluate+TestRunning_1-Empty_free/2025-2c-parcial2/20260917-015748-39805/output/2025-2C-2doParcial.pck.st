'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:00:40 am'!
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
	instanceVariableNames: 'fares'
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

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #Train
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
	instanceVariableNames: 'origin destination startTime amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congreso tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
initializeWith: aDiscount balance: anAmount

	discount := aDiscount.
	balance := anAmount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
lastTrip

	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
load: anAmount

	balance := balance + anAmount! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
adjustLastTripEndingAt: aDestination costing: aFullPrice

	| trip cost |
	trip := trips removeLast.
	cost := self costOf: aFullPrice at: trip startTime after: trips.
	balance := balance + trip amountCharged - cost.
	trips add: (Trip from: trip origin to: aDestination startingAt: trip startTime charged: cost)! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
payTripFrom: anOrigin to: aDestination costing: aFullPrice at: aDateTime

	| cost |
	cost := self costOf: aFullPrice at: aDateTime after: trips.
	self assertCanPay: cost.
	balance := balance - cost.
	trips add: (Trip from: anOrigin to: aDestination startingAt: aDateTime charged: cost)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
costOf: aFullPrice at: aDateTime after: previousTrips

	| discountedPrice |
	discountedPrice := discount priceOf: aFullPrice at: aDateTime after: previousTrips.
	^(self isTransferAt: aDateTime after: previousTrips)
		ifTrue: [ discountedPrice min: aFullPrice / 2 ]
		ifFalse: [ discountedPrice ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
isTransferAt: aDateTime after: previousTrips

	^previousTrips notEmpty and: [ previousTrips last startedWithinTransferTimeOf: aDateTime ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
with: aDiscount balance: anAmount

	^self new initializeWith: aDiscount balance: anAmount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
priceOf: aFullPrice at: aDateTime after: previousTrips

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
priceOf: aFullPrice at: aDateTime after: previousTrips

	^aFullPrice! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
priceOf: aFullPrice at: aDateTime after: previousTrips

	^(previousTrips count: [:aTrip | aTrip startedOn: aDateTime date ]) < self freeTripsPerDay
		ifTrue: [ aFullPrice * 0 ]
		ifFalse: [ aFullPrice ]! !

!RetireeDiscount methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
priceOf: aFullPrice at: aDateTime after: previousTrips

	^(self isWeekend: aDateTime date) ifTrue: [ aFullPrice ] ifFalse: [ aFullPrice / 2 ]! !

!StudentDiscount methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
isWeekend: aDate

	^aDate day isSaturday or: [ aDate day isSunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
initialize

	fares := OrderedCollection new! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
priceFor: aDistance

	^(fares detect: [:aFare | aDistance <= aFare key ]) value! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
upTo: aDistance charge: aPrice

	fares add: aDistance -> aPrice! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
fixed: aPrice

	^self new upTo: PlusInfinity new charge: aPrice! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
initializeWithStops: aStopCollection fareTable: aFareTable

	stops := aStopCollection asOrderedCollection copy.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'route' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
endOfRoute

	^stops last! !

!MeansOfTransport methodsFor: 'route' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
headOfLine

	^stops first! !

!MeansOfTransport methodsFor: 'route' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
includesStop: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
assertIsDirection: aStop

	(aStop = self headOfLine or: [ aStop = self endOfRoute ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
assertIsStopOfRoute: aStop

	(self includesStop: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
assertTripFrom: anOrigin to: aDestination

	self assertIsStopOfRoute: anOrigin.
	self assertIsStopOfRoute: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self assertIsDirection: aDirection.
	self charge: aCard from: aStop to: aDirection at: aDateTime! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	self assertTripFrom: anOrigin to: aDestination.
	aCard payTripFrom: anOrigin to: aDestination costing: (self fareFrom: anOrigin to: aDestination) at: aDateTime! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
withStops: aStopCollection fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStopCollection.
	^self new initializeWithStops: aStopCollection fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
assertHasAtLeastTwoStops: aStopCollection

	aStopCollection size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the end of the route'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop does not belong to this means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
tap: aCard from: anOrigin to: aDestination at: aDateTime

	self charge: aCard from: anOrigin to: aDestination at: aDateTime! !

!Subway methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
tap: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection at: aDateTime! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
tapOnEntry: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection at: aDateTime! !

!Train methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
tapOnExit: aCard at: aStop

	| origin |
	origin := aCard lastTrip origin.
	self assertTripFrom: origin to: aStop.
	aCard adjustLastTripEndingAt: aStop costing: (self fareFrom: origin to: aStop)! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
initializeNamed: aName distanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:59:25 am (UTC)'!
named: aName distanceToHeadOfLine: aDistance

	^self new initializeNamed: aName distanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingAt: aDateTime charged: anAmount

	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	amountCharged := anAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
amountCharged

	^amountCharged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
startedOn: aDate

	^startTime date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
startedWithinTransferTimeOf: aDateTime

	^(startTime distanceTo: aDateTime) <= self transferTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
transferTime

	^2 * hour! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:59:39 am (UTC)'!
from: anOrigin to: aDestination startingAt: aDateTime charged: anAmount

	^self new initializeFrom: anOrigin to: aDestination startingAt: aDateTime charged: anAmount! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' distanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' distanceToHeadOfLine: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' distanceToHeadOfLine: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' distanceToHeadOfLine: 12 * kilometer.
	line60 := Bus
		withStops: (Array with: constitucion with: plazaDeMayo with: retiroBus with: belgranoBus)
		fareTable: (FareTable new
			upTo: 5 * kilometer charge: 600 * peso;
			upTo: 10 * kilometer charge: 1000 * peso;
			upTo: PlusInfinity new charge: 1300 * peso;
			yourself).

	congreso := Stop named: 'Congreso de Tucumán' distanceToHeadOfLine: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' distanceToHeadOfLine: 1.2 * kilometer.
	callao := Stop named: 'Callao' distanceToHeadOfLine: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' distanceToHeadOfLine: 6 * kilometer.
	subwayD := Subway
		withStops: (Array with: congreso with: tribunales with: callao with: palermo)
		fareTable: (FareTable fixed: 1000 * peso).

	retiroTrain := Stop named: 'Retiro' distanceToHeadOfLine: 0 * kilometer.
	belgranoTrain := Stop named: 'Belgrano' distanceToHeadOfLine: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' distanceToHeadOfLine: 18 * kilometer.
	tigre := Stop named: 'Tigre' distanceToHeadOfLine: 28 * kilometer.
	mitre := Train
		withStops: (Array with: retiroTrain with: belgranoTrain with: sanIsidro with: tigre)
		fareTable: (FareTable new
			upTo: 15 * kilometer charge: 400 * peso;
			upTo: PlusInfinity new charge: 600 * peso;
			yourself)! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
cardWith: aDiscount

	^BajeCard with: aDiscount balance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
on: aDate at: anHour minutes: aMinute

	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
saturdayAt: anHour minutes: aMinute

	^self on: (November twentysecond, 2025) at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
tuesdayAt: anHour minutes: aMinute

	^self on: (November twentyfifth, 2025) at: anHour minutes: aMinute! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
assert: aCard wasCharged: anAmount

	self assert: (10000 * peso) - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test01BusChargesFullPriceWithoutDiscount

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test02BusChargeDependsOnDistance

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: belgranoBus to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |
	card := self cardWith: StudentDiscount new.
	line60 tap: card from: constitucion to: belgranoBus at: (self on: (November twentyfourth, 2025) at: 11 minutes: 0).
	self assert: card wasCharged: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.
	line60 tap: card from: constitucion to: belgranoBus at: (self saturdayAt: 11 minutes: 0).
	line60 tap: card from: constitucion to: belgranoBus at: (self on: (November twentythird, 2025) at: 18 minutes: 0).
	self assert: card wasCharged: 2600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test05SubwayChargesFixedPrice

	| card |
	card := self cardWith: NoDiscount new.
	subwayD tap: card boardingAt: callao towards: palermo at: (self tuesdayAt: 10 minutes: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test06RetireeHasTwoFreeTripsPerDay

	| card |
	card := self cardWith: RetireeDiscount new.
	subwayD tap: card boardingAt: tribunales towards: congreso at: (self saturdayAt: 9 minutes: 0).
	subwayD tap: card boardingAt: congreso towards: palermo at: (self saturdayAt: 12 minutes: 0).
	self assert: card wasCharged: 0 * peso.
	subwayD tap: card boardingAt: palermo towards: congreso at: (self saturdayAt: 15 minutes: 0).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test07RetireeFreeTripsAreRenewedEachDay

	| card |
	card := self cardWith: RetireeDiscount new.
	subwayD tap: card boardingAt: tribunales towards: congreso at: (self saturdayAt: 9 minutes: 0).
	subwayD tap: card boardingAt: congreso towards: palermo at: (self saturdayAt: 12 minutes: 0).
	subwayD tap: card boardingAt: palermo towards: congreso at: (self on: (November twentythird, 2025) at: 9 minutes: 0).
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test08TrainChargesOnEntryUpToTheDirectionTerminal

	| card |
	card := self cardWith: NoDiscount new.
	mitre tapOnEntry: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test09TrainRefundsDifferenceOnExit

	| card |
	card := self cardWith: NoDiscount new.
	mitre tapOnEntry: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0).
	mitre tapOnExit: card at: belgranoTrain.
	self assert: card wasCharged: 400 * peso.
	self assert: belgranoTrain equals: card lastTrip destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test10TrainExitRefundKeepsTheCardDiscount

	| card |
	card := self cardWith: StudentDiscount new.
	mitre tapOnEntry: card boardingAt: belgranoTrain towards: tigre at: (self tuesdayAt: 9 minutes: 0).
	mitre tapOnExit: card at: sanIsidro.
	self assert: card wasCharged: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test11TrainExitRefundKeepsTheTransferDiscount

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	mitre tapOnEntry: card boardingAt: sanIsidro towards: retiroTrain at: (self tuesdayAt: 11 minutes: 0).
	mitre tapOnExit: card at: belgranoTrain.
	self assert: card wasCharged: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:00:04 am (UTC)'!
test12RetireeFreeTrainTripIsNotRefunded

	| card |
	card := self cardWith: RetireeDiscount new.
	mitre tapOnEntry: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0).
	mitre tapOnExit: card at: belgranoTrain.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test13TripWithinTwoHoursIsATransferAndPaysHalf

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	subwayD tap: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30).
	self assert: card wasCharged: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test14TripAfterTwoHoursIsNotATransfer

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	subwayD tap: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 12 minutes: 1).
	self assert: card wasCharged: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test15TransfersAreUnlimitedAndCountFromTheLastTrip

	| card |
	card := self cardWith: NoDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	subwayD tap: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 11 minutes: 30).
	subwayD tap: card boardingAt: palermo towards: congreso at: (self tuesdayAt: 13 minutes: 0).
	self assert: card wasCharged: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test16StudentDiscountIsNotCumulativeWithTransfers

	| card |
	card := self cardWith: StudentDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	subwayD tap: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30).
	self assert: card wasCharged: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test17StudentGetsTransferDiscountOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0).
	subwayD tap: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 10 minutes: 30).
	self assert: card wasCharged: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test18RetireeFreeTripsAreNotAffectedByTransfers

	| card |
	card := self cardWith: RetireeDiscount new.
	subwayD tap: card boardingAt: tribunales towards: congreso at: (self saturdayAt: 9 minutes: 0).
	subwayD tap: card boardingAt: congreso towards: palermo at: (self saturdayAt: 9 minutes: 30).
	self assert: card wasCharged: 0 * peso.
	subwayD tap: card boardingAt: palermo towards: congreso at: (self saturdayAt: 10 minutes: 0).
	self assert: card wasCharged: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test19CanNotPayWithoutEnoughBalance

	| card |
	card := BajeCard with: NoDiscount new balance: 599 * peso.
	self
		should: [ line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test20CanPayWithExactBalance

	| card |
	card := BajeCard with: NoDiscount new balance: 0 * peso.
	card load: 600 * peso.
	line60 tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test21MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus withStops: (Array with: constitucion) fareTable: (FareTable fixed: 100 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test22OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ line60 tap: card from: plazaDeMayo to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self
		should: [ subwayD tap: card boardingAt: palermo towards: palermo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test23StopsMustBelongToTheMeansOfTransport

	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ line60 tap: card from: constitucion to: retiroTrain at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self
		should: [ line60 tap: card from: retiroTrain to: constitucion at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self
		should: [ subwayD tap: card boardingAt: plazaDeMayo towards: palermo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test24SubwayDirectionMustBeHeadOfLineOrEndOfRoute

	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ subwayD tap: card boardingAt: tribunales towards: callao at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:23 am (UTC)'!
test25TrainDirectionMustBeHeadOfLineOrEndOfRoute

	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ mitre tapOnEntry: card boardingAt: tigre towards: belgranoTrain at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ mitre tapOnEntry: card boardingAt: tigre towards: retiroBus at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !
