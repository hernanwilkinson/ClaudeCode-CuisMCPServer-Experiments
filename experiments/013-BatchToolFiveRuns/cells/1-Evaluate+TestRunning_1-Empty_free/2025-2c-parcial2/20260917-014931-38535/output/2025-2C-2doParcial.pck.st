'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:52:10 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance trips discount'
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

!classDefinition: #TurnstileCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #TurnstileCardReader
	instanceVariableNames: 'stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileCardReader class' category: #'2025-2C-2doParcial'!
TurnstileCardReader class
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

!classDefinition: #TrainExitCardReader category: #'2025-2C-2doParcial'!
Object subclass: #TrainExitCardReader
	instanceVariableNames: 'stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainExitCardReader class' category: #'2025-2C-2doParcial'!
TrainExitCardReader class
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

!classDefinition: #TransportStop category: #'2025-2C-2doParcial'!
Object subclass: #TransportStop
	instanceVariableNames: 'name distanceToHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'line origin destination start payRatio'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congreso tribunales callao palermo subteD retiro belgrano sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount
	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
numberOfTripsOn: aDate
	^trips count: [:aTrip | aTrip startedOn: aDate ]! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
trips
	^trips copy! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
endLastTripAt: aStop
	| refund |
	refund := trips last endAt: aStop.
	balance := balance + refund.
	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payRatioForTripStartingAt: aDateTime
	^discount payRatioForTripStartingAt: aDateTime of: self ifNotApplicable: [ self transferPayRatioAt: aDateTime ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination at: aDateTime
	| trip |
	trip := Trip on: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: (self payRatioForTripStartingAt: aDateTime).
	self assertCanPay: trip cost.
	balance := balance - trip cost.
	trips add: trip.
	^trip! !

!BajeCard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
isTransferAt: aDateTime
	^trips notEmpty and: [ trips last isWithin: self class transferTimeSpan before: aDateTime ]! !

!BajeCard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
transferPayRatioAt: aDateTime
	^(self isTransferAt: aDateTime) ifTrue: [ self class transferPayRatio ] ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
assertCanPay: aCost
	balance < aCost ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
retireeWithBalance: aBalance
	^self withBalance: aBalance discount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
studentWithBalance: aBalance
	^self withBalance: aBalance discount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
withBalance: aBalance discount: aDiscount
	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
withoutDiscountWithBalance: aBalance
	^self withBalance: aBalance discount: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance to pay the trip'! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
transferPayRatio
	^1/2! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
transferTimeSpan
	^2 * hour! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payRatioForTripStartingAt: aDateTime of: aCard ifNotApplicable: aBlock
	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payRatioForTripStartingAt: aDateTime of: aCard ifNotApplicable: aBlock
	^aBlock value! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payRatioForTripStartingAt: aDateTime of: aCard ifNotApplicable: aBlock
	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ aBlock value ]! !

!RetireeDiscount methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
payRatioForTripStartingAt: aDateTime of: aCard ifNotApplicable: aBlock
	| day |
	day := aDateTime date day.
	^(day isSaturday or: [ day isSunday ]) ifTrue: [ aBlock value ] ifFalse: [ 1/2 ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
initializeFor: aLine
	line := aLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
for: aLine
	^self new initializeFor: aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	^aCard payTripOn: line from: anOrigin to: aDestination at: aDateTime! !

!TurnstileCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
initializeAt: aStop
	stop := aStop! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime
	line assertIsDirection: aDirection.
	^aCard payTripOn: line from: stop to: aDirection at: aDateTime! !

!TurnstileCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
for: aLine at: aStop
	aLine assertIncludes: aStop.
	^(self for: aLine) initializeAt: aStop! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
initialize
	fares := OrderedCollection new! !

!FareTable methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
beyondCharge: aPrice
	self upTo: PlusInfinity new charge: aPrice! !

!FareTable methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
upTo: aDistance charge: aPrice
	fares add: aDistance -> aPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
priceFor: aDistance
	^(fares detect: [:aFare | aDistance <= aFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
fixed: aPrice
	^self new beyondCharge: aPrice; yourself! !

!TrainExitCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
initializeAt: aStop
	stop := aStop! !

!TrainExitCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
registerExitOf: aCard
	^aCard endLastTripAt: stop! !

!TrainExitCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
at: aStop
	^self new initializeAt: aStop! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
initializeNamed: aName stops: aStops fareTable: aFareTable
	name := aName.
	stops := aStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
name
	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:50:47 am (UTC)'!
isTerminal: aStop
	^aStop == stops first or: [ aStop == stops last ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:50:47 am (UTC)'!
assertIncludes: aStop
	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:50:47 am (UTC)'!
assertIsDirection: aStop
	(self isTerminal: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:50:47 am (UTC)'!
costFrom: anOrigin to: aDestination
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:50:47 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
named: aName stops: aStops fareTable: aFareTable
	self assertHasAtLeastTwo: aStops.
	^self new initializeNamed: aName stops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
assertHasAtLeastTwo: aStops
	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
notEnoughStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
stopNotInLineErrorDescription
	^'The stop does not belong to the means of transport'! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance
	name := aName.
	distanceToHead := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
distanceToHead
	^distanceToHead! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
name
	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:50:46 am (UTC)'!
named: aName atDistanceToHead: aDistance
	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio
	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	payRatio := aRatio! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
line
	^line! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
start
	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
cost
	^(line costFrom: origin to: destination) * payRatio! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
isWithin: aTimeSpan before: aDateTime
	^(start distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
startedOn: aDate
	^start date = aDate! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
endAt: aStop
	"Changes the destination to where the trip actually ended and answers the amount to refund"
	| chargedCost |
	self class assertOn: line from: origin to: aStop.
	chargedCost := self cost.
	destination := aStop.
	^chargedCost - self cost! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio
	self assertOn: aLine from: anOrigin to: aDestination.
	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
assertOn: aLine from: anOrigin to: aDestination
	aLine assertIncludes: anOrigin.
	aLine assertIncludes: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self sameOriginAndDestinationErrorDescription ]! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:51:07 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'The origin and destination of a trip must be different'! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
setUp
	| fareTable |
	constitucion := TransportStop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiroBus := TransportStop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgranoBus := TransportStop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	fareTable := FareTable new.
	fareTable upTo: 5 * kilometer charge: 600 * peso; upTo: 10 * kilometer charge: 1000 * peso; beyondCharge: 1300 * peso.
	line60 := TransportLine named: 'Línea 60' stops: { constitucion. plazaDeMayo. retiroBus. belgranoBus } fareTable: fareTable.

	congreso := TransportStop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' atDistanceToHead: 1.2 * kilometer.
	callao := TransportStop named: 'Callao' atDistanceToHead: 2.5 * kilometer.
	palermo := TransportStop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subteD := TransportLine named: 'Subte D' stops: { congreso. tribunales. callao. palermo } fareTable: (FareTable fixed: 1000 * peso).

	retiro := TransportStop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgrano := TransportStop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	fareTable := FareTable new.
	fareTable upTo: 15 * kilometer charge: 400 * peso; beyondCharge: 600 * peso.
	mitre := TransportLine named: 'Mitre Retiro-Tigre' stops: { retiro. belgrano. sanIsidro. tigre } fareTable: fareTable! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
on: aDate at: anHour
	^self on: aDate at: anHour minutes: 0! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
on: aDate at: anHour minutes: aMinutes
	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: anHour minutes: aMinutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error - MessageNotUnderstood withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test01BusChargesFullPriceWithoutDiscount
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test02BusChargeDependsOnDistance
	| card reader |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	reader := BusCardReader for: line60.
	reader charge: card from: plazaDeMayo to: belgranoBus at: (self on: November/25/2025 at: 10).
	self assert: 4000 * peso equals: card balance.
	reader charge: card from: belgranoBus to: constitucion at: (self on: November/26/2025 at: 10).
	self assert: 2700 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test03StudentPaysHalfOnWeekdays
	| card |
	card := BajeCard studentWithBalance: 5000 * peso.
	(BusCardReader for: line60) charge: card from: constitucion to: belgranoBus at: (self on: November/24/2025 at: 11).
	self assert: 4350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test04StudentPaysFullPriceOnWeekends
	| card |
	card := BajeCard studentWithBalance: 5000 * peso.
	(BusCardReader for: line60) charge: card from: constitucion to: belgranoBus at: (self on: November/22/2025 at: 11).
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/23/2025 at: 11).
	self assert: 3100 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree
	| card |
	card := BajeCard retireeWithBalance: 5000 * peso.
	(TurnstileCardReader for: subteD at: tribunales) charge: card towards: congreso at: (self on: November/22/2025 at: 9).
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test06RetireePaysFromTheThirdTripOfTheDayAndGetsFreeTripsAgainNextDay
	| card reader |
	card := BajeCard retireeWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: congreso at: (self on: November/22/2025 at: 9).
	reader charge: card towards: congreso at: (self on: November/22/2025 at: 12).
	reader charge: card towards: congreso at: (self on: November/22/2025 at: 15).
	self assert: 4000 * peso equals: card balance.
	reader charge: card towards: palermo at: (self on: November/23/2025 at: 9).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test07SubwayCostIsFixed
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(TurnstileCardReader for: subteD at: tribunales) charge: card towards: palermo at: (self on: November/22/2025 at: 9).
	(TurnstileCardReader for: subteD at: callao) charge: card towards: palermo at: (self on: November/23/2025 at: 9).
	self assert: 3000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test08TrainChargesByDistanceToDirection
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: retiro at: (self on: November/22/2025 at: 9).
	self assert: 4400 * peso equals: card balance.
	(TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: tigre at: (self on: November/23/2025 at: 9).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test09TrainExitRefundsDifference
	| card refund |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: retiro at: (self on: November/22/2025 at: 9).
	refund := (TrainExitCardReader at: belgrano) registerExitOf: card.
	self assert: 200 * peso equals: refund.
	self assert: 4600 * peso equals: card balance.
	self assert: belgrano equals: card trips last destination! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test10TrainExitRefundKeepsTheDiscountOfTheEntry
	| card |
	card := BajeCard studentWithBalance: 5000 * peso.
	(TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: retiro at: (self on: November/24/2025 at: 9).
	self assert: 4700 * peso equals: card balance.
	(TrainExitCardReader at: belgrano) registerExitOf: card.
	self assert: 4800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test11TrainWithoutExitKeepsEntryCharge
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: retiro at: (self on: November/22/2025 at: 9).
	self assert: 4400 * peso equals: card balance.
	self assert: retiro equals: card trips last destination! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test12TripWithinTwoHoursIsTransferAndPaysHalf
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).
	(TurnstileCardReader for: subteD at: tribunales) charge: card towards: palermo at: (self on: November/25/2025 at: 10 minutes: 30).
	self assert: 3900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test13TransfersHaveNoLimitAndCountFromLastTripStart
	| card reader |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 11 minutes: 30).
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 13).
	self assert: 3000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test14TripAfterTwoHoursIsNotTransfer
	| card reader |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 12 minutes: 1).
	self assert: 3000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test15StudentDiscountIsNotCumulativeWithTransfer
	| card reader |
	card := BajeCard studentWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 10 minutes: 30).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test16StudentGetsTransferDiscountOnWeekends
	| card reader |
	card := BajeCard studentWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/22/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/22/2025 at: 10 minutes: 30).
	self assert: 3500 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test17RetireeGetsTransferDiscountAfterFreeTrips
	| card reader |
	card := BajeCard retireeWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/22/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/22/2025 at: 10 minutes: 10).
	reader charge: card towards: palermo at: (self on: November/22/2025 at: 10 minutes: 20).
	self assert: 4500 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test18CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withoutDiscountWithBalance: 500 * peso.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test19CanPayWithExactBalance
	| card |
	card := BajeCard withoutDiscountWithBalance: 600 * peso.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 at: 10).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test20OriginAndDestinationMustBeInTheSameLine
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: palermo at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self
		should: [ (BusCardReader for: line60) charge: card from: tribunales to: plazaDeMayo at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 5000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test21StopsWithSameNameInDifferentLinesAreDifferent
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	self
		should: [ (BusCardReader for: line60) charge: card from: retiro to: plazaDeMayo at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test22OriginAndDestinationMustBeDifferent
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: constitucion at: (self on: November/25/2025 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self
		should: [ (TurnstileCardReader for: subteD at: congreso) charge: card towards: congreso at: (self on: November/25/2025 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test23LineMustHaveAtLeastTwoStops
	self
		should: [ TransportLine named: 'Línea X' stops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription.
	self
		should: [ TransportLine named: 'Línea X' stops: #() fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test24DirectionMustBeHeadOrLastStop
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	self
		should: [ (TurnstileCardReader for: subteD at: tribunales) charge: card towards: callao at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self
		should: [ (TurnstileCardReader for: mitre at: sanIsidro) charge: card towards: belgrano at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test25TurnstileStopMustBelongToLine
	self
		should: [ TurnstileCardReader for: subteD at: sanIsidro ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:50 am (UTC)'!
test26DirectionMustBelongToLine
	| card |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	self
		should: [ (TurnstileCardReader for: subteD at: tribunales) charge: card towards: retiro at: (self on: November/25/2025 at: 10) ]
		failWith: TransportLine invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:51:55 am (UTC)'!
test27TripExactlyTwoHoursAfterIsTransfer
	| card reader |
	card := BajeCard withoutDiscountWithBalance: 5000 * peso.
	reader := TurnstileCardReader for: subteD at: tribunales.
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 10).
	reader charge: card towards: palermo at: (self on: November/25/2025 at: 12).
	self assert: 3500 * peso equals: card balance! !
