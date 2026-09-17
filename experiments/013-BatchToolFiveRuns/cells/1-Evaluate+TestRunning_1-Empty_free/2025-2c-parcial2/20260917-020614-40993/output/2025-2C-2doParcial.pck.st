'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:08:54 am'!
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

!classDefinition: #SubwayCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #SubwayCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayCardReader class' category: #'2025-2C-2doParcial'!
SubwayCardReader class
	instanceVariableNames: ''!

!classDefinition: #TrainCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #TrainCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainCardReader class' category: #'2025-2C-2doParcial'!
TrainCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'upperLimitsAndPrices'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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

!classDefinition: #TransportLine category: #'2025-2C-2doParcial'!
Object subclass: #TransportLine
	instanceVariableNames: 'stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin destination start fullPrice discountFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congreso tribunales callao palermo subteD retiroTren belgranoTren sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount

	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
numberOfTripsOnSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedOnSameDayAs: aDateTime ]! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
endLastTripAt: aStop withFullPrice: aFullPrice

	| trip previousPrice |
	trip := trips last.
	previousPrice := trip price.
	trip endAt: aStop withFullPrice: aFullPrice.
	balance := balance + previousPrice - trip price.
	^previousPrice - trip price! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
payTripFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice

	| trip |
	trip := Trip from: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice discountFactor: (self discountFactorAt: aDateTime).
	self assertCanPay: trip price.
	balance := balance - trip price.
	trips add: trip.
	^trip price! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
assertCanPay: aPrice

	aPrice > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
discountFactorAt: aDateTime

	^(discount factorFor: self at: aDateTime) min: (self transferFactorAt: aDateTime)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedWithin: self transferTimeLimit of: aDateTime ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
transferFactorAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
withBalance: aBalance discount: aCardDiscount

	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardDiscount methodsFor: 'discount factor' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
factorFor: aCard at: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'discount factor' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
factorFor: aCard at: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'discount factor' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
factorFor: aCard at: aDateTime

	^(aCard numberOfTripsOnSameDayAs: aDateTime) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'discount factor' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discount factor' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
factorFor: aCard at: aDateTime

	| day |
	day := aDateTime date day.
	^(day isSaturday or: [ day isSunday ]) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
initializeFor: aTransportLine

	line := aTransportLine! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	line assertIsDirection: aDirection.
	^self charge: aCard from: aStop to: aDirection at: aDateTime! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: (line fareFrom: anOrigin to: aDestination)! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
for: aTransportLine

	^self new initializeFor: aTransportLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
tap: aCard from: anOrigin to: aDestination at: aDateTime

	^self charge: aCard from: anOrigin to: aDestination at: aDateTime! !

!SubwayCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
tap: aCard boardingAt: aStop towards: aDirection at: aDateTime

	^self charge: aCard boardingAt: aStop towards: aDirection at: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
tapEntry: aCard boardingAt: aStop towards: aDirection at: aDateTime

	^self charge: aCard boardingAt: aStop towards: aDirection at: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
tapExit: aCard gettingOffAt: aStop at: aDateTime

	^aCard endLastTripAt: aStop withFullPrice: (line fareFrom: aCard trips last origin to: aStop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
initializeWithUpperLimitsAndPrices: aCollectionOfAssociations

	upperLimitsAndPrices := aCollectionOfAssociations asSortedCollection: [ :aRange :anotherRange | aRange key <= anotherRange key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
priceFor: aDistance

	^(upperLimitsAndPrices detect: [ :aRange | aDistance <= aRange key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
fixed: aPrice

	^self withUpperLimitsAndPrices: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
withUpperLimitsAndPrices: aCollectionOfAssociations

	^self new initializeWithUpperLimitsAndPrices: aCollectionOfAssociations! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
initializeWithStops: aCollectionOfStops fareTable: aFareTable

	stops := aCollectionOfStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
fareFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
assertIsDirection: aStop

	(self isDirection: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
isDirection: aStop

	^aStop = stops first or: [ aStop = stops last ]! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
withStops: aCollectionOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aCollectionOfStops.
	^self new initializeWithStops: aCollectionOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
assertHasAtLeastTwoStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:07:31 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: aPrice discountFactor: aFactor

	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	fullPrice := aPrice.
	discountFactor := aFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
price

	^fullPrice * discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
startedOnSameDayAs: aDateTime

	^start sameDayAs: aDateTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
startedWithin: aTimeMeasure of: aDateTime

	^(start distanceTo: aDateTime) <= aTimeMeasure! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
endAt: aStop withFullPrice: aPrice

	destination := aStop.
	fullPrice := aPrice! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:07:58 am (UTC)'!
from: anOrigin to: aDestination startingAt: aDateTime fullPrice: aPrice discountFactor: aFactor

	^self new initializeFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: aPrice discountFactor: aFactor! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := TransportLine
		withStops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withUpperLimitsAndPrices: {
			5 * kilometer -> (600 * peso).
			10 * kilometer -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHead: 6/5 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHead: 5/2 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subteD := TransportLine
		withStops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroTren := Stop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoTren := Stop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitre := TransportLine
		withStops: { retiroTren. belgranoTren. sanIsidro. tigre }
		fareTable: (FareTable withUpperLimitsAndPrices: {
			15 * kilometer -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
assert: aBlock failsWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
cardWithoutDiscount

	^BajeCard withoutDiscountWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(November / aDayNumber / 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
retireeCard

	^BajeCard retireeWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
studentCard

	^BajeCard studentWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test01BusChargesAccordingToDistanceWithoutDiscount

	| card |
	card := self cardWithoutDiscount.
	self assert: 600 * peso equals: ((BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test02BusUsesUpperRangesOfFareTable

	| reader |
	reader := BusCardReader for: line60.
	self assert: 1000 * peso equals: (reader tap: self cardWithoutDiscount from: constitucion to: retiroBus at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: (reader tap: self cardWithoutDiscount from: constitucion to: belgranoBus at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1000 * peso equals: (reader tap: self cardWithoutDiscount from: belgranoBus to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	self assert: 650 * peso equals: ((BusCardReader for: line60) tap: self studentCard from: constitucion to: belgranoBus at: (self november: 24 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: ((BusCardReader for: line60) tap: self studentCard from: constitucion to: belgranoBus at: (self november: 23 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree

	| card |
	card := self retireeCard.
	self assert: 0 * peso equals: ((SubwayCardReader for: subteD) tap: card boardingAt: tribunales towards: congreso at: (self november: 22 at: 9 minutes: 0)).
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test06RetireePaysFullPriceFromThirdTripOfTheDay

	| card reader |
	card := self retireeCard.
	reader := SubwayCardReader for: subteD.
	reader tap: card boardingAt: tribunales towards: congreso at: (self november: 22 at: 9 minutes: 0).
	self assert: 0 * peso equals: (reader tap: card boardingAt: callao towards: palermo at: (self november: 22 at: 12 minutes: 0)).
	self assert: 1000 * peso equals: (reader tap: card boardingAt: palermo towards: congreso at: (self november: 22 at: 18 minutes: 0)).
	self assert: 0 * peso equals: (reader tap: card boardingAt: palermo towards: congreso at: (self november: 23 at: 18 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test07SubwayPriceIsFixed

	self assert: 1000 * peso equals: ((SubwayCardReader for: subteD) tap: self cardWithoutDiscount boardingAt: callao towards: palermo at: (self november: 22 at: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test08SubwayDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.
	self
		assert: [ (SubwayCardReader for: subteD) tap: card boardingAt: tribunales towards: callao at: (self november: 22 at: 9 minutes: 0) ]
		failsWith: TransportLine invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test09TrainChargesToDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.
	self assert: 600 * peso equals: ((TrainCardReader for: mitre) tapEntry: card boardingAt: sanIsidro towards: retiroTren at: (self november: 22 at: 9 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test10TrainRefundsDifferenceOnExit

	| card reader |
	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader tapEntry: card boardingAt: sanIsidro towards: retiroTren at: (self november: 22 at: 9 minutes: 0).
	self assert: 200 * peso equals: (reader tapExit: card gettingOffAt: belgranoTren at: (self november: 22 at: 9 minutes: 30)).
	self assert: 9600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test11TrainRefundKeepsDiscountAppliedOnEntry

	| card reader |
	card := self studentCard.
	reader := TrainCardReader for: mitre.
	self assert: 300 * peso equals: (reader tapEntry: card boardingAt: sanIsidro towards: retiroTren at: (self november: 25 at: 9 minutes: 0)).
	self assert: 100 * peso equals: (reader tapExit: card gettingOffAt: belgranoTren at: (self november: 25 at: 9 minutes: 30)).
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test12TrainExitAtDirectionStopRefundsNothing

	| card reader |
	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitre.
	reader tapEntry: card boardingAt: belgranoTren towards: tigre at: (self november: 22 at: 9 minutes: 0).
	self assert: 0 * peso equals: (reader tapExit: card gettingOffAt: tigre at: (self november: 22 at: 9 minutes: 40)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test13TripWithinTwoHoursIsATransfer

	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assert: 500 * peso equals: ((SubwayCardReader for: subteD) tap: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test14TransfersAreCountedFromStartOfLastTrip

	| card subway |
	card := self cardWithoutDiscount.
	subway := SubwayCardReader for: subteD.
	subway tap: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 0).
	self assert: 500 * peso equals: (subway tap: card boardingAt: palermo towards: congreso at: (self november: 25 at: 12 minutes: 0)).
	self assert: 500 * peso equals: (subway tap: card boardingAt: callao towards: congreso at: (self november: 25 at: 13 minutes: 59)).
	self assert: 1000 * peso equals: (subway tap: card boardingAt: callao towards: palermo at: (self november: 25 at: 16 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test15StudentDiscountIsNotCumulativeWithTransfers

	| card subway |
	card := self studentCard.
	subway := SubwayCardReader for: subteD.
	self assert: 500 * peso equals: (subway tap: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (subway tap: card boardingAt: palermo towards: congreso at: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test16StudentGetsTransferDiscountOnWeekends

	| card subway |
	card := self studentCard.
	subway := SubwayCardReader for: subteD.
	self assert: 1000 * peso equals: (subway tap: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 0)).
	self assert: 500 * peso equals: (subway tap: card boardingAt: palermo towards: congreso at: (self november: 22 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test17RetireeGetsTransferDiscountAfterFreeTrips

	| card subway |
	card := self retireeCard.
	subway := SubwayCardReader for: subteD.
	subway tap: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 0).
	self assert: 0 * peso equals: (subway tap: card boardingAt: palermo towards: congreso at: (self november: 22 at: 10 minutes: 30)).
	self assert: 500 * peso equals: (subway tap: card boardingAt: callao towards: congreso at: (self november: 22 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test18CanNotPayWithoutEnoughBalance

	| card |
	card := BajeCard withoutDiscountWithBalance: 599 * peso.
	self
		assert: [ (BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failsWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test19CanPayWithExactBalance

	| card |
	card := BajeCard withoutDiscountWithBalance: 600 * peso.
	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test20OriginAndDestinationMustBeDifferent

	self
		assert: [ (BusCardReader for: line60) tap: self cardWithoutDiscount from: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failsWith: TransportLine sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test21StopsMustBelongToTheMeansOfTransport

	self
		assert: [ (BusCardReader for: line60) tap: self cardWithoutDiscount from: constitucion to: belgranoTren at: (self november: 25 at: 10 minutes: 0) ]
		failsWith: TransportLine stopNotInLineErrorDescription.
	self
		assert: [ (TrainCardReader for: mitre) tapEntry: self cardWithoutDiscount boardingAt: retiroBus towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failsWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test22MeansOfTransportMustHaveAtLeastTwoStops

	self
		assert: [ TransportLine withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failsWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:08:38 am (UTC)'!
test23TrainDirectionMustBeHeadOrLastStop

	self
		assert: [ (TrainCardReader for: mitre) tapEntry: self cardWithoutDiscount boardingAt: retiroTren towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ]
		failsWith: TransportLine invalidDirectionErrorDescription! !
