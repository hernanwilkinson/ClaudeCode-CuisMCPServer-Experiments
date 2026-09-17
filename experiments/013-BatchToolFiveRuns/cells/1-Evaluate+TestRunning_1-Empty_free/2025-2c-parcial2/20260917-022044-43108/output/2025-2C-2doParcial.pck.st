'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:23:25 am'!
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

!classDefinition: #BusCardReader category: #'2025-2C-2doParcial'!
Object subclass: #BusCardReader
	instanceVariableNames: 'line'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusCardReader class' category: #'2025-2C-2doParcial'!
BusCardReader class
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
	instanceVariableNames: 'ranges'
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
	instanceVariableNames: 'line origin destination start'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
Object subclass: #Turnstile
	instanceVariableNames: 'line stop'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Turnstile class' category: #'2025-2C-2doParcial'!
Turnstile class
	instanceVariableNames: ''!

!classDefinition: #SubwayTurnstile category: #'2025-2C-2doParcial'!
Turnstile subclass: #SubwayTurnstile
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayTurnstile class' category: #'2025-2C-2doParcial'!
SubwayTurnstile class
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

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'line60 constitucion plazaDeMayo retiro belgrano subteD congresoDeTucuman tribunales callao palermo mitre retiroMitre belgranoMitre sanIsidro tigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount
	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
balance
	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
trips
	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
endLastTripAt: aStop
	| lastTrip adjustedTrip |
	lastTrip := trips removeLast.
	adjustedTrip := lastTrip endingAt: aStop.
	balance := balance + (self priceFor: lastTrip) - (self priceFor: adjustedTrip).
	trips add: adjustedTrip! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
pay: aTrip
	| price |
	price := self priceFor: aTrip.
	self assertCanPay: price.
	balance := balance - price.
	trips add: aTrip! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
assertCanPay: aPrice
	aPrice > balance ifTrue: [self error: self class insufficientBalanceErrorDescription]! !

!BAJECard methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
priceFor: aTrip
	| fullPrice |
	fullPrice := aTrip fullPrice.
	^(discount priceOf: fullPrice for: aTrip after: trips) min: (self transferPriceOf: fullPrice for: aTrip)! !

!BAJECard methodsFor: 'pricing - private' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
transferPriceOf: aFullPrice for: aTrip
	^(trips notEmpty and: [aTrip isTransferFrom: trips last])
		ifTrue: [aFullPrice / 2]
		ifFalse: [aFullPrice]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
withBalance: aBalance discount: aDiscount
	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
initializeFor: aLine
	line := aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
tap: aCard from: anOrigin to: aDestination at: aDateTime
	aCard pay: (Trip on: line from: anOrigin to: aDestination startingAt: aDateTime)! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
for: aLine
	^self new initializeFor: aLine! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
priceOf: aFullPrice for: aTrip after: previousTrips
	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
priceOf: aFullPrice for: aTrip after: previousTrips
	^aFullPrice! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
priceOf: aFullPrice for: aTrip after: previousTrips
	^(previousTrips count: [:aPreviousTrip | aPreviousTrip startsOnSameDayAs: aTrip]) < self class freeTripsPerDay
		ifTrue: [aFullPrice * 0]
		ifFalse: [aFullPrice]! !

!RetireeDiscount class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
priceOf: aFullPrice for: aTrip after: previousTrips
	^aTrip startsOnWeekend
		ifTrue: [aFullPrice]
		ifFalse: [aFullPrice / 2]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
initialize
	ranges := OrderedCollection new! !

!FareTable methodsFor: 'ranges' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
upTo: aDistance charge: aPrice
	ranges add: aDistance -> aPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
priceFor: aDistance
	^(ranges detect: [:aRange | aDistance <= aRange key]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
fixed: aPrice
	^self new upTo: PlusInfinity new charge: aPrice! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
new
	^super new initialize! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
initializeNamed: aName at: aDistanceToHead
	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
distanceToHead
	^distanceToHead! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
named: aName at: aDistanceToHead
	^self new initializeNamed: aName at: aDistanceToHead! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
initializeNamed: aName stops: aStops fareTable: aFareTable
	name := aName.
	stops := aStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
name
	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
isTerminal: aStop
	^aStop == stops first or: [aStop == stops last]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
assertIsDirection: aStop
	(self isTerminal: aStop) ifFalse: [self error: self class invalidDirectionErrorDescription]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
priceFrom: anOrigin to: aDestination
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
named: aName stops: aStops fareTable: aFareTable
	self assertHasAtLeastTwo: aStops.
	^self new initializeNamed: aName stops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
assertHasAtLeastTwo: aStops
	aStops size < 2 ifTrue: [self error: self notEnoughStopsErrorDescription]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
notEnoughStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime
	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
start
	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
fullPrice
	^line priceFrom: origin to: destination! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
endingAt: aStop
	^self class on: line from: origin to: aStop startingAt: start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
isTransferFrom: aPreviousTrip
	^(aPreviousTrip start distanceTo: start) <= self class transferTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
startsOnSameDayAs: aTrip
	^start date = aTrip start date! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
startsOnWeekend
	^(Array with: Saturday with: Sunday) includes: start date day! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime
	self assert: anOrigin and: aDestination areStopsOf: aLine.
	self assertAreDifferent: anOrigin and: aDestination.
	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
assert: anOrigin and: aDestination areStopsOf: aLine
	((aLine includes: anOrigin) and: [aLine includes: aDestination])
		ifFalse: [self error: self stopsNotInLineErrorDescription]! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
assertAreDifferent: anOrigin and: aDestination
	anOrigin == aDestination ifTrue: [self error: self sameOriginAndDestinationErrorDescription]! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:22:14 am (UTC)'!
stopsNotInLineErrorDescription
	^'Origin and destination must be stops of the same means of transport'! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:22:15 am (UTC)'!
transferTime
	^2 * hour! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
initializeOn: aLine at: aStop
	line := aLine.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
tap: aCard towards: aDirection at: aDateTime
	line assertIsDirection: aDirection.
	aCard pay: (Trip on: line from: stop to: aDirection startingAt: aDateTime)! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
on: aLine at: aStop
	^self new initializeOn: aLine at: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:22:26 am (UTC)'!
tapExit: aCard
	aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
setUp
	| fareTable60 mitreFareTable |
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	fareTable60 := FareTable new.
	fareTable60 upTo: 5 * kilometer charge: 600 * peso.
	fareTable60 upTo: 10 * kilometer charge: 1000 * peso.
	fareTable60 upTo: PlusInfinity new charge: 1300 * peso.
	line60 := TransportLine named: 'Línea 60' stops: (Array with: constitucion with: plazaDeMayo with: retiro with: belgrano) fareTable: fareTable60.

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subteD := TransportLine named: 'Subte D' stops: (Array with: congresoDeTucuman with: tribunales with: callao with: palermo) fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreFareTable := FareTable new.
	mitreFareTable upTo: 15 * kilometer charge: 400 * peso.
	mitreFareTable upTo: PlusInfinity new charge: 600 * peso.
	mitre := TransportLine named: 'Mitre Retiro-Tigre' stops: (Array with: retiroMitre with: belgranoMitre with: sanIsidro with: tigre) fareTable: mitreFareTable! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
cardWithoutDiscount
	^BAJECard withBalance: self initialBalance discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
charged: aCard
	^self initialBalance - aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
initialBalance
	^10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
on: aDate hours: anHours minutes: aMinutes
	^GregorianDateTime date: aDate timeOfDay: (TimeOfDay hours: anHours minutes: aMinutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
retireeCard
	^BAJECard withBalance: self initialBalance discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
rideLine60: aCard from: anOrigin to: aDestination at: aDateTime
	(BusCardReader for: line60) tap: aCard from: anOrigin to: aDestination at: aDateTime! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
studentCard
	^BAJECard withBalance: self initialBalance discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test01BusChargesAccordingToDistanceWithoutDiscount
	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	self assert: 600 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test02BusChargesMiddleRange
	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: belgrano to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	self assert: 1000 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test03StudentPaysHalfOnWeekdays
	| card |
	card := self studentCard.
	self rideLine60: card from: constitucion to: belgrano at: (self on: November/24/2025 hours: 11 minutes: 0).
	self assert: 650 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test04StudentPaysFullPriceOnWeekends
	| card |
	card := self studentCard.
	self rideLine60: card from: constitucion to: belgrano at: (self on: November/23/2025 hours: 11 minutes: 0).
	self assert: 1300 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree
	| card |
	card := self retireeCard.
	(SubwayTurnstile on: subteD at: tribunales) tap: card towards: congresoDeTucuman at: (self on: November/22/2025 hours: 9 minutes: 0).
	self assert: 0 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test06RetireePaysFromTheThirdTripOfTheDay
	| card turnstile |
	card := self retireeCard.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 9 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 13 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 17 minutes: 0).
	self assert: 1000 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test07RetireeFreeTripsRestartEachDay
	| card turnstile |
	card := self retireeCard.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 9 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 13 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/23/2025 hours: 9 minutes: 0).
	self assert: 0 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test08SubwayDirectionMustBeATerminal
	| card |
	card := self cardWithoutDiscount.
	self should: [(SubwayTurnstile on: subteD at: tribunales) tap: card towards: callao at: (self on: November/22/2025 hours: 9 minutes: 0)]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 0 * peso equals: (self charged: card).
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test09TrainChargesAccordingToDistanceToDirection
	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstile on: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self on: November/22/2025 hours: 9 minutes: 0).
	self assert: 600 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test10TrainExitRefundsTheDifference
	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstile on: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self on: November/22/2025 hours: 9 minutes: 0).
	(TrainTurnstile on: mitre at: belgranoMitre) tapExit: card.
	self assert: 400 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test11TrainExitAppliesDiscounts
	| card |
	card := self studentCard.
	(TrainTurnstile on: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self on: November/24/2025 hours: 9 minutes: 0).
	self assert: 300 * peso equals: (self charged: card).
	(TrainTurnstile on: mitre at: belgranoMitre) tapExit: card.
	self assert: 200 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test12TrainExitDoesNotCountAsANewTrip
	| card |
	card := self retireeCard.
	(TrainTurnstile on: mitre at: sanIsidro) tap: card towards: retiroMitre at: (self on: November/22/2025 hours: 9 minutes: 0).
	(TrainTurnstile on: mitre at: belgranoMitre) tapExit: card.
	(TrainTurnstile on: mitre at: sanIsidro) tap: card towards: tigre at: (self on: November/22/2025 hours: 18 minutes: 0).
	self assert: 0 * peso equals: (self charged: card).
	self assert: 2 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test13TripWithinTwoHoursPaysHalf
	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	(SubwayTurnstile on: subteD at: tribunales) tap: card towards: palermo at: (self on: November/25/2025 hours: 10 minutes: 30).
	self assert: 1100 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test14TripAfterTwoHoursIsNotATransfer
	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	(SubwayTurnstile on: subteD at: tribunales) tap: card towards: palermo at: (self on: November/25/2025 hours: 12 minutes: 1).
	self assert: 1600 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test15TransfersAreMeasuredFromTheStartOfTheLastTrip
	| card turnstile |
	card := self cardWithoutDiscount.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/25/2025 hours: 10 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/25/2025 hours: 11 minutes: 30).
	turnstile tap: card towards: palermo at: (self on: November/25/2025 hours: 13 minutes: 0).
	self assert: 2000 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test16StudentDiscountIsNotCumulativeWithTransfersOnWeekdays
	| card turnstile |
	card := self studentCard.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/25/2025 hours: 10 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/25/2025 hours: 10 minutes: 30).
	self assert: 1000 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test17StudentGetsTransferDiscountOnWeekends
	| card turnstile |
	card := self studentCard.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 10 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 10 minutes: 30).
	self assert: 1500 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test18RetireeGetsTransferDiscountAfterFreeTrips
	| card turnstile |
	card := self retireeCard.
	turnstile := SubwayTurnstile on: subteD at: tribunales.
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 10 minutes: 0).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 10 minutes: 30).
	turnstile tap: card towards: palermo at: (self on: November/22/2025 hours: 11 minutes: 0).
	self assert: 500 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:23:12 am (UTC)'!
test26TripExactlyTwoHoursLaterIsATransfer
	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	(SubwayTurnstile on: subteD at: tribunales) tap: card towards: palermo at: (self on: November/25/2025 hours: 12 minutes: 0).
	self assert: 1100 * peso equals: (self charged: card)! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test19CanNotPayWithoutEnoughBalance
	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.
	self should: [self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0)]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test20CanPayWithExactBalance
	| card |
	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	self rideLine60: card from: constitucion to: plazaDeMayo at: (self on: November/25/2025 hours: 10 minutes: 0).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test21StopsMustBelongToTheMeansOfTransport
	| card |
	card := self cardWithoutDiscount.
	self should: [self rideLine60: card from: constitucion to: palermo at: (self on: November/25/2025 hours: 10 minutes: 0)]
		failWith: Trip stopsNotInLineErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test22OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWithoutDiscount.
	self should: [self rideLine60: card from: retiro to: retiro at: (self on: November/25/2025 hours: 10 minutes: 0)]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test23TurnstileAtTerminalCanNotGoTowardsItself
	| card |
	card := self cardWithoutDiscount.
	self should: [(TrainTurnstile on: mitre at: tigre) tap: card towards: tigre at: (self on: November/25/2025 hours: 10 minutes: 0)]
		failWith: Trip sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test24MeansOfTransportMustHaveAtLeastTwoStops
	self should: [TransportLine named: 'Vacía' stops: (Array with: constitucion) fareTable: (FareTable fixed: 100 * peso)]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:23:06 am (UTC)'!
test25TrainDirectionMustBeATerminal
	self should: [(TrainTurnstile on: mitre at: tigre) tap: self cardWithoutDiscount towards: sanIsidro at: (self on: November/25/2025 hours: 10 minutes: 0)]
		failWith: TransportLine invalidDirectionErrorDescription! !
