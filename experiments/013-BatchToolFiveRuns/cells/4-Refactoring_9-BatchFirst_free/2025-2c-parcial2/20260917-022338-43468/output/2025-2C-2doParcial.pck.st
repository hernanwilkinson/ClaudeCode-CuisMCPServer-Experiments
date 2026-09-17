'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:26:57 am'!
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

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'costsUpToDistance'
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
	instanceVariableNames: 'name stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin destination startTime costFactor amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro60 belgrano60 line60 congreso tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
lastTrip

	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
numberOfTrips

	^trips size! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :trip | trip startedOn: aDate ]! !

!BajeCard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
recharge: anAmount

	balance := balance + anAmount! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
payTripFrom: anOrigin to: aDestination costing: aFullCost at: aDateTime

	| costFactor amount |
	costFactor := (discount costFactorAt: aDateTime for: self) min: (self transferCostFactorAt: aDateTime).
	amount := aFullCost * costFactor.
	self assertCanPay: amount.
	balance := balance - amount.
	trips add: (Trip from: anOrigin to: aDestination at: aDateTime costFactor: costFactor charged: amount).
	^amount! !

!BajeCard methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
refundLastTripEndingAt: anExitStop costing: aFullCost

	| trip amount refund |
	trip := self lastTrip.
	amount := aFullCost * trip costFactor.
	refund := trip amountCharged - amount.
	balance := balance + refund.
	trip endAt: anExitStop charging: amount.
	^refund! !

!BajeCard methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ self lastTrip startedWithin: self class transferTimeLimit before: aDateTime ]! !

!BajeCard methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
transferCostFactorAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ self class transferCostFactor ]
		ifFalse: [ 1 ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
transferCostFactor

	^1/2! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!CardDiscount methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
costFactorAt: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
costFactorAt: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
costFactorAt: aDateTime for: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'free trips' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
costFactorAt: aDateTime for: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'cost - private' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.
	^day = Saturday or: [ day = Sunday ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
tap: aCard from: anOrigin to: aDestination at: aDateTime

	line assertTripFrom: anOrigin to: aDestination.
	^aCard payTripFrom: anOrigin to: aDestination costing: (line costFrom: anOrigin to: aDestination) at: aDateTime! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeAt: aStop

	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
tap: aCard towards: aDirection at: aDateTime

	line assertIsDirection: aDirection.
	line assertTripFrom: stop to: aDirection.
	^aCard payTripFrom: stop to: aDirection costing: (line costFrom: stop to: aDirection) at: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
for: aLine at: aStop

	aLine assertIncludes: aStop.
	^(self for: aLine) initializeAt: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
tapOnExit: aCard

	^aCard refundLastTripEndingAt: stop costing: (line costFrom: aCard lastTrip origin to: stop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeWithCostsUpToDistance: distanceToCostAssociations

	costsUpToDistance := distanceToCostAssociations! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
costFor: aDistance

	^(costsUpToDistance detect: [ :distanceToCost | aDistance <= distanceToCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
fixed: aCost

	^self withCostsUpToDistance: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
withCostsUpToDistance: distanceToCostAssociations

	^self new initializeWithCostsUpToDistance: distanceToCostAssociations! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeNamed: aName withStops: aStops fareTable: aFareTable

	name := aName.
	stops := aStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
head

	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
lastStop

	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
assertIsDirection: aStop

	(aStop = self head or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
assertTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
named: aName withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.
	^self new initializeNamed: aName withStops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
initializeFrom: anOrigin to: aDestination at: aDateTime costFactor: aCostFactor charged: anAmount

	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	costFactor := aCostFactor.
	amountCharged := anAmount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
amountCharged

	^amountCharged! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
costFactor

	^costFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
startedOn: aDate

	^startTime date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
startedWithin: aTimeSpan before: aDateTime

	^(startTime distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:25:52 am (UTC)'!
endAt: anExitStop charging: anAmount

	destination := anExitStop.
	amountCharged := anAmount! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:25:51 am (UTC)'!
from: anOrigin to: aDestination at: aDateTime costFactor: aCostFactor charged: anAmount

	^self new initializeFrom: anOrigin to: aDestination at: aDateTime costFactor: aCostFactor charged: anAmount! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiro60 := Stop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgrano60 := Stop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := TransportLine
		named: 'Colectivo Línea 60'
		withStops: { constitucion. plazaDeMayo. retiro60. belgrano60 }
		fareTable: (FareTable withCostsUpToDistance: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subwayD := TransportLine
		named: 'Subte Línea D'
		withStops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitre := TransportLine
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsUpToDistance: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
cardWithoutDiscount

	^BajeCard withBalance: 5000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
mondayAt: hours minutes: minutes

	^self november: (November twentyfourth, 2025) at: hours minutes: minutes! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
november: aDate at: hours minutes: minutes

	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: hours minutes: minutes)! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
retireeCard

	^BajeCard withBalance: 5000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
saturdayAt: hours minutes: minutes

	^self november: (November twentysecond, 2025) at: hours minutes: minutes! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
studentCard

	^BajeCard withBalance: 5000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
sundayAt: hours minutes: minutes

	^self november: (November twentythird, 2025) at: hours minutes: minutes! !

!ISWMetropolitanoTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
tuesdayAt: hours minutes: minutes

	^self november: (November twentyfifth, 2025) at: hours minutes: minutes! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test01BusChargesByDistanceWithoutDiscount

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:26:43 am (UTC)'!
test02BusChargesTheFareOfTheRangeTheDistanceFallsIn

	self assert: 1000 * peso equals: ((BusCardReader for: line60) tap: self cardWithoutDiscount from: retiro60 to: constitucion at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 1300 * peso equals: ((BusCardReader for: line60) tap: self cardWithoutDiscount from: constitucion to: belgrano60 at: (self tuesdayAt: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test03StudentPaysHalfFromMondayToFriday

	self assert: 650 * peso equals: ((BusCardReader for: line60) tap: self studentCard from: constitucion to: belgrano60 at: (self mondayAt: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	self assert: 1300 * peso equals: ((BusCardReader for: line60) tap: self studentCard from: constitucion to: belgrano60 at: (self saturdayAt: 11 minutes: 0)).
	self assert: 1300 * peso equals: ((BusCardReader for: line60) tap: self studentCard from: constitucion to: belgrano60 at: (self sundayAt: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card turnstile |
	card := self retireeCard.
	turnstile := Turnstile for: subwayD at: tribunales.

	self assert: 0 * peso equals: (turnstile tap: card towards: congreso at: (self saturdayAt: 9 minutes: 0)).
	self assert: 0 * peso equals: (turnstile tap: card towards: congreso at: (self saturdayAt: 12 minutes: 0)).
	self assert: 1000 * peso equals: (turnstile tap: card towards: congreso at: (self saturdayAt: 15 minutes: 0)).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test06RetireeFreeTripsAreCountedPerDay

	| card turnstile |
	card := self retireeCard.
	turnstile := Turnstile for: subwayD at: tribunales.
	turnstile tap: card towards: congreso at: (self saturdayAt: 9 minutes: 0).
	turnstile tap: card towards: congreso at: (self saturdayAt: 12 minutes: 0).

	self assert: 0 * peso equals: (turnstile tap: card towards: congreso at: (self sundayAt: 12 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test07SubwayCostIsFixed

	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: self cardWithoutDiscount towards: congreso at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: self cardWithoutDiscount towards: palermo at: (self tuesdayAt: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test08TrainChargesOnEntryByDistanceToTheDirectionAndRefundsOnExit

	| card |
	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: ((TrainTurnstile for: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self saturdayAt: 9 minutes: 0)).
	self assert: 200 * peso equals: ((TrainTurnstile for: mitre at: belgranoMitre) tapOnExit: card).
	self assert: 4600 * peso equals: card balance.
	self assert: belgranoMitre equals: card lastTrip destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test09TrainKeepsTheEntryChargeWhenNotTappedOnExit

	| card |
	card := self cardWithoutDiscount.

	(TrainTurnstile for: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self saturdayAt: 9 minutes: 0).

	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test10TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |
	card := self studentCard.

	self assert: 300 * peso equals: ((TrainTurnstile for: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self tuesdayAt: 9 minutes: 0)).
	self assert: 100 * peso equals: ((TrainTurnstile for: mitre at: belgranoMitre) tapOnExit: card).
	self assert: 4800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test11TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |
	card := self cardWithoutDiscount.

	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: card towards: palermo at: (self tuesdayAt: 10 minutes: 30)).
	self assert: 200 * peso equals: ((TrainTurnstile for: mitre at: belgranoMitre) tap: card towards: retiroMitre at: (self tuesdayAt: 12 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test12TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |
	card := self cardWithoutDiscount.

	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 1000 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: card towards: palermo at: (self tuesdayAt: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test13TransferIsNotCumulativeWithStudentDiscount

	| card |
	card := self studentCard.

	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: card towards: palermo at: (self tuesdayAt: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.

	(BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile for: subwayD at: tribunales) tap: card towards: palermo at: (self saturdayAt: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test15RetireeGetsTransferDiscountAfterTheFreeTrips

	| card turnstile |
	card := self retireeCard.
	turnstile := Turnstile for: subwayD at: tribunales.
	turnstile tap: card towards: congreso at: (self saturdayAt: 9 minutes: 0).
	turnstile tap: card towards: congreso at: (self saturdayAt: 9 minutes: 30).

	self assert: 500 * peso equals: (turnstile tap: card towards: congreso at: (self saturdayAt: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.

	self
		should: [ (BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test17CanPayAfterRecharging

	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.
	card recharge: 100 * peso.

	self assert: 600 * peso equals: ((BusCardReader for: line60) tap: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test18MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine named: 'Línea vacía' withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test19TripStopsMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ (BusCardReader for: line60) tap: card from: constitucion to: palermo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self
		should: [ (BusCardReader for: line60) tap: card from: retiroMitre to: constitucion at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test20TripOriginAndDestinationMustBeDifferent

	self
		should: [ (BusCardReader for: line60) tap: self cardWithoutDiscount from: retiro60 to: retiro60 at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self
		should: [ (Turnstile for: subwayD at: palermo) tap: self cardWithoutDiscount towards: palermo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test21TurnstileMustBeAtAStopOfTheMeansOfTransport

	self
		should: [ TrainTurnstile for: mitre at: tribunales ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:26:38 am (UTC)'!
test22DirectionMustBeTheHeadOrTheLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ (Turnstile for: subwayD at: tribunales) tap: card towards: callao at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self
		should: [ (TrainTurnstile for: mitre at: sanIsidro) tap: card towards: constitucion at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !
