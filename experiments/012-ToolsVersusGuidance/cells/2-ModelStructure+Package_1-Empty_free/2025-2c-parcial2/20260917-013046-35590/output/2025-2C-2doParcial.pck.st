'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:33:52 am'!
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

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
CardReader subclass: #Turnstile
	instanceVariableNames: 'stop'
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

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'pricesUpToDistance'
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
	instanceVariableNames: 'line origin destination start payingRatio cost'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 bus60 congresoDeTucuman tribunales callao palermo subteD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'traveling' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
endLastTripAt: aStop

	| lastTrip chargedCost |
	lastTrip := trips last.
	chargedCost := lastTrip cost.
	lastTrip endAt: aStop.

	balance := balance + chargedCost - lastTrip cost! !

!BAJECard methodsFor: 'traveling' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
travelOn: aLine from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip
		on: aLine
		from: anOrigin
		to: aDestination
		startingAt: aDateTime
		payingRatio: (discount payingRatioForTripOf: self at: aDateTime).
	self assertCanPay: trip cost.

	balance := balance - trip cost.
	trips add: trip! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
assertCanPay: aCost

	aCost > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedWithinTransferTimeOf: aDateTime ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
payingRatioForTripOf: aCard at: aDateTime

	self subclassResponsibility! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
transferPayingRatioForTripOf: aCard at: aDateTime

	^(aCard isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
payingRatioForTripOf: aCard at: aDateTime

	^self transferPayingRatioForTripOf: aCard at: aDateTime! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
payingRatioForTripOf: aCard at: aDateTime

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ self transferPayingRatioForTripOf: aCard at: aDateTime ]! !

!RetireeDiscount class methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
payingRatioForTripOf: aCard at: aDateTime

	^(self isWeekend: aDateTime date)
		ifTrue: [ self transferPayingRatioForTripOf: aCard at: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
isWeekend: aDate

	^aDate day = Saturday or: [ aDate day = Sunday ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!CardReader methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime

	line assertTripFrom: anOrigin to: aDestination.
	aCard travelOn: line from: anOrigin to: aDestination at: aDateTime! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	self charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeAt: aStop

	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	self assertIsDirection: aDirection.
	self charge: aCard forTripFrom: stop to: aDirection at: aDateTime! !

!Turnstile methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
assertIsDirection: aStop

	(line isHeadOrLastStop: aStop) ifFalse: [ self error: self class directionMustBeHeadOrLastStopErrorDescription ]! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
at: aStop of: aLine

	aLine assertIncludes: aStop.

	^(self for: aLine) initializeAt: aStop! !

!Turnstile class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
directionMustBeHeadOrLastStopErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
registerExitOf: aCard

	aCard endLastTripAt: stop! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeWithPricesUpToDistance: distancesToPrices

	pricesUpToDistance := distancesToPrices asSortedCollection: [ :aDistanceToPrice :anotherDistanceToPrice | aDistanceToPrice key <= anotherDistanceToPrice key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
priceFor: aDistance

	^(pricesUpToDistance detect: [ :aDistanceToPrice | aDistance <= aDistanceToPrice key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
fixed: aPrice

	^self withPricesUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
withPricesUpToDistance: distancesToPrices

	^self new initializeWithPricesUpToDistance: distancesToPrices! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeNamed: aName withStops: aStopCollection fareTable: aFareTable

	name := aName.
	stops := aStopCollection asOrderedCollection.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
isHeadOrLastStop: aStop

	^aStop = stops first or: [ aStop = stops last ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopsMustBelongToLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
assertTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
named: aName withStops: aStopCollection fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStopCollection.

	^self new initializeNamed: aName withStops: aStopCollection fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
assertHasAtLeastTwoStops: aStopCollection

	aStopCollection size < 2 ifTrue: [ self error: self mustHaveAtLeastTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
originAndDestinationMustBeDifferentErrorDescription

	^'The origin and destination of a trip must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
stopsMustBelongToLineErrorDescription

	^'The stops of a trip must belong to the means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	payingRatio := aRatio! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
line

	^line! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
cost

	^payingRatio * (line priceFrom: origin to: destination)! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
startedWithinTransferTimeOf: aDateTime

	^(start distanceTo: aDateTime) <= self class transferTime! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
endAt: aStop

	destination := aStop! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio

	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aRatio! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:32:41 am (UTC)'!
transferTime

	^2 * hour! !

!ISWMetropolitanoTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiro := Stop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := TransportLine
		named: 'Línea 60'
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withPricesUpToDistance: {
			5 * kilometer -> (600 * peso).
			10 * kilometer -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).
	bus60 := BusCardReader for: line60.

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subteD := TransportLine
		named: 'Subte D'
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitre := TransportLine
		named: 'Mitre Retiro-Tigre'
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpToDistance: {
			15 * kilometer -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
assert: aCard wasChargedFrom: aBalance by: anAmount

	self assert: aBalance - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
mitreAt: aStop

	^TrainTurnstile at: aStop of: mitre! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
subteDAt: aStop

	^SubwayTurnstile at: aStop of: subteD! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test01BusChargesFullPriceByDistanceWithoutDiscount

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test02BusChargesAccordingToTheFareTableRange

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: belgrano to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |
	card := self studentCard.
	bus60 charge: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |
	card := self studentCard.
	bus60 charge: card from: constitucion to: belgrano at: (self november: 23 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test05RetireeFirstTripOfTheDayIsFree

	| card |
	card := self retireeCard.
	(self subteDAt: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).

	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test06RetireePaysFullPriceAfterTwoTripsInTheSameDay

	| card |
	card := self retireeCard.
	(self subteDAt: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 22 at: 12 minutes: 0).
	(self subteDAt: callao) charge: card towards: palermo at: (self november: 22 at: 15 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test07RetireeHasTwoFreeTripsEachDay

	| card |
	card := self retireeCard.
	(self subteDAt: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 22 at: 12 minutes: 0).
	(self subteDAt: callao) charge: card towards: palermo at: (self november: 23 at: 15 minutes: 0).

	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test08SubwayChargesAFixedPrice

	| card |
	card := self cardWithoutDiscount.
	(self subteDAt: callao) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test09TrainChargesByDistanceToTheDirectionOnEntry

	| card |
	card := self cardWithoutDiscount.
	(self mitreAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test10TrainRefundsTheDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	(self mitreAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	(self mitreAt: belgranoMitre) registerExitOf: card.

	self assert: card wasChargedFrom: 10000 * peso by: 400 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test11TrainRefundKeepsTheDiscountOfTheTrip

	| card |
	card := self studentCard.
	(self mitreAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 24 at: 9 minutes: 0).
	(self mitreAt: belgranoMitre) registerExitOf: card.

	self assert: card wasChargedFrom: 10000 * peso by: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test12TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 10000 * peso by: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test13TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1).

	self assert: card wasChargedFrom: 10000 * peso by: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test14TransfersAreCountedFromTheStartOfTheLastTrip

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30).
	(self subteDAt: palermo) charge: card towards: congresoDeTucuman at: (self november: 25 at: 13 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test15StudentTransferDiscountIsNotCumulativeOnWeekdays

	| card |
	card := self studentCard.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 10000 * peso by: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test16StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 10000 * peso by: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test17RetireeGetsTransferDiscountAfterTheFreeTrips

	| card |
	card := self retireeCard.
	(self subteDAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0).
	(self subteDAt: palermo) charge: card towards: congresoDeTucuman at: (self november: 25 at: 10 minutes: 30).
	(self subteDAt: callao) charge: card towards: palermo at: (self november: 25 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 10000 * peso by: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test18TrainRefundKeepsTheTransferDiscount

	| card |
	card := self cardWithoutDiscount.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 8 minutes: 0).
	(self mitreAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	(self mitreAt: belgranoMitre) registerExitOf: card.

	self assert: card wasChargedFrom: 10000 * peso by: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test19CanNotTravelWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.

	self
		should: [ bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test20CanTravelWithExactBalance

	| card |
	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	bus60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: (0 * peso) equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test21OriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ bus60 charge: card from: retiro to: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test22StopsMustBelongToTheMeansOfTransport

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ bus60 charge: card from: constitucion to: retiroMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription.
	self
		should: [ bus60 charge: card from: palermo to: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test23TurnstileStopMustBelongToTheMeansOfTransport

	self
		should: [ SubwayTurnstile at: retiro of: subteD ]
		failWith: TransportLine stopsMustBelongToLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test24MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine named: 'Corta' withStops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: TransportLine mustHaveAtLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test25SubwayDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ (self subteDAt: tribunales) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: Turnstile directionMustBeHeadOrLastStopErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test26TrainDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ (self mitreAt: retiroMitre) charge: card towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: Turnstile directionMustBeHeadOrLastStopErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:33:37 am (UTC)'!
test27CanNotBoardTowardsTheSameStop

	| card |
	card := self cardWithoutDiscount.

	self
		should: [ (self mitreAt: tigre) charge: card towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine originAndDestinationMustBeDifferentErrorDescription.
	self assert: card trips isEmpty! !
