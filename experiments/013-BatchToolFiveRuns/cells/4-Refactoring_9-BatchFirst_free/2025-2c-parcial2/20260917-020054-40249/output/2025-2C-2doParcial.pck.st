'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:04:15 am'!
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
	instanceVariableNames: 'upperLimitsAndPrices'
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
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'origin destination startTime fullPrice discountFactor'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congresoDeTucuman tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeWithDiscount: aDiscount

	discount := aDiscount.
	balance := 0 * peso.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
credit: anAmount

	balance := balance + anAmount! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
lastTrip

	^trips last! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
numberOfTripsOnSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedOnSameDayAs: aDateTime ]! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ self lastTrip started: self class transferTimeSpan before: aDateTime ]! !

!BajeCard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
transferDiscountFactorAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
endLastTripAt: aStop costing: aFullPrice

	| refund |
	
	refund := self lastTrip endAt: aStop costing: aFullPrice.
	balance := balance + refund.
	
	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
payTripFrom: anOrigin to: aDestination at: aDateTime costing: aFullPrice

	| trip |
	
	trip := Trip from: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice discountFactor: (discount discountFactorForTripAt: aDateTime with: self).
	self assertCanPay: trip charged.
	
	balance := balance - trip charged.
	trips add: trip.
	
	^trip charged! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
forRetiree

	^self withDiscount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
forStudent

	^self withDiscount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
withDiscount: aDiscount

	^self new initializeWithDiscount: aDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
withoutDiscount

	^self withDiscount: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!BajeCard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
transferTimeSpan

	^2 * hour! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeOn: aLine

	line := aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime

	line assertIsValidTripFrom: anOrigin to: aDestination.
	
	^aCard payTripFrom: anOrigin to: aDestination at: aDateTime costing: (line priceFrom: anOrigin to: aDestination)! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
on: aLine

	^self new initializeOn: aLine! !

!CardDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
discountFactorForTripAt: aDateTime with: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
discountFactorForTripAt: aDateTime with: aCard

	^aCard transferDiscountFactorAt: aDateTime! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
discountFactorForTripAt: aDateTime with: aCard

	^(aCard numberOfTripsOnSameDayAs: aDateTime) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard transferDiscountFactorAt: aDateTime ]! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
discountFactorForTripAt: aDateTime with: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ aCard transferDiscountFactorAt: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
isWeekend: aDateTime

	| day |
	
	day := aDateTime date day.
	^day = Saturday or: [ day = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeWithUpperLimitsAndPrices: anUpperLimitsAndPrices

	upperLimitsAndPrices := anUpperLimitsAndPrices! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
priceFor: aDistance

	^(upperLimitsAndPrices detect: [ :upperLimitAndPrice | aDistance <= upperLimitAndPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
fixed: aPrice

	^self withUpperLimitsAndPrices: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
withUpperLimitsAndPrices: upperLimitsAndPrices

	^self new initializeWithUpperLimitsAndPrices: upperLimitsAndPrices! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeWithStops: someStops fareTable: aFareTable

	stops := someStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
headOfLine

	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
lastStop

	^stops last! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
assertIsValidDirection: aStop

	(aStop = self headOfLine or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	((self includes: anOrigin) and: [ self includes: aDestination ]) ifFalse: [ self error: self class stopsMustBelongToLineErrorDescription ].
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
withStops: someStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: someStops.
	
	^self new initializeWithStops: someStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
assertHasAtLeastTwoStops: someStops

	someStops size < 2 ifTrue: [ self error: self mustHaveAtLeastTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription

	^'The origin and destination stops must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
stopsMustBelongToLineErrorDescription

	^'The origin and destination stops must belong to the means of transport'! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeNamed: aName atDistanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
name

	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
named: aName atDistanceToHeadOfLine: aDistance

	^self new initializeNamed: aName atDistanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
initializeFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice discountFactor: aDiscountFactor

	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	fullPrice := aFullPrice.
	discountFactor := aDiscountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
charged

	^fullPrice * discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
fullPrice

	^fullPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
started: aTimeSpan before: aDateTime

	^(startTime distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
startedOnSameDayAs: aDateTime

	^startTime sameDayAs: aDateTime! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
endAt: aStop costing: aFullPrice

	| previouslyCharged |
	
	previouslyCharged := self charged.
	destination := aStop.
	fullPrice := aFullPrice.
	
	^previouslyCharged - self charged! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
from: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice discountFactor: aDiscountFactor

	^self new initializeFrom: anOrigin to: aDestination startingAt: aDateTime fullPrice: aFullPrice discountFactor: aDiscountFactor! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:02:56 am (UTC)'!
initializeAt: aStop of: aLine

	stop := aStop.
	line := aLine! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:02:56 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	line assertIsValidDirection: aDirection.
	line assertIsValidTripFrom: stop to: aDirection.
	
	^aCard payTripFrom: stop to: aDirection at: aDateTime costing: (line priceFrom: stop to: aDirection)! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:02:55 am (UTC)'!
at: aStop of: aLine

	^self new initializeAt: aStop of: aLine! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:02:56 am (UTC)'!
registerExitOf: aCard

	^aCard endLastTripAt: stop costing: (line priceFrom: aCard lastTrip origin to: stop)! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
setUp

	constitucion := TransportStop named: 'Constitución' atDistanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' atDistanceToHeadOfLine: 5 * kilometer.
	retiroBus := TransportStop named: 'Retiro' atDistanceToHeadOfLine: 8 * kilometer.
	belgranoBus := TransportStop named: 'Belgrano' atDistanceToHeadOfLine: 12 * kilometer.
	line60 := TransportLine
		withStops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withUpperLimitsAndPrices: { (5 * kilometer) -> (600 * peso). (10 * kilometer) -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).
	
	congresoDeTucuman := TransportStop named: 'Congreso de Tucumán' atDistanceToHeadOfLine: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' atDistanceToHeadOfLine: 1.2 * kilometer.
	callao := TransportStop named: 'Callao' atDistanceToHeadOfLine: 2.5 * kilometer.
	palermo := TransportStop named: 'Palermo' atDistanceToHeadOfLine: 6 * kilometer.
	subwayD := TransportLine
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).
	
	retiroTrain := TransportStop named: 'Retiro' atDistanceToHeadOfLine: 0 * kilometer.
	belgranoTrain := TransportStop named: 'Belgrano' atDistanceToHeadOfLine: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' atDistanceToHeadOfLine: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' atDistanceToHeadOfLine: 28 * kilometer.
	mitreTrain := TransportLine
		withStops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: (FareTable withUpperLimitsAndPrices: { (15 * kilometer) -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
bus60Reader

	^BusCardReader on: line60! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
creditedCard: aCard

	aCard credit: 10000 * peso.
	^aCard! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
should: aBlock failWith: anErrorDescription leaving: aCard withBalance: aBalance

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorDescription equals: anError messageText.
			self assert: aBalance equals: aCard balance.
			self assert: aCard trips isEmpty ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test01BusChargesFullPriceToCardWithoutDiscount

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self assert: 600 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test02BusChargesAccordingToDistanceInEitherDirection

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self assert: 1000 * peso equals: (self bus60Reader charge: card forTripFrom: retiroBus to: constitucion at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 26 at: 10 minutes: 0)).
	self assert: 600 * peso equals: (self bus60Reader charge: card forTripFrom: belgranoBus to: retiroBus at: (self november: 27 at: 10 minutes: 0)).
	self assert: 7100 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test03SubwayChargesAFixedPrice

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self assert: 1000 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: congresoDeTucuman at: (self november: 26 at: 10 minutes: 0)).
	self assert: 8000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test04TrainChargesOnEntryAccordingToDistanceToDirection

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self assert: 600 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroTrain at: (self november: 22 at: 9 minutes: 0)).
	self assert: 400 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: tigre at: (self november: 23 at: 9 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test05TrainExitRefundsTheDifferenceOfTheTripMade

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	(TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroTrain at: (self november: 22 at: 9 minutes: 0).
	
	self assert: 200 * peso equals: ((TrainTurnstile at: belgranoTrain of: mitreTrain) registerExitOf: card).
	self assert: 9600 * peso equals: card balance.
	self assert: belgranoTrain equals: card lastTrip destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test06TrainExitAtTheDirectionRefundsNothing

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	(TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroTrain at: (self november: 22 at: 9 minutes: 0).
	
	self assert: 0 * peso equals: ((TrainTurnstile at: retiroTrain of: mitreTrain) registerExitOf: card).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test07TrainExitRefundsKeepingTheDiscountAppliedOnEntry

	| card |
	
	card := self creditedCard: BajeCard forStudent.
	self assert: 300 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroTrain at: (self november: 25 at: 9 minutes: 0)).
	
	self assert: 100 * peso equals: ((TrainTurnstile at: belgranoTrain of: mitreTrain) registerExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test08StudentPaysHalfFromMondayToFriday

	| card |
	
	card := self creditedCard: BajeCard forStudent.
	
	self assert: 650 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 24 at: 11 minutes: 0)).
	self assert: 650 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 28 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test09StudentPaysFullPriceOnWeekends

	| card |
	
	card := self creditedCard: BajeCard forStudent.
	
	self assert: 1300 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 22 at: 11 minutes: 0)).
	self assert: 1300 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 23 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test10RetireeHasTwoFreeTripsPerDay

	| card |
	
	card := BajeCard forRetiree.
	
	self assert: 0 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 22 at: 18 minutes: 0)).
	self assert: 0 * peso equals: card balance.
	self assert: 2 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test11RetireePaysFullPriceAfterTheFreeTripsOfTheDay

	| card |
	
	card := self creditedCard: BajeCard forRetiree.
	self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 22 at: 8 minutes: 0).
	self bus60Reader charge: card forTripFrom: belgranoBus to: constitucion at: (self november: 22 at: 12 minutes: 0).
	
	self assert: 1300 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 22 at: 18 minutes: 0)).
	self assert: 0 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: belgranoBus at: (self november: 23 at: 8 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test12TripWithinTwoHoursOfTheLastTripPaysHalf

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self assert: 600 * peso equals: (self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test13TripAfterTwoHoursOfTheLastTripIsNotATransfer

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 14 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test14TransfersHaveNoLimitAndCountFromTheStartOfTheLastTrip

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30)).
	self assert: 300 * peso equals: (self bus60Reader charge: card forTripFrom: plazaDeMayo to: constitucion at: (self november: 25 at: 13 minutes: 0)).
	self assert: 300 * peso equals: ((TrainTurnstile at: sanIsidro of: mitreTrain) charge: card towards: retiroTrain at: (self november: 25 at: 14 minutes: 45))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test15StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	
	card := self creditedCard: BajeCard forStudent.
	self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test16StudentReceivesTransferDiscountOnWeekends

	| card |
	
	card := self creditedCard: BajeCard forStudent.
	self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test17RetireeReceivesTransferDiscountAfterTheFreeTrips

	| card |
	
	card := self creditedCard: BajeCard forRetiree.
	self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	self bus60Reader charge: card forTripFrom: plazaDeMayo to: constitucion at: (self november: 22 at: 10 minutes: 30).
	
	self assert: 500 * peso equals: ((Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 22 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test18CannotChargeACardWithoutEnoughBalance

	| card |
	
	card := BajeCard withoutDiscount.
	card credit: 599 * peso.
	
	self
		should: [ self bus60Reader charge: card forTripFrom: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription
		leaving: card
		withBalance: 599 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test19TripStopsMustBelongToTheMeansOfTransport

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self
		should: [ self bus60Reader charge: card forTripFrom: constitucion to: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription
		leaving: card
		withBalance: 10000 * peso.
	self
		should: [ self bus60Reader charge: card forTripFrom: retiroTrain to: constitucion at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription
		leaving: card
		withBalance: 10000 * peso.
	self
		should: [ (Turnstile at: retiroBus of: subwayD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription
		leaving: card
		withBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test20TripOriginAndDestinationMustBeDifferent

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self
		should: [ self bus60Reader charge: card forTripFrom: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription
		leaving: card
		withBalance: 10000 * peso.
	self
		should: [ (TrainTurnstile at: tigre of: mitreTrain) charge: card towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription
		leaving: card
		withBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test21MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		raise: Error - MessageNotUnderstood
		withMessageText: TransportLine mustHaveAtLeastTwoStopsErrorDescription.
	self
		should: [ TransportLine withStops: #() fareTable: (FareTable fixed: 1000 * peso) ]
		raise: Error - MessageNotUnderstood
		withMessageText: TransportLine mustHaveAtLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test22SubwayDirectionMustBeTheHeadOfTheLineOrTheLastStop

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self
		should: [ (Turnstile at: tribunales of: subwayD) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription
		leaving: card
		withBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:04:00 am (UTC)'!
test23TrainDirectionMustBeTheHeadOfTheLineOrTheLastStop

	| card |
	
	card := self creditedCard: BajeCard withoutDiscount.
	
	self
		should: [ (TrainTurnstile at: retiroTrain of: mitreTrain) charge: card towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription
		leaving: card
		withBalance: 10000 * peso.
	self
		should: [ (TrainTurnstile at: retiroTrain of: mitreTrain) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription
		leaving: card
		withBalance: 10000 * peso! !
