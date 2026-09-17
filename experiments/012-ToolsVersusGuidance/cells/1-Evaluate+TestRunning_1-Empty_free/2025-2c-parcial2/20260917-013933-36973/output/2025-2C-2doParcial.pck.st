'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:42:12 am'!
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

!classDefinition: #TurnstileCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #TurnstileCardReader
	instanceVariableNames: ''
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
	instanceVariableNames: 'upperLimits prices'
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
	instanceVariableNames: 'origin destination start basePrice payablePortion'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount
	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
balance
	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
lastTrip
	^trips last! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
numberOfTripsOn: aDate
	^trips count: [:aTrip | aTrip startedOn: aDate]! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
trips
	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
endLastTripAt: aStop costing: anActualBasePrice
	| previouslyCharged |
	previouslyCharged := self lastTrip charged.
	self lastTrip endAt: aStop costing: anActualBasePrice.
	balance := balance + previouslyCharged - self lastTrip charged! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payTripFrom: anOrigin to: aDestination startingAt: aDateTime costing: aBasePrice
	| trip |
	trip := Trip from: anOrigin to: aDestination startingAt: aDateTime costing: aBasePrice paying: (self payablePortionAt: aDateTime).
	self assertCanPay: trip charged.
	balance := balance - trip charged.
	trips add: trip! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
assertCanPay: aPrice
	aPrice > balance ifTrue: [self error: self class insufficientBalanceErrorDescription]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payablePortionAt: aDateTime
	^(discount payablePortionAt: aDateTime for: self) min: (self transferPayablePortionAt: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
transferPayablePortionAt: aDateTime
	^(trips notEmpty and: [self lastTrip startedWithin: self transferPeriod before: aDateTime])
		ifTrue: [1/2]
		ifFalse: [1]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:41:03 am (UTC)'!
transferPeriod
	^2 * hour! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
withBalance: aBalance discount: aDiscount
	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payablePortionAt: aDateTime for: aCard
	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payablePortionAt: aDateTime for: aCard
	^1! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
freeTripsPerDay
	^2! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payablePortionAt: aDateTime for: aCard
	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay ifTrue: [0] ifFalse: [1]! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
payablePortionAt: aDateTime for: aCard
	| day |
	day := aDateTime date day.
	^(day isSaturday or: [day isSunday]) ifTrue: [1] ifFalse: [1/2]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
initializeFor: aMeansOfTransport
	meansOfTransport := aMeansOfTransport! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
for: aMeansOfTransport
	^self new initializeFor: aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	aCard
		payTripFrom: anOrigin
		to: aDestination
		startingAt: aDateTime
		costing: (meansOfTransport priceFrom: anOrigin to: aDestination)! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime
	aCard
		payTripFrom: aStop
		to: aDirection
		startingAt: aDateTime
		costing: (meansOfTransport priceFrom: aStop towards: aDirection)! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
chargeExitOf: aCard at: aStop
	aCard endLastTripAt: aStop costing: (meansOfTransport priceFrom: aCard lastTrip origin to: aStop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
initialize
	upperLimits := OrderedCollection new.
	prices := OrderedCollection new! !

!FareTable methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
upTo: aDistance charge: aPrice
	upperLimits add: aDistance.
	prices add: aPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
priceFor: aDistance
	upperLimits withIndexDo: [:anUpperLimit :index |
		aDistance <= anUpperLimit ifTrue: [^prices at: index]].
	^self error: 'No fare defined for that distance'! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
fixed: aPrice
	^self new upTo: PlusInfinity new charge: aPrice; yourself! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
new
	^super new initialize! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable
	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
headOfLine
	^stops first! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
lastStop
	^stops last! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
priceFrom: anOrigin to: aDestination
	self assertIsValidTripFrom: anOrigin to: aDestination.
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
priceFrom: anOrigin towards: aDirection
	self assertIsDirection: aDirection.
	^self priceFrom: anOrigin to: aDirection! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
assertIncludes: aStop
	(self includes: aStop) ifFalse: [self error: self class stopNotInRouteErrorDescription]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
assertIsDirection: aStop
	(aStop = self headOfLine or: [aStop = self lastStop]) ifFalse: [self error: self class invalidDirectionErrorDescription]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination
	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [self error: self class sameOriginAndDestinationErrorDescription]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
withStops: aStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: aStops.
	^self new initializeWithStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
assertHasAtLeastTwoStops: aStops
	aStops size < 2 ifTrue: [self error: self notEnoughStopsErrorDescription]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
notEnoughStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
stopNotInRouteErrorDescription
	^'The stop does not belong to this means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine
	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
distanceToHeadOfLine
	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
distanceTo: aStop
	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:40:46 am (UTC)'!
named: aName at: aDistanceToHeadOfLine
	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingAt: aDateTime costing: aBasePrice paying: aPayablePortion
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	basePrice := aBasePrice.
	payablePortion := aPayablePortion! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
charged
	^basePrice * payablePortion! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
start
	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
startedOn: aDate
	^start date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
startedWithin: aTimeMeasure before: aDateTime
	^(start distanceTo: aDateTime) <= aTimeMeasure! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
endAt: aStop costing: anActualBasePrice
	destination := aStop.
	basePrice := anActualBasePrice! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:41:02 am (UTC)'!
from: anOrigin to: aDestination startingAt: aDateTime costing: aBasePrice paying: aPayablePortion
	^self new initializeFrom: anOrigin to: aDestination startingAt: aDateTime costing: aBasePrice paying: aPayablePortion! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable new
			upTo: 5 * kilometer charge: 600 * peso;
			upTo: 10 * kilometer charge: 1000 * peso;
			upTo: PlusInfinity new charge: 1300 * peso;
			yourself).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := MeansOfTransport
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable new
			upTo: 15 * kilometer charge: 400 * peso;
			upTo: PlusInfinity new charge: 600 * peso;
			yourself)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
assertBalanceOf: aCard decreasedBy: anAmount
	self assert: (10000 * peso) - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
cardWithoutDiscount
	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
november: aDayNumber at: anHour
	^self november: aDayNumber at: anHour minutes: 0! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinutes
	^((GregorianDayOfMonth month: November dayNumber: aDayNumber), 2025) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
retireeCard
	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error - MessageNotUnderstood withExceptionDo: [:anError |
		self assert: anErrorDescription equals: anError messageText]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:41:13 am (UTC)'!
studentCard
	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test01MeansOfTransportMustHaveAtLeastTwoStops
	self
		should: [MeansOfTransport withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso)]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test02OriginMustBelongToTheMeansOfTransport
	| card |
	card := self cardWithoutDiscount.
	self
		should: [(BusCardReader for: line60) charge: card from: tribunales to: belgrano at: (self november: 25 at: 10)]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test03DestinationMustBelongToTheMeansOfTransport
	| card |
	card := self cardWithoutDiscount.
	self
		should: [(BusCardReader for: line60) charge: card from: constitucion to: belgranoMitre at: (self november: 25 at: 10)]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test04OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWithoutDiscount.
	self
		should: [(BusCardReader for: line60) charge: card from: retiro to: retiro at: (self november: 25 at: 10)]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test05SubwayDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [(SubwayCardReader for: subwayD) charge: card boardingAt: tribunales towards: callao at: (self november: 25 at: 10)]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:36 am (UTC)'!
test06TrainDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWithoutDiscount.
	self
		should: [(TrainCardReader for: mitreTigre) charge: card boardingAt: retiroMitre towards: sanIsidro at: (self november: 25 at: 10)]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test07CanNotBoardAtTheStopOfTheDirection
	self
		should: [(SubwayCardReader for: subwayD) charge: self cardWithoutDiscount boardingAt: palermo towards: palermo at: (self november: 25 at: 10)]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test08CanNotPayWithoutEnoughBalance
	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.
	self
		should: [(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10)]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test09CanPayWithExactBalance
	| card |
	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test10BusChargesByDistanceWithoutDiscount
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self assertBalanceOf: card decreasedBy: 600 * peso.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test11BusChargesMiddleAndLastFareRanges
	| card reader |
	card := self cardWithoutDiscount.
	reader := BusCardReader for: line60.
	reader charge: card from: belgrano to: plazaDeMayo at: (self november: 25 at: 10).
	reader charge: card from: constitucion to: belgrano at: (self november: 25 at: 14).
	self assertBalanceOf: card decreasedBy: 2300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test12StudentPaysHalfOnWeekdays
	| card |
	card := self studentCard.
	(BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 24 at: 11).
	self assertBalanceOf: card decreasedBy: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test13StudentPaysFullPriceOnWeekends
	| card |
	card := self studentCard.
	(BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 23 at: 11).
	self assertBalanceOf: card decreasedBy: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test14RetireeFirstTripOfTheDayIsFree
	| card |
	card := self retireeCard.
	(SubwayCardReader for: subwayD) charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9).
	self assertBalanceOf: card decreasedBy: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test15RetireePaysFromThirdTripOfTheDay
	| card reader |
	card := self retireeCard.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12).
	reader charge: card boardingAt: callao towards: palermo at: (self november: 22 at: 15).
	self assertBalanceOf: card decreasedBy: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test16RetireeFreeTripsAreRenewedEachDay
	| card reader |
	card := self retireeCard.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 9).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 12).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 23 at: 9).
	self assertBalanceOf: card decreasedBy: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 4:41:37 am (UTC)'!
test17SubwayChargesFixedPrice
	| card reader |
	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: callao towards: palermo at: (self november: 25 at: 9).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12).
	self assertBalanceOf: card decreasedBy: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test18TrainChargesByDistanceToDirectionOnEntry
	| card |
	card := self cardWithoutDiscount.
	(TrainCardReader for: mitreTigre) charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9).
	self assertBalanceOf: card decreasedBy: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test19TrainExitRefundsDifferenceOfActualTrip
	| card reader |
	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitreTigre.
	reader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9).
	reader chargeExitOf: card at: belgranoMitre.
	self assertBalanceOf: card decreasedBy: 400 * peso.
	self assert: belgranoMitre equals: card lastTrip destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test20TrainExitKeepsDiscountOfEntry
	| card reader |
	card := self studentCard.
	reader := TrainCardReader for: mitreTigre.
	reader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 25 at: 9).
	reader chargeExitOf: card at: belgranoMitre.
	self assertBalanceOf: card decreasedBy: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test21TrainExitWithSameFareRefundsNothing
	| card reader |
	card := self cardWithoutDiscount.
	reader := TrainCardReader for: mitreTigre.
	reader charge: card boardingAt: retiroMitre towards: tigre at: (self november: 25 at: 9).
	reader chargeExitOf: card at: sanIsidro.
	self assertBalanceOf: card decreasedBy: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test22RetireeFreeTrainTripRefundsNothing
	| card reader |
	card := self retireeCard.
	reader := TrainCardReader for: mitreTigre.
	reader charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 25 at: 9).
	reader chargeExitOf: card at: belgranoMitre.
	self assertBalanceOf: card decreasedBy: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test23TripWithinTwoHoursIsATransfer
	| card |
	card := self cardWithoutDiscount.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(SubwayCardReader for: subwayD) charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).
	self assertBalanceOf: card decreasedBy: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test24TransfersHaveNoLimit
	| card reader |
	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 11).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12 minutes: 30).
	self assertBalanceOf: card decreasedBy: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test25TripAfterTwoHoursIsNotATransfer
	| card reader |
	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 12 minutes: 1).
	self assertBalanceOf: card decreasedBy: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test26TransferIsCountedFromStartOfLastTrip
	| card reader |
	card := self cardWithoutDiscount.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 11 minutes: 30).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 13 minutes: 15).
	self assertBalanceOf: card decreasedBy: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test27StudentTransferOnWeekdayIsNotCumulative
	| card reader |
	card := self studentCard.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 11).
	self assertBalanceOf: card decreasedBy: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test28StudentGetsTransferDiscountOnWeekends
	| card reader |
	card := self studentCard.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 11).
	self assertBalanceOf: card decreasedBy: 1500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:41:54 am (UTC)'!
test29RetireeGetsTransferDiscountAfterFreeTrips
	| card reader |
	card := self retireeCard.
	reader := SubwayCardReader for: subwayD.
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10).
	reader charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 10 minutes: 30).
	reader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 11).
	self assertBalanceOf: card decreasedBy: 500 * peso! !
