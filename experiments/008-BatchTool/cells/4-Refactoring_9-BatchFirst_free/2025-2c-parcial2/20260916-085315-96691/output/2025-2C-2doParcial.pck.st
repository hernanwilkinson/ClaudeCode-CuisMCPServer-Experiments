'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:56:05 am'!
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
	instanceVariableNames: 'costsUpToDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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

!classDefinition: #TransportStop category: #'2025-2C-2doParcial'!
Object subclass: #TransportStop
	instanceVariableNames: 'name distanceFromHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'line origin destination startDateTime priceFactor cost'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subteD retiroMitre belgranoMitre sanIsidro tigre mitreTigre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
numberOfTripsOnSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedOnSameDayAs: aDateTime ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
endLastTripAt: aStop

	| refund |
	refund := trips last endAt: aStop.
	balance := balance + refund.
	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip on: aLine from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: (self priceFactorAt: aDateTime).
	self assertCanPay: trip cost.
	balance := balance - trip cost.
	trips add: trip.
	^trip cost! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
assertCanPay: aCost

	aCost > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
priceFactorAt: aDateTime

	^discount priceFactorAt: aDateTime for: self ifNotApplicable: [ self transferPriceFactorAt: aDateTime ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
transferPriceFactorAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ self class transferPriceFactor ]
		ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ (trips last startDateTime distanceTo: aDateTime) <= self class transferTimeLimit ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
transferPriceFactor

	^1/2! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripOn: line from: anOrigin to: aDestination at: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^aBlock value! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^(aCard numberOfTripsOnSameDayAs: aDateTime) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: aBlock! !

!RetireeDiscount class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
priceFactorAt: aDateTime for: aCard ifNotApplicable: aBlock

	^(self isWeekend: aDateTime)
		ifTrue: aBlock
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'private' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
isWeekend: aDateTime

	| day |
	day := aDateTime date day.
	^day = Saturday or: [ day = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeWithCostsUpTo: distancesAndCosts

	costsUpToDistance := distancesAndCosts! !

!FareTable methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
costFor: aDistance

	^(costsUpToDistance detect: [ :distanceAndCost | aDistance <= distanceAndCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
fixed: aCost

	^self withCostsUpTo: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
withCostsUpTo: distancesAndCosts

	^self new initializeWithCostsUpTo: distancesAndCosts! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeStops: aStops fareTable: aFareTable

	stops := aStops.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
costFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.
	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
assertIsEndOfRoute: aStop

	(aStop = stops first or: [ aStop = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
stops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.
	^self new initializeStops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeNamed: aName atDistanceFromHead: aDistance

	name := aName.
	distanceFromHead := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
distanceFromHead

	^distanceFromHead! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
name

	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
distanceTo: aStop

	^(distanceFromHead - aStop distanceFromHead) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
named: aName atDistanceFromHead: aDistance

	^self new initializeNamed: aName atDistanceFromHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	startDateTime := aDateTime.
	priceFactor := aPriceFactor.
	cost := self costTo: aDestination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
cost

	^cost! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
startDateTime

	^startDateTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
startedOnSameDayAs: aDateTime

	^startDateTime sameDayAs: aDateTime! !

!Trip methodsFor: 'ending' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
endAt: aStop

	| actualCost refund |
	actualCost := self costTo: aStop.
	refund := cost - actualCost.
	destination := aStop.
	cost := actualCost.
	^refund! !

!Trip methodsFor: 'private' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
costTo: aDestination

	^(line costFrom: origin to: aDestination) * priceFactor! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor

	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime withPriceFactor: aPriceFactor! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
initializeOn: aLine at: aStop

	line := aLine.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	line assertIsEndOfRoute: aDirection.
	^aCard payTripOn: line from: stop to: aDirection at: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
on: aLine at: aStop

	aLine assertIncludes: aStop.
	^self new initializeOn: aLine at: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:55:10 am (UTC)'!
registerExitOf: aCard

	^aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
setUp

	constitucion := TransportStop named: 'Constitución' atDistanceFromHead: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' atDistanceFromHead: 5 * kilometer.
	retiro := TransportStop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	belgrano := TransportStop named: 'Belgrano' atDistanceFromHead: 12 * kilometer.
	line60 := TransportLine
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withCostsUpTo: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congreso := TransportStop named: 'Congreso de Tucumán' atDistanceFromHead: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' atDistanceFromHead: 12/10 * kilometer.
	callao := TransportStop named: 'Callao' atDistanceFromHead: 25/10 * kilometer.
	palermo := TransportStop named: 'Palermo' atDistanceFromHead: 6 * kilometer.
	subteD := TransportLine
		stops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := TransportStop named: 'Retiro' atDistanceFromHead: 0 * kilometer.
	belgranoMitre := TransportStop named: 'Belgrano' atDistanceFromHead: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' atDistanceFromHead: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' atDistanceFromHead: 28 * kilometer.
	mitreTigre := TransportLine
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsUpTo: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
cardWith: aDiscount

	^BajeCard withBalance: 10000 * peso discount: aDiscount! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
november: aDayNumber hours: anHour minutes: aMinute

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test01BusChargesByDistanceWithoutDiscount

	| card |
	card := self cardWith: NoDiscount new.

	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test02StudentPaysHalfOnWeekdays

	| card |
	card := self cardWith: StudentDiscount new.

	self assert: 650 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 24 hours: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test03StudentPaysFullPriceOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.

	self assert: 1300 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 23 hours: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test04RetireeFirstTripOfTheDayIsFree

	| card |
	card := self cardWith: RetireeDiscount new.

	self assert: 0 * peso equals: ((Turnstile on: subteD at: tribunales) charge: card towards: congreso at: (self november: 22 hours: 9 minutes: 0)).
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test05RetireePaysFromTheThirdTripOfTheDay

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := Turnstile on: subteD at: tribunales.
	turnstile charge: card towards: congreso at: (self november: 22 hours: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 hours: 12 minutes: 0).

	self assert: 1000 * peso equals: (turnstile charge: card towards: congreso at: (self november: 22 hours: 15 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test06RetireeHasFreeTripsAgainTheNextDay

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := Turnstile on: subteD at: tribunales.
	turnstile charge: card towards: congreso at: (self november: 22 hours: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 hours: 12 minutes: 0).

	self assert: 0 * peso equals: (turnstile charge: card towards: congreso at: (self november: 23 hours: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test07TrainChargesOnEntryAndRefundsOnExit

	| card |
	card := self cardWith: NoDiscount new.

	self assert: 600 * peso equals: ((TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 hours: 9 minutes: 0)).
	self assert: 200 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) registerExitOf: card).
	self assert: 9600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test08TrainKeepsEntryChargeWhenNotExiting

	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 hours: 9 minutes: 0).

	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test09TrainRefundKeepsTheDiscountAppliedOnEntry

	| card |
	card := self cardWith: StudentDiscount new.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 hours: 9 minutes: 0).

	self assert: 100 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) registerExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test10TripWithinTwoHoursIsATransfer

	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile on: subteD at: tribunales) charge: card towards: palermo at: (self november: 25 hours: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test11TripAfterTwoHoursIsNotATransfer

	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0).

	self assert: 1000 * peso equals: ((Turnstile on: subteD at: tribunales) charge: card towards: palermo at: (self november: 25 hours: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test12TransfersAreCountedFromTheStartOfTheLastTrip

	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0).
	(Turnstile on: subteD at: tribunales) charge: card towards: palermo at: (self november: 25 hours: 11 minutes: 30).

	self assert: 300 * peso equals: ((BusCardReader for: line60) charge: card from: plazaDeMayo to: constitucion at: (self november: 25 hours: 13 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test13StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	card := self cardWith: StudentDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile on: subteD at: tribunales) charge: card towards: palermo at: (self november: 25 hours: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 22 hours: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile on: subteD at: tribunales) charge: card towards: palermo at: (self november: 22 hours: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := Turnstile on: subteD at: tribunales.
	turnstile charge: card towards: congreso at: (self november: 22 hours: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 hours: 9 minutes: 30).

	self assert: 500 * peso equals: (turnstile charge: card towards: congreso at: (self november: 22 hours: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.

	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: (card numberOfTripsOnSameDayAs: (self november: 25 hours: 10 minutes: 0)) = 0! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test17OriginMustBelongToTheMeansOfTransport

	| card |
	card := self cardWith: NoDiscount new.

	self
		should: [ (BusCardReader for: line60) charge: card from: tribunales to: plazaDeMayo at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test18DestinationMustBelongToTheMeansOfTransport

	self
		should: [ (BusCardReader for: line60) charge: (self cardWith: NoDiscount new) from: constitucion to: belgranoMitre at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test19OriginAndDestinationMustBeDifferent

	self
		should: [ (BusCardReader for: line60) charge: (self cardWith: NoDiscount new) from: retiro to: retiro at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription.
	self
		should: [ (Turnstile on: subteD at: congreso) charge: (self cardWith: NoDiscount new) towards: congreso at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine stops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine atLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test21DirectionMustBeHeadOrLastStop

	| card |
	card := self cardWith: NoDiscount new.

	self
		should: [ (Turnstile on: subteD at: tribunales) charge: card towards: callao at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self
		should: [ (TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: belgranoMitre at: (self november: 25 hours: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:55:51 am (UTC)'!
test22TurnstileStopMustBelongToTheMeansOfTransport

	self
		should: [ TrainTurnstile on: mitreTigre at: retiro ]
		failWith: TransportLine stopNotInLineErrorDescription! !
