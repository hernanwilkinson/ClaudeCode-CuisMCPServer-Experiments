'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:23:06 am'!
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

!classDefinition: #TurnstileCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #TurnstileCardReader
	instanceVariableNames: 'stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileCardReader class' category: #'2025-2C-2doParcial'!
TurnstileCardReader class
	instanceVariableNames: ''!

!classDefinition: #SubwayCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #SubwayCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayCardReader class' category: #'2025-2C-2doParcial'!
SubwayCardReader class
	instanceVariableNames: ''!

!classDefinition: #TrainCardReader category: #'2025-2C-2doParcial'!
TurnstileCardReader subclass: #TrainCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainCardReader class' category: #'2025-2C-2doParcial'!
TrainCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'faresByMaximumDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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

!classDefinition: #TransportLine category: #'2025-2C-2doParcial'!
Object subclass: #TransportLine
	instanceVariableNames: 'name stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin startTime fareRatio chargedAmount'
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


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount
	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
balance
	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
lastTrip
	^trips last! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
numberOfTrips
	^trips size! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
numberOfTripsOnTheSameDayAs: aDateTime
	^trips count: [ :aTrip | aTrip startedTheSameDayAs: aDateTime ]! !

!BAJECard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
load: anAmount
	balance := balance + anAmount! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
adjustLastTripToFare: anActualFare
	"Answers the amount refunded"
	| trip amountToCharge refund |
	trip := self lastTrip.
	amountToCharge := trip amountToChargeFor: anActualFare.
	refund := trip chargedAmount - amountToCharge.
	self debit: refund negated.
	trip adjustChargedAmountTo: amountToCharge.
	^refund! !

!BAJECard methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
payTripFrom: anOrigin withFare: aFare on: aDateTime
	| fareRatio amountToCharge |
	fareRatio := discount fareRatioOn: aDateTime for: self.
	amountToCharge := aFare * fareRatio.
	self debit: amountToCharge.
	trips add: (Trip from: anOrigin startingOn: aDateTime withFareRatio: fareRatio charging: amountToCharge).
	^amountToCharge! !

!BAJECard methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
debit: anAmount
	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - anAmount! !

!BAJECard methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
fareRatioWithTransferOn: aDateTime
	^(self isTransferOn: aDateTime)
		ifTrue: [ self class transferFareRatio ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
isTransferOn: aDateTime
	^trips notEmpty and: [ self lastTrip startedWithin: self class transferPeriod before: aDateTime ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
retireeWithBalance: aBalance
	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
studentWithBalance: aBalance
	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
withBalance: aBalance discount: aDiscount
	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
withoutDiscountWithBalance: aBalance
	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
transferFareRatio
	^1/2! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
transferPeriod
	^2 * hour! !

!CardDiscount methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
fareRatioOn: aDateTime for: aCard
	self subclassResponsibility! !

!NoDiscount methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
fareRatioOn: aDateTime for: aCard
	^aCard fareRatioWithTransferOn: aDateTime! !

!RetireeDiscount methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
fareRatioOn: aDateTime for: aCard
	^(aCard numberOfTripsOnTheSameDayAs: aDateTime) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard fareRatioWithTransferOn: aDateTime ]! !

!RetireeDiscount class methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
fareRatioOn: aDateTime for: aCard
	^(self isWeekend: aDateTime)
		ifTrue: [ aCard fareRatioWithTransferOn: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
isWeekend: aDateTime
	| day |
	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
initializeFor: aLine
	line := aLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
for: aLine
	^self new initializeFor: aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime
	^aCard payTripFrom: anOrigin withFare: (line fareFrom: anOrigin to: aDestination) on: aDateTime! !

!TurnstileCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
initializeAt: aStop
	stop := aStop! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
charge: aCard towards: aDirection on: aDateTime
	line assertIsDirection: aDirection.
	^aCard payTripFrom: stop withFare: (line fareFrom: stop to: aDirection) on: aDateTime! !

!TurnstileCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
for: aLine at: aStop
	aLine assertIncludesStop: aStop.
	^(self for: aLine) initializeAt: aStop! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:05 am (UTC)'!
chargeExitOf: aCard
	"Answers the amount refunded"
	^aCard adjustLastTripToFare: (line fareFrom: aCard lastTrip origin to: stop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
initializeWithFaresUpTo: maximumDistancesToFares
	faresByMaximumDistance := maximumDistancesToFares asSortedCollection: [ :aFare :anotherFare | aFare key <= anotherFare key ]! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
fareFor: aDistance
	^(faresByMaximumDistance detect: [ :aFare | aDistance <= aFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
withFaresUpTo: maximumDistancesToFares
	"maximumDistancesToFares is a collection of associations maximumDistance -> fare"
	^self new initializeWithFaresUpTo: maximumDistancesToFares! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
withFixedFare: aFare
	^self withFaresUpTo: { PlusInfinity new -> aFare }! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine
	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
distanceToHeadOfLine
	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
distanceTo: aStop
	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
named: aName at: aDistanceToHeadOfLine
	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
initializeNamed: aName withStops: aSequenceOfStops fareTable: aFareTable
	name := aName.
	stops := aSequenceOfStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
headOfLine
	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
lastStop
	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
name
	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
includesStop: aStop
	^stops includes: aStop! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
assertIncludesStop: aStop
	(self includesStop: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
assertIsDirection: aStop
	(aStop = self headOfLine or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination
	self assertIncludesStop: anOrigin.
	self assertIncludesStop: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!TransportLine methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
fareFrom: anOrigin to: aDestination
	self assertIsValidTripFrom: anOrigin to: aDestination.
	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
named: aName withStops: aSequenceOfStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: aSequenceOfStops.
	^self new initializeNamed: aName withStops: aSequenceOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
assertHasAtLeastTwoStops: aSequenceOfStops
	aSequenceOfStops size < 2 ifTrue: [ self error: self lineMustHaveAtLeastTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
lineMustHaveAtLeastTwoStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription
	^'Origin and destination stops must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:21:39 am (UTC)'!
stopNotInLineErrorDescription
	^'The stop does not belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
initializeFrom: anOrigin startingOn: aDateTime withFareRatio: aFareRatio charging: anAmount
	origin := anOrigin.
	startTime := aDateTime.
	fareRatio := aFareRatio.
	chargedAmount := anAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
chargedAmount
	^chargedAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
startTime
	^startTime! !

!Trip methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
adjustChargedAmountTo: anAmount
	chargedAmount := anAmount! !

!Trip methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
amountToChargeFor: aFare
	^aFare * fareRatio! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
startedTheSameDayAs: aDateTime
	^startTime sameDayAs: aDateTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
startedWithin: aTimeMeasure before: aDateTime
	^(startTime distanceTo: aDateTime) <= aTimeMeasure! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:22:00 am (UTC)'!
from: anOrigin startingOn: aDateTime withFareRatio: aFareRatio charging: anAmount
	^self new initializeFrom: anOrigin startingOn: aDateTime withFareRatio: aFareRatio charging: anAmount! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitucion' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := TransportLine
		named: 'Linea 60'
		withStops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withFaresUpTo: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucuman' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subteD := TransportLine
		named: 'Subte D'
		withStops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable withFixedFare: 1000 * peso).

	retiroTren := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoTren := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := TransportLine
		named: 'Mitre Retiro-Tigre'
		withStops: { retiroTren. belgranoTren. sanIsidro. tigre }
		fareTable: (FareTable withFaresUpTo: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
bus
	^BusCardReader for: line60! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:22:51 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute
	^GregorianDateTime
		date: (GregorianDayOfMonth month: November dayNumber: aDayNumber) , 2025
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
subwayAt: aStop
	^SubwayCardReader for: subteD at: aStop! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
trainAt: aStop
	^TrainCardReader for: mitre at: aStop! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test01BusChargesFareForDistanceWithoutDiscount
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self assert: 600 * peso equals: (self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test02BusFareDependsOnDistanceRange
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self assert: 1000 * peso equals: (self bus charge: card from: plazaDeMayo to: belgranoBus on: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: (self bus charge: card from: belgranoBus to: constitucion on: (self november: 26 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test03SubwayChargesFixedFare
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self assert: 1000 * peso equals: ((self subwayAt: callao) charge: card towards: palermo on: (self november: 25 at: 10 minutes: 0)).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test04TrainChargesOnEntryByDistanceToDirection
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self assert: 600 * peso equals: ((self trainAt: sanIsidro) charge: card towards: retiroTren on: (self november: 22 at: 9 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test05TrainRefundsDifferenceOnExit
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	(self trainAt: sanIsidro) charge: card towards: retiroTren on: (self november: 22 at: 9 minutes: 0).
	self assert: 200 * peso equals: ((self trainAt: belgranoTren) chargeExitOf: card).
	self assert: 4600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - no discount' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test06TrainKeepsEntryChargeWhenExitIsNotTapped
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	(self trainAt: sanIsidro) charge: card towards: retiroTren on: (self november: 22 at: 9 minutes: 0).
	self assert: 600 * peso equals: (self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 12 minutes: 0)).
	self assert: 3800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test07StudentPaysHalfOnWeekdays
	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	self assert: 650 * peso equals: (self bus charge: card from: constitucion to: belgranoBus on: (self november: 24 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test08StudentPaysFullPriceOnWeekends
	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	self assert: 1300 * peso equals: (self bus charge: card from: constitucion to: belgranoBus on: (self november: 23 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test09StudentDoesNotAccumulateTransferDiscountOnWeekdays
	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	self assert: 500 * peso equals: ((self subwayAt: tribunales) charge: card towards: palermo on: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test10StudentGetsTransferDiscountOnWeekends
	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 10 minutes: 0).
	self assert: 500 * peso equals: ((self subwayAt: tribunales) charge: card towards: palermo on: (self november: 22 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - student' stamp: 'HAW 17/Sep/2026, 4:22:42 am (UTC)'!
test11StudentTrainRefundKeepsDiscount
	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	self assert: 300 * peso equals: ((self trainAt: sanIsidro) charge: card towards: retiroTren on: (self november: 24 at: 9 minutes: 0)).
	self assert: 100 * peso equals: ((self trainAt: belgranoTren) chargeExitOf: card).
	self assert: 4800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test12RetireeFirstTripsOfTheDayAreFree
	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	self assert: 0 * peso equals: ((self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: (self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 15 minutes: 0)).
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test13RetireePaysFullPriceAfterTwoTripsInTheDay
	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	(self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 9 minutes: 0).
	self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 12 minutes: 0).
	self assert: 1000 * peso equals: ((self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 18 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test14RetireeFreeTripsRestartEachDay
	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	(self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 9 minutes: 0).
	(self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 12 minutes: 0).
	self assert: 0 * peso equals: ((self subwayAt: tribunales) charge: card towards: congreso on: (self november: 23 at: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - retiree' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test15RetireeGetsTransferDiscountOnPaidTrips
	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	(self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 9 minutes: 0).
	(self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 9 minutes: 30).
	self assert: 500 * peso equals: ((self subwayAt: tribunales) charge: card towards: congreso on: (self november: 22 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test16TripWithinTwoHoursOfLastTripIsATransfer
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self assert: 600 * peso equals: (self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((self subwayAt: tribunales) charge: card towards: palermo on: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test17TransfersHaveNoLimitAndCountFromTheLastTrip
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	self assert: 500 * peso equals: ((self subwayAt: tribunales) charge: card towards: palermo on: (self november: 25 at: 11 minutes: 30)).
	self assert: 300 * peso equals: (self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 13 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test18TripAfterTwoHoursOfLastTripIsNotATransfer
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0).
	self assert: 1000 * peso equals: ((self subwayAt: tribunales) charge: card towards: palermo on: (self november: 25 at: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test19CanNotPayWithoutEnoughBalance
	| card |
	card := BAJECard withoutDiscountWithBalance: 500 * peso.
	self should: [ self bus charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ] failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test20OriginAndDestinationMustBelongToTheLine
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self should: [ self bus charge: card from: constitucion to: palermo on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine stopNotInLineErrorDescription.
	self should: [ self bus charge: card from: retiroTren to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test21OriginAndDestinationMustBeDifferent
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self should: [ self bus charge: card from: plazaDeMayo to: plazaDeMayo on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription.
	self should: [ (self subwayAt: palermo) charge: card towards: palermo on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test22LineMustHaveAtLeastTwoStops
	self
		should: [ TransportLine named: 'Invalid' withStops: { constitucion } fareTable: (FareTable withFixedFare: 100 * peso) ]
		failWith: TransportLine lineMustHaveAtLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test23SubwayDirectionMustBeHeadOrLastStop
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self should: [ (self subwayAt: tribunales) charge: card towards: callao on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test24TrainDirectionMustBeHeadOrLastStop
	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	self should: [ (self trainAt: belgranoTren) charge: card towards: sanIsidro on: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:22:43 am (UTC)'!
test25TurnstileStopMustBelongToTheLine
	self should: [ self subwayAt: retiroTren ] failWith: TransportLine stopNotInLineErrorDescription.
	self should: [ self trainAt: palermo ] failWith: TransportLine stopNotInLineErrorDescription! !
