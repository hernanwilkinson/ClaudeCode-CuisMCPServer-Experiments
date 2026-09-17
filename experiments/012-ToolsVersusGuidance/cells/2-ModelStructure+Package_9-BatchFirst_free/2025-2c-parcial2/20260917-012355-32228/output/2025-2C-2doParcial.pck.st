'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:26:59 am'!
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
	instanceVariableNames: 'faresUpToDistance'
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
	instanceVariableNames: 'origin destination start basePrice priceFactor'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congreso tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
lastTrip

	^trips last! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
adjustLastTripArrivingAt: aStop pricedAt: aPrice

	| adjustedTrip |
	
	adjustedTrip := self lastTrip arrivingAt: aStop pricedAt: aPrice.
	balance := balance + self lastTrip charge - adjustedTrip charge.
	trips removeLast.
	trips add: adjustedTrip! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
payTripFrom: anOrigin to: aDestination at: aDateTime pricedAt: aPrice

	| trip |
	
	trip := Trip 
		from: anOrigin 
		to: aDestination 
		startingAt: aDateTime 
		pricedAt: aPrice 
		withFactor: (discount priceFactorFor: self at: aDateTime).
	self assertCanPay: trip charge.
	
	balance := balance - trip charge.
	trips add: trip.
	
	^trip charge! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ (self lastTrip start distanceTo: aDateTime) <= self class transferTimeWindow ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :trip | trip startedOn: aDate ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
transferTimeWindow

	^2 * hour! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripFrom: anOrigin to: aDestination at: aDateTime pricedAt: (line priceFrom: anOrigin to: aDestination)! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	self subclassResponsibility! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
transferPriceFactorFor: aCard at: aDateTime

	^(aCard isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^self transferPriceFactorFor: aCard at: aDateTime! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ self transferPriceFactorFor: aCard at: aDateTime ]! !

!RetireeDiscount class methodsFor: 'free trips' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^(self isWeekend: aDateTime)
		ifTrue: [ self transferPriceFactorFor: aCard at: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
isWeekend: aDateTime

	^{ Saturday. Sunday } includes: aDateTime date day! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeWithFaresUpToDistance: distancesToPrices

	faresUpToDistance := distancesToPrices! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
priceFor: aDistance

	^(faresUpToDistance detect: [ :fare | aDistance <= fare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
fixed: aPrice

	^self withFaresUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
withFaresUpToDistance: distancesToPrices

	"distancesToPrices are associations from the maximum distance to the price charged up to it, sorted by distance.
	The last one should be up to PlusInfinity new"
	^self new initializeWithFaresUpToDistance: distancesToPrices! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
headOfLine

	^stops first! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
lastStop

	^stops last! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
priceFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.
	
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
assertIsValidDirection: aStop

	(aStop = self headOfLine or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasEnoughStops: aStops.
	
	^self new initializeWithStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
assertHasEnoughStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop is not in the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeNamed: aName atDistanceFromHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
named: aName atDistanceFromHeadOfLine: aDistance

	^self new initializeNamed: aName atDistanceFromHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingAt: aDateTime pricedAt: aBasePrice withFactor: aPriceFactor

	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	basePrice := aBasePrice.
	priceFactor := aPriceFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
charge

	^basePrice * priceFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 4:25:48 am (UTC)'!
arrivingAt: aStop pricedAt: aBasePrice

	^self class from: origin to: aStop startingAt: start pricedAt: aBasePrice withFactor: priceFactor! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
from: anOrigin to: aDestination startingAt: aDateTime pricedAt: aBasePrice withFactor: aPriceFactor

	^self new initializeFrom: anOrigin to: aDestination startingAt: aDateTime pricedAt: aBasePrice withFactor: aPriceFactor! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
initializeFor: aLine at: aStop

	line := aLine.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	line assertIsValidDirection: aDirection.
	
	^aCard payTripFrom: stop to: aDirection at: aDateTime pricedAt: (line priceFrom: stop to: aDirection)! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
for: aLine at: aStop

	aLine assertIncludes: aStop.
	
	^self new initializeFor: aLine at: aStop! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:47 am (UTC)'!
registerExitOf: aCard

	aCard adjustLastTripArrivingAt: stop pricedAt: (line priceFrom: aCard lastTrip origin to: stop)! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceFromHeadOfLine: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceFromHeadOfLine: 5 * kilometer.
	retiroBus := Stop named: 'Retiro' atDistanceFromHeadOfLine: 8 * kilometer.
	belgranoBus := Stop named: 'Belgrano' atDistanceFromHeadOfLine: 12 * kilometer.
	line60 := MeansOfTransport 
		withStops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withFaresUpToDistance: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).
		
	congreso := Stop named: 'Congreso de Tucumán' atDistanceFromHeadOfLine: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceFromHeadOfLine: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceFromHeadOfLine: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceFromHeadOfLine: 6 * kilometer.
	subwayD := MeansOfTransport 
		withStops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).
		
	retiroTrain := Stop named: 'Retiro' atDistanceFromHeadOfLine: 0 * kilometer.
	belgranoTrain := Stop named: 'Belgrano' atDistanceFromHeadOfLine: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceFromHeadOfLine: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceFromHeadOfLine: 28 * kilometer.
	mitre := MeansOfTransport 
		withStops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: (FareTable withFaresUpToDistance: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
busTripOn: aCard from: anOrigin to: aDestination at: aDateTime

	^(BusCardReader for: line60) charge: aCard from: anOrigin to: aDestination at: aDateTime! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
cardWith: aDiscount

	^BajeCard withBalance: 10000 * peso discount: aDiscount! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
november: aDayNumber at: anHour

	^self november: aDayNumber at: anHour minutes: 0! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinutes

	^(November / aDayNumber / 2025) at: (TimeOfDay hours: anHour minutes: aMinutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error - MessageNotUnderstood withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test01DistanceBetweenStopsIsTheDifferenceOfTheirDistancesToTheHeadOfLine

	self assert: 3 * kilometer equals: (retiroBus distanceTo: plazaDeMayo).
	self assert: 3 * kilometer equals: (plazaDeMayo distanceTo: retiroBus)! !

!ISWMetropolitanoTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test02FareTableChargesByDistanceRanges

	self assert: 600 * peso equals: (line60 priceFrom: constitucion to: plazaDeMayo).
	self assert: 1000 * peso equals: (line60 priceFrom: plazaDeMayo to: belgranoBus).
	self assert: 1000 * peso equals: (line60 priceFrom: retiroBus to: constitucion).
	self assert: 1300 * peso equals: (line60 priceFrom: constitucion to: belgranoBus)! !

!ISWMetropolitanoTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test03MeansOfTransportMustHaveAtLeastTwoStops

	self 
		should: [ MeansOfTransport withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription.
	self 
		should: [ MeansOfTransport withStops: #() fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test04CanNotTravelToAStopOfAnotherMeansOfTransport

	| card |
	
	card := self cardWith: NoDiscount new.
	self 
		should: [ self busTripOn: card from: constitucion to: belgranoTrain at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
	self 
		should: [ self busTripOn: card from: belgranoTrain to: constitucion at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
		
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test05OriginAndDestinationMustBeDifferent

	| card |
	
	card := self cardWith: NoDiscount new.
	self 
		should: [ self busTripOn: card from: constitucion to: constitucion at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self 
		should: [ (Turnstile for: subwayD at: congreso) charge: card towards: congreso at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
		
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test06TurnstileDirectionMustBeHeadOfLineOrLastStop

	| card |
	
	card := self cardWith: NoDiscount new.
	self 
		should: [ (Turnstile for: subwayD at: tribunales) charge: card towards: callao at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self 
		should: [ (TrainTurnstile for: mitre at: tigre) charge: card towards: sanIsidro at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
		
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test07TurnstileMustBeAtAStopOfItsMeansOfTransport

	self 
		should: [ Turnstile for: subwayD at: sanIsidro ]
		failWith: MeansOfTransport stopNotInMeansOfTransportErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test08CanNotPayWithoutEnoughBalance

	| card |
	
	card := BajeCard withBalance: 500 * peso discount: NoDiscount new.
	self 
		should: [ self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
		
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test09CanPayWithExactBalance

	| card |
	
	card := BajeCard withBalance: 600 * peso discount: NoDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
		
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test10BusTripWithoutDiscountChargesFullPrice

	| card |
	
	card := self cardWith: NoDiscount new.
	self assert: 600 * peso equals: (self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10)).
	
	self assert: 9400 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test11StudentPaysHalfOnWeekdays

	| card |
	
	card := self cardWith: StudentDiscount new.
	self busTripOn: card from: constitucion to: belgranoBus at: (self november: 24 at: 11).
	
	self assert: 9350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test12StudentPaysFullPriceOnWeekends

	| card |
	
	card := self cardWith: StudentDiscount new.
	self busTripOn: card from: constitucion to: belgranoBus at: (self november: 22 at: 11).
	self busTripOn: card from: constitucion to: belgranoBus at: (self november: 23 at: 11).
	
	self assert: 7400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test13RetireeFirstTripOfTheDayIsFree

	| card |
	
	card := self cardWith: RetireeDiscount new.
	(Turnstile for: subwayD at: tribunales) charge: card towards: congreso at: (self november: 22 at: 9).
	
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test14RetireePaysFromTheThirdTripOfTheDay

	| card |
	
	card := self cardWith: RetireeDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 8).
	self busTripOn: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 11).
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 14).
	
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test15RetireeHasFreeTripsAgainOnANewDay

	| card |
	
	card := self cardWith: RetireeDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 8).
	self busTripOn: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 11).
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 26 at: 8).
	
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test16TrainChargesByDistanceToTheDirectionOnEntry

	| card |
	
	card := self cardWith: NoDiscount new.
	(TrainTurnstile for: mitre at: sanIsidro) charge: card towards: retiroTrain at: (self november: 22 at: 9).
	
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test17TrainRefundsTheDifferenceOnExit

	| card |
	
	card := self cardWith: NoDiscount new.
	(TrainTurnstile for: mitre at: sanIsidro) charge: card towards: retiroTrain at: (self november: 22 at: 9).
	(TrainTurnstile for: mitre at: belgranoTrain) registerExitOf: card.
	
	self assert: 9600 * peso equals: card balance.
	self assert: belgranoTrain equals: card lastTrip destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test18TrainExitRefundKeepsTheDiscountApplied

	| card |
	
	card := self cardWith: StudentDiscount new.
	(TrainTurnstile for: mitre at: sanIsidro) charge: card towards: retiroTrain at: (self november: 24 at: 9).
	(TrainTurnstile for: mitre at: belgranoTrain) registerExitOf: card.
	
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test19TrainExitAtDirectionDoesNotRefund

	| card |
	
	card := self cardWith: NoDiscount new.
	(TrainTurnstile for: mitre at: belgranoTrain) charge: card towards: tigre at: (self november: 22 at: 9).
	(TrainTurnstile for: mitre at: tigre) registerExitOf: card.
	
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test20TripWithinTwoHoursIsATransferAndPaysHalf

	| card |
	
	card := self cardWith: NoDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).
	
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test21TripAfterTwoHoursIsNotATransfer

	| card |
	
	card := self cardWith: NoDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1).
	
	self assert: 8400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:46 am (UTC)'!
test22TransfersHaveNoLimitAndCountFromTheStartOfTheLastTrip

	| card |
	
	card := self cardWith: NoDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self busTripOn: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 11 minutes: 30).
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 13).
	
	self assert: 8800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test23StudentDiscountIsNotCumulativeWithTransfersOnWeekdays

	| card |
	
	card := self cardWith: StudentDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).
	
	self assert: 9200 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test24StudentGetsTransferDiscountOnWeekends

	| card |
	
	card := self cardWith: StudentDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10).
	(Turnstile for: subwayD at: tribunales) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30).
	
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:36 am (UTC)'!
test25RetireeFreeTripsAreNotCumulativeWithTransfers

	| card |
	
	card := self cardWith: RetireeDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self busTripOn: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 10 minutes: 30).
	self busTripOn: card from: constitucion to: belgranoBus at: (self november: 25 at: 11).
	
	self assert: 9350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:26:46 am (UTC)'!
test26RejectedTripIsNotConsideredForTransfers

	| card |
	
	card := BajeCard withBalance: 1000 * peso discount: NoDiscount new.
	self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 8).
	self 
		should: [ self busTripOn: card from: constitucion to: belgranoBus at: (self november: 25 at: 11) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	
	self 
		should: [ self busTripOn: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 12) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 400 * peso equals: card balance.
	self assert: 1 equals: card trips size! !
