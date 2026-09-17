'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:45:19 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BAJECard category: #'2025-2C-2doParcial'!
Object subclass: #BAJECard
	instanceVariableNames: 'plan balance trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BAJECard class' category: #'2025-2C-2doParcial'!
BAJECard class
	instanceVariableNames: ''!

!classDefinition: #CardReader category: #'2025-2C-2doParcial'!
Object subclass: #CardReader
	instanceVariableNames: 'line stop'
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
	instanceVariableNames: ''
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

!classDefinition: #DiscountPlan category: #'2025-2C-2doParcial'!
Object subclass: #DiscountPlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'DiscountPlan class' category: #'2025-2C-2doParcial'!
DiscountPlan class
	instanceVariableNames: ''!

!classDefinition: #NoDiscountPlan category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #NoDiscountPlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscountPlan class' category: #'2025-2C-2doParcial'!
NoDiscountPlan class
	instanceVariableNames: ''!

!classDefinition: #RetireePlan category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #RetireePlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireePlan class' category: #'2025-2C-2doParcial'!
RetireePlan class
	instanceVariableNames: ''!

!classDefinition: #StudentPlan category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #StudentPlan
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StudentPlan class' category: #'2025-2C-2doParcial'!
StudentPlan class
	instanceVariableNames: ''!

!classDefinition: #FareDiscount category: #'2025-2C-2doParcial'!
Object subclass: #FareDiscount
	instanceVariableNames: 'payingRatio'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareDiscount class' category: #'2025-2C-2doParcial'!
FareDiscount class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'pricesByDistanceLimit'
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
	instanceVariableNames: 'line origin destination start discount'
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


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeWithPlan: aDiscountPlan

	plan := aDiscountPlan.
	balance := 0 * peso.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'loading' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
load: anAmount

	balance := balance + anAmount! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
endLastTripAt: aStop

	| refund |
	refund := trips last endAt: aStop.
	balance := balance + refund.
	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip on: aLine from: anOrigin to: aDestination startingAt: aDateTime withDiscount: (plan discountForTripAt: aDateTime on: self).
	self assertCanPay: trip charge.
	balance := balance - trip charge.
	trips add: trip.
	^trip charge! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
assertCanPay: anAmount

	balance < anAmount ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
isTransferAt: aDateTime

	trips isEmpty ifTrue: [ ^false ].
	^(trips last start distanceTo: aDateTime) <= self class transferTimeLimit! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
numberOfTripsOnDayOf: aDateTime

	^trips count: [ :aTrip | aTrip start sameDayAs: aDateTime ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
retiree

	^self withPlan: RetireePlan new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
student

	^self withPlan: StudentPlan new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
withPlan: aDiscountPlan

	^self new initializeWithPlan: aDiscountPlan! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
withoutDiscount

	^self withPlan: NoDiscountPlan new! !

!BAJECard class methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeOn: aLine at: aStop

	line := aLine.
	stop := aStop! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
on: aLine at: aStop

	aLine assertIncludes: aStop.
	^self new initializeOn: aLine at: aStop! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
charge: aCard travelingTo: aDestination at: aDateTime

	^aCard payTripOn: line from: stop to: aDestination at: aDateTime! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	line assertIsDirection: aDirection.
	^aCard payTripOn: line from: stop to: aDirection at: aDateTime! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
chargeExitOf: aCard

	^aCard endLastTripAt: stop! !

!DiscountPlan methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
discountForTripAt: aDateTime on: aCard

	self subclassResponsibility! !

!DiscountPlan methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
transferOrNoDiscountAt: aDateTime on: aCard

	^(aCard isTransferAt: aDateTime)
		ifTrue: [ FareDiscount half ]
		ifFalse: [ FareDiscount none ]! !

!NoDiscountPlan methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
discountForTripAt: aDateTime on: aCard

	^self transferOrNoDiscountAt: aDateTime on: aCard! !

!RetireePlan methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
discountForTripAt: aDateTime on: aCard

	^(aCard numberOfTripsOnDayOf: aDateTime) < self freeTripsPerDay
		ifTrue: [ FareDiscount free ]
		ifFalse: [ self transferOrNoDiscountAt: aDateTime on: aCard ]! !

!RetireePlan methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentPlan methodsFor: 'discounts' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
discountForTripAt: aDateTime on: aCard

	^(self isWeekend: aDateTime)
		ifTrue: [ self transferOrNoDiscountAt: aDateTime on: aCard ]
		ifFalse: [ FareDiscount half ]! !

!StudentPlan methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
isWeekend: aDateTime

	^aDateTime date isSaturday or: [ aDateTime date isSunday ]! !

!FareDiscount methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializePayingRatio: aRatio

	payingRatio := aRatio! !

!FareDiscount methodsFor: 'applying' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
applyTo: aPrice

	^aPrice * payingRatio! !

!FareDiscount class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
free

	^self payingRatio: 0! !

!FareDiscount class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
half

	^self payingRatio: 1/2! !

!FareDiscount class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
none

	^self payingRatio: 1! !

!FareDiscount class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
payingRatio: aRatio

	^self new initializePayingRatio: aRatio! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeWithPricesByDistanceLimit: anArrayOfAssociations

	pricesByDistanceLimit := anArrayOfAssociations asSortedCollection: [ :aLimitAndPrice :anotherLimitAndPrice | aLimitAndPrice key <= anotherLimitAndPrice key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
priceFor: aDistance

	^(pricesByDistanceLimit detect: [ :aLimitAndPrice | aDistance <= aLimitAndPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
fixed: aPrice

	^self withPricesByDistanceLimit: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
withPricesByDistanceLimit: anArrayOfAssociations

	^self new initializeWithPricesByDistanceLimit: anArrayOfAssociations! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := aCollectionOfStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
headStop

	^stops detectMin: [ :aStop | aStop distanceToHead ]! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
lastStop

	^stops detectMax: [ :aStop | aStop distanceToHead ]! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
isTerminal: aStop

	^aStop == self headStop or: [ aStop == self lastStop ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
assertIsDirection: aStop

	self assertIncludes: aStop.
	(self isTerminal: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin == aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable

	self assertHasEnoughStops: aCollectionOfStops.
	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime withDiscount: aFareDiscount

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	discount := aFareDiscount! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
line

	^line! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
charge

	^discount applyTo: (line priceFrom: origin to: destination)! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
endAt: aStop
	"Answers the amount to refund, the difference between what was charged and what the trip made costs"

	| chargedAtStart |
	line assertIsValidTripFrom: origin to: aStop.
	chargedAtStart := self charge.
	destination := aStop.
	^chargedAtStart - self charge! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:44:15 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime withDiscount: aFareDiscount

	aLine assertIsValidTripFrom: anOrigin to: aDestination.
	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime withDiscount: aFareDiscount! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := TransportLine
		named: 'Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withPricesByDistanceLimit: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := TransportLine
		named: 'Subte D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTigre := TransportLine
		named: 'Mitre - Ramal Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withPricesByDistanceLimit: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
cardWithBalance: aCard

	aCard load: 5000 * peso.
	^aCard! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
november: aDay at: anHour minutes: aMinute

	^(November / aDay / 2025) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test01BusChargesAccordingToTheDistanceTraveled

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test02BusUsesTheFareOfTheRangeTheDistanceFallsIn

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self assert: 1000 * peso equals: ((BusCardReader on: line60 at: belgrano) charge: card travelingTo: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1300 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: belgrano at: (self november: 26 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test03SubwayChargesAFixedPrice

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self assert: 1000 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile on: subwayD at: callao) charge: card towards: palermo at: (self november: 23 at: 9 minutes: 0)).
	self assert: 3000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test04TrainChargesAccordingToTheDistanceToTheDirection

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self assert: 600 * peso equals: ((TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test05TrainExitRefundsTheDifferenceOfTheTripMade

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: 200 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) chargeExitOf: card).
	self assert: 4600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test06TrainExitKeepsTheDiscountAppliedOnEntry

	| card |
	card := self cardWithBalance: BAJECard student.
	(TrainTurnstile on: mitreTigre at: sanIsidro) charge: card towards: retiroMitre at: (self november: 24 at: 9 minutes: 0).

	self assert: 100 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) chargeExitOf: card).
	self assert: 4800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test07StudentPaysHalfFromMondayToFriday

	| card |
	card := self cardWithBalance: BAJECard student.

	self assert: 650 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: belgrano at: (self november: 24 at: 11 minutes: 0)).
	self assert: 4350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test08StudentPaysFullPriceOnWeekends

	| card |
	card := self cardWithBalance: BAJECard student.

	self assert: 1300 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: belgrano at: (self november: 22 at: 11 minutes: 0)).
	self assert: 1300 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: belgrano at: (self november: 23 at: 11 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test09RetireeHasTwoFreeTripsPerDay

	| card turnstile |
	card := self cardWithBalance: BAJECard retiree.
	turnstile := Turnstile on: subwayD at: tribunales.

	self assert: 0 * peso equals: (turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 12 minutes: 0)).
	self assert: 1000 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 15 minutes: 0)).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test10RetireeFreeTripsAreRenewedEachDay

	| card turnstile |
	card := self cardWithBalance: BAJECard retiree.
	turnstile := Turnstile on: subwayD at: tribunales.
	turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 at: 12 minutes: 0).

	self assert: 0 * peso equals: (turnstile charge: card towards: palermo at: (self november: 23 at: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test11TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self assert: 600 * peso equals: ((BusCardReader on: line60 at: constitucion) charge: card travelingTo: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 200 * peso equals: ((TrainTurnstile on: mitreTigre at: belgranoMitre) charge: card towards: retiroMitre at: (self november: 25 at: 12 minutes: 15)).
	self assert: 3700 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test12TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.
	(BusCardReader on: line60 at: constitucion) charge: card travelingTo: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 1000 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test13StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |
	card := self cardWithBalance: BAJECard student.
	(BusCardReader on: line60 at: constitucion) charge: card travelingTo: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends

	| card |
	card := self cardWithBalance: BAJECard student.
	(BusCardReader on: line60 at: constitucion) charge: card travelingTo: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).

	self assert: 500 * peso equals: ((Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test15RetireeGetsTransferDiscountOnceFreeTripsAreUsed

	| card turnstile |
	card := self cardWithBalance: BAJECard retiree.
	turnstile := Turnstile on: subwayD at: tribunales.
	turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 30).

	self assert: 500 * peso equals: (turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test16CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscount.
	card load: 999 * peso.

	self
		should: [ (Turnstile on: subwayD at: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 999 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test17MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine named: 'Corta' stops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test18OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self
		should: [ (BusCardReader on: line60 at: retiro) charge: card travelingTo: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test19DestinationMustBeInTheSameMeansOfTransport

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self
		should: [ (BusCardReader on: line60 at: constitucion) charge: card travelingTo: retiroMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test20OriginMustBeInTheSameMeansOfTransport

	self
		should: [ BusCardReader on: line60 at: tribunales ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test21SubwayDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self
		should: [ (Turnstile on: subwayD at: tribunales) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test22TrainDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self
		should: [ (TrainTurnstile on: mitreTigre at: tigre) charge: card towards: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:45:05 am (UTC)'!
test23CanNotBoardTowardsTheSameStop

	| card |
	card := self cardWithBalance: BAJECard withoutDiscount.

	self
		should: [ (Turnstile on: subwayD at: palermo) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: 5000 * peso equals: card balance! !
