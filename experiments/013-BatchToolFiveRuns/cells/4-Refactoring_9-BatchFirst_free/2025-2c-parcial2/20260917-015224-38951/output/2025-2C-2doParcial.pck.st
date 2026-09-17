'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:55:49 am'!
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
	instanceVariableNames: 'ranges'
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
	instanceVariableNames: 'line origin destination start fullCost discountFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subteD retiroMitre belgranoMitre sanIsidro tigre mitreTigre busReader subwayReader trainReader'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
lastTrip

	^trips last! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
adjustLastTripEndingAt: aStop costing: aFullCost

	| trip previouslyCharged |
	trip := self lastTrip.
	previouslyCharged := trip charged.
	trip endAt: aStop costing: aFullCost.

	balance := balance + previouslyCharged - trip charged! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination startingOn: aDateTime costing: aFullCost

	| trip |
	trip := Trip
		on: aLine
		from: anOrigin
		to: aDestination
		startingOn: aDateTime
		costing: aFullCost
		withDiscountFactor: (discount factorForTripStartingOn: aDateTime of: self).
	self assertCanPay: trip charged.

	balance := balance - trip charged.
	trips add: trip! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ self lastTrip startedWithin: self class transferTimeSpan before: aDateTime ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
transferTimeSpan

	^2 * hour! !

!CardDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
factorForTripStartingOn: aDateTime of: aCard

	self subclassResponsibility! !

!CardDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
transferFactorForTripStartingOn: aDateTime of: aCard

	^(aCard isTransferAt: aDateTime)
		ifTrue: [ 1/2 ]
		ifFalse: [ 1 ]! !

!NoDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
factorForTripStartingOn: aDateTime of: aCard

	^self transferFactorForTripStartingOn: aDateTime of: aCard! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
factorForTripStartingOn: aDateTime of: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ self transferFactorForTripStartingOn: aDateTime of: aCard ]! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
factorForTripStartingOn: aDateTime of: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ self transferFactorForTripStartingOn: aDateTime of: aCard ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeOn: aLine

	line := aLine! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self assertIsValidDirection: aDirection.

	self charge: aCard from: aStop to: aDirection on: aDateTime! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime

	aCard
		payTripOn: line
		from: anOrigin
		to: aDestination
		startingOn: aDateTime
		costing: (line costFrom: anOrigin to: aDestination)! !

!CardReader methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
assertIsValidDirection: aDirection

	(line isTerminal: aDirection) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
on: aLine

	^self new initializeOn: aLine! !

!CardReader class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
tap: aCard from: anOrigin to: aDestination on: aDateTime

	self charge: aCard from: anOrigin to: aDestination on: aDateTime! !

!SubwayCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
tap: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection on: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
tapEntry: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self charge: aCard boardingAt: aStop towards: aDirection on: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
tapExit: aCard gettingOffAt: aStop

	aCard adjustLastTripEndingAt: aStop costing: (line costFrom: aCard lastTrip origin to: aStop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeWithRanges: distanceLimitsToPrices

	ranges := distanceLimitsToPrices! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
costFor: aDistance

	^(ranges detect: [ :aDistanceLimitToPrice | aDistance <= aDistanceLimitToPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
fixed: aPrice

	^self withRanges: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
withRanges: distanceLimitsToPrices

	^self new initializeWithRanges: distanceLimitsToPrices! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeNamed: aName stops: aStops fareTable: aFareTable

	name := aName.
	stops := aStops asOrderedCollection.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
headOfLine

	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
lastStop

	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
isTerminal: aStop

	^aStop = self headOfLine or: [ aStop = self lastStop ]! !

!TransportLine methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
costFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
named: aName stops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.

	^self new initializeNamed: aName stops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingOn: aDateTime costing: aFullCost withDiscountFactor: aDiscountFactor

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	fullCost := aFullCost.
	discountFactor := aDiscountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
charged

	^fullCost * discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
line

	^line! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
startedWithin: aTimeSpan before: aDateTime

	^(start distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
endAt: aStop costing: aFullCost

	destination := aStop.
	fullCost := aFullCost! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:54:44 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingOn: aDateTime costing: aFullCost withDiscountFactor: aDiscountFactor

	^self new initializeOn: aLine from: anOrigin to: aDestination startingOn: aDateTime costing: aFullCost withDiscountFactor: aDiscountFactor! !

!TransportSystemTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := TransportLine
		named: 'Colectivo Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withRanges: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subteD := TransportLine
		named: 'Subte Línea D'
		stops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := TransportLine
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withRanges: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) }).

	busReader := BusCardReader on: line60.
	subwayReader := SubwayCardReader on: subteD.
	trainReader := TrainCardReader on: mitreTigre! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
cardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: 10000 * peso! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
chargeOn: aCard of: aTapBlock

	| balanceBeforeTap |
	balanceBeforeTap := aCard balance.
	aTapBlock value.
	^balanceBeforeTap - aCard balance! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
on: aDate at: hours minutes: minutes

	^aDate at: (TimeOfDay hours: hours minutes: minutes)! !

!TransportSystemTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test01BusChargesTheFareForTheDistanceTravelled

	| card |
	card := self cardWithoutDiscount.

	self
		assert: 600 * peso
		equals: (self chargeOn: card of: [
			busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test02BusChargesTheFareOfTheRangeTheDistanceFallsIn

	| card |
	card := self cardWithoutDiscount.

	self
		assert: 1000 * peso
		equals: (self chargeOn: card of: [
			busReader tap: card from: constitucion to: retiro on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]).
	self
		assert: 1300 * peso
		equals: (self chargeOn: card of: [
			busReader tap: card from: belgrano to: constitucion on: (self on: (November twentysixth, 2025) at: 10 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test03SubwayChargesAFixedFare

	| card |
	card := self cardWithoutDiscount.

	self
		assert: 1000 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: callao towards: palermo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test04TrainEntryChargesTheFareToTheDirection

	| card |
	card := self cardWithoutDiscount.

	self
		assert: 600 * peso
		equals: (self chargeOn: card of: [
			trainReader tapEntry: card boardingAt: sanIsidro towards: retiroMitre on: (self on: (November twentysecond, 2025) at: 9 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test05TrainExitRefundsTheDifferenceOfTheActualTrip

	| card |
	card := self cardWithoutDiscount.
	trainReader tapEntry: card boardingAt: sanIsidro towards: retiroMitre on: (self on: (November twentysecond, 2025) at: 9 minutes: 0).

	self
		assert: -200 * peso
		equals: (self chargeOn: card of: [ trainReader tapExit: card gettingOffAt: belgranoMitre ]).
	self assert: 400 * peso equals: 10000 * peso - card balance.
	self assert: belgranoMitre equals: card lastTrip destination! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test06TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	trainReader tapEntry: card boardingAt: sanIsidro towards: retiroMitre on: (self on: (November twentyfifth, 2025) at: 9 minutes: 0).

	self
		assert: -100 * peso
		equals: (self chargeOn: card of: [ trainReader tapExit: card gettingOffAt: belgranoMitre ]).
	self assert: 200 * peso equals: 10000 * peso - card balance! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test07StudentPaysHalfFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.

	self
		assert: 650 * peso
		equals: (self chargeOn: card of: [
			busReader tap: card from: constitucion to: belgrano on: (self on: (November twentyfourth, 2025) at: 11 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test08StudentPaysFullPriceOnWeekends

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.

	self
		assert: 1300 * peso
		equals: (self chargeOn: card of: [
			busReader tap: card from: constitucion to: belgrano on: (self on: (November twentythird, 2025) at: 11 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test09RetireeHasTwoFreeTripsPerDay

	| card saturday |
	card := BAJECard retireeWithBalance: 10000 * peso.
	saturday := November twentysecond, 2025.

	self
		assert: 0 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: congreso on: (self on: saturday at: 9 minutes: 0) ]).
	self
		assert: 0 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: congreso towards: palermo on: (self on: saturday at: 15 minutes: 0) ]).
	self
		assert: 1000 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: palermo towards: congreso on: (self on: saturday at: 20 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test10RetireeFreeTripsAreCountedPerDay

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	subwayReader tap: card boardingAt: tribunales towards: congreso on: (self on: (November twentysecond, 2025) at: 9 minutes: 0).
	subwayReader tap: card boardingAt: congreso towards: palermo on: (self on: (November twentysecond, 2025) at: 15 minutes: 0).

	self
		assert: 0 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: palermo towards: congreso on: (self on: (November twentythird, 2025) at: 9 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test11TripWithinTwoHoursOfTheLastOneIsATransferAndPaysHalf

	| card |
	card := self cardWithoutDiscount.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0).

	self
		assert: 500 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 30) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test12TripMoreThanTwoHoursAfterTheLastOneIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0).

	self
		assert: 1000 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentyfifth, 2025) at: 12 minutes: 1) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test13TransfersHaveNoLimitAndCountFromTheStartOfTheLastTrip

	| card |
	card := self cardWithoutDiscount.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0).
	subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentyfifth, 2025) at: 11 minutes: 30).

	self
		assert: 300 * peso
		equals: (self chargeOn: card of: [
			trainReader tapEntry: card boardingAt: sanIsidro towards: retiroMitre on: (self on: (November twentyfifth, 2025) at: 13 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test14StudentDoesNotAccumulateTransferDiscountFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0).

	self
		assert: 500 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 30) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test15StudentGetsTransferDiscountOnWeekends

	| card |
	card := BAJECard studentWithBalance: 10000 * peso.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentysecond, 2025) at: 10 minutes: 0).

	self
		assert: 500 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentysecond, 2025) at: 10 minutes: 30) ])! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test16RetireeGetsTransferDiscountOnceTheFreeTripsAreUsed

	| card |
	card := BAJECard retireeWithBalance: 10000 * peso.
	busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0).
	busReader tap: card from: plazaDeMayo to: constitucion on: (self on: (November twentyfifth, 2025) at: 10 minutes: 30).

	self
		assert: 500 * peso
		equals: (self chargeOn: card of: [
			subwayReader tap: card boardingAt: tribunales towards: palermo on: (self on: (November twentyfifth, 2025) at: 11 minutes: 0) ])! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test17CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 500 * peso.

	self
		should: [ busReader tap: card from: constitucion to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test18OriginMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ busReader tap: card from: retiroMitre to: plazaDeMayo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test19DestinationMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ busReader tap: card from: constitucion to: belgranoMitre on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test20OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayReader tap: card boardingAt: palermo towards: palermo on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test21MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine named: 'Línea vacía' stops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test22SubwayDirectionMustBeTheHeadOfTheLineOrTheLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ subwayReader tap: card boardingAt: tribunales towards: callao on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: CardReader invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !

!TransportSystemTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:55:34 am (UTC)'!
test23TrainDirectionMustBeTheHeadOfTheLineOrTheLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ trainReader tapEntry: card boardingAt: retiroMitre towards: sanIsidro on: (self on: (November twentyfifth, 2025) at: 10 minutes: 0) ]
		failWith: CardReader invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !
