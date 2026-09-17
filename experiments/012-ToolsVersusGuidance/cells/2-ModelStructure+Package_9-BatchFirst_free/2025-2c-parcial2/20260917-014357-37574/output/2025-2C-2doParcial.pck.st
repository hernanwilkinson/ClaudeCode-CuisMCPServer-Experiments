'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:47:01 am'!
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
	instanceVariableNames: 'bus'
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
	instanceVariableNames: 'meansOfTransport origin destination start paymentRatio amountCharged'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
Object subclass: #Turnstile
	instanceVariableNames: 'stop meansOfTransport'
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

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subwayD mitreRetiro mitreBelgrano sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
numberOfTrips

	^trips size! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
endLastTripAt: aStop

	balance := balance + (trips last endAt: aStop)! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
payTripIn: aMeansOfTransport from: anOrigin to: aDestination on: aDateTime

	| price ratio amount |
	price := aMeansOfTransport priceFrom: anOrigin to: aDestination.
	ratio := self paymentRatioOn: aDateTime.
	amount := price * ratio.
	self assertCanPay: amount.

	balance := balance - amount.
	trips add: (Trip in: aMeansOfTransport from: anOrigin to: aDestination startingOn: aDateTime paymentRatio: ratio amountCharged: amount)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
isTransferOn: aDateTime

	^trips notEmpty and: [ trips last isFollowedByTransferOn: aDateTime ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
paymentRatioOn: aDateTime

	^(discount paymentRatioFor: self on: aDateTime) min: (self transferPaymentRatioOn: aDateTime)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
transferPaymentRatioOn: aDateTime

	^(self isTransferOn: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeFor: aBus

	bus := aBus! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime

	aCard payTripIn: bus from: anOrigin to: aDestination on: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
for: aBus

	^self new initializeFor: aBus! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
paymentRatioFor: aCard on: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
paymentRatioFor: aCard on: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
paymentRatioFor: aCard on: aDateTime

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'limits' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
paymentRatioFor: aCard on: aDateTime

	| day |
	day := aDateTime date day.

	^(day isSaturday or: [ day isSunday ]) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeWithRanges: distanceLimitsToCosts

	ranges := distanceLimitsToCosts! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
costFor: aDistance

	^(ranges detect: [ :distanceLimitToCost | aDistance <= distanceLimitToCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
fixed: aCost

	^self withRanges: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
withRanges: distanceLimitsToCosts

	^self new initializeWithRanges: distanceLimitsToCosts! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
isTerminal: aStop

	^aStop = stops first or: [ aStop = stops last ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
assertIsTerminal: aStop

	(self isTerminal: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
priceFrom: anOrigin to: aDestination

	self assertIsValidTripFrom: anOrigin to: aDestination.

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.

	^self new initializeWithStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop is not in the route of the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeNamed: aName atDistanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
named: aName atDistanceToHeadOfLine: aDistance

	^self new initializeNamed: aName atDistanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeIn: aMeansOfTransport from: anOrigin to: aDestination startingOn: aDateTime paymentRatio: aRatio amountCharged: anAmount

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	paymentRatio := aRatio.
	amountCharged := anAmount! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
isFollowedByTransferOn: aDateTime

	^(start distanceTo: aDateTime) <= self class maximumTimeForTransfer! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
endAt: aStop

	| actualAmount refund |
	actualAmount := (meansOfTransport priceFrom: origin to: aStop) * paymentRatio.
	refund := amountCharged - actualAmount.
	destination := aStop.
	amountCharged := actualAmount.

	^refund! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
in: aMeansOfTransport from: anOrigin to: aDestination startingOn: aDateTime paymentRatio: aRatio amountCharged: anAmount

	^self new initializeIn: aMeansOfTransport from: anOrigin to: aDestination startingOn: aDateTime paymentRatio: aRatio amountCharged: anAmount! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
maximumTimeForTransfer

	^2 * hour! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
initializeAt: aStop of: aMeansOfTransport

	stop := aStop.
	meansOfTransport := aMeansOfTransport! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
charge: aCard towards: aDirection on: aDateTime

	meansOfTransport assertIsTerminal: aDirection.

	aCard payTripIn: meansOfTransport from: stop to: aDirection on: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
at: aStop of: aMeansOfTransport

	aMeansOfTransport assertIncludes: aStop.

	^self new initializeAt: aStop of: aMeansOfTransport! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:45:47 am (UTC)'!
registerExitOf: aCard

	aCard endLastTripAt: stop! !

!PublicTransportTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' atDistanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceToHeadOfLine: 5 * kilometer.
	retiro := Stop named: 'Retiro' atDistanceToHeadOfLine: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' atDistanceToHeadOfLine: 12 * kilometer.
	line60 := MeansOfTransport
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withRanges: { (5 * kilometer) -> (600 * peso). (10 * kilometer) -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congreso := Stop named: 'Congreso de Tucumán' atDistanceToHeadOfLine: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceToHeadOfLine: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceToHeadOfLine: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceToHeadOfLine: 6 * kilometer.
	subwayD := MeansOfTransport
		withStops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	mitreRetiro := Stop named: 'Retiro' atDistanceToHeadOfLine: 0 * kilometer.
	mitreBelgrano := Stop named: 'Belgrano' atDistanceToHeadOfLine: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceToHeadOfLine: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceToHeadOfLine: 28 * kilometer.
	mitre := MeansOfTransport
		withStops: { mitreRetiro. mitreBelgrano. sanIsidro. tigre }
		fareTable: (FareTable withRanges: { (15 * kilometer) -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
assert: aBlock chargesToCard: aCard amount: anAmount

	| previousBalance |
	previousBalance := aCard balance.
	aBlock value.
	self assert: anAmount equals: previousBalance - aCard balance! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
charge: aCard inLine60From: anOrigin to: aDestination on: aDateTime

	(BusCardReader for: line60) charge: aCard from: anOrigin to: aDestination on: aDateTime! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
charge: aCard inSubwayDAt: aStop towards: aDirection on: aDateTime

	(Turnstile at: aStop of: subwayD) charge: aCard towards: aDirection on: aDateTime! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
fullBalance

	^10000 * peso! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
november: aDayNumber hours: anHour minutes: aMinute

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test01BusChargesFullPriceOfDistanceToCardWithoutDiscount

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		assert: [ self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0) ]
		chargesToCard: card
		amount: 600 * peso! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test02BusChargesAccordingToFareTableRangeOfDistance

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		assert: [ self charge: card inLine60From: belgrano to: constitucion on: (self november: 25 hours: 10 minutes: 0) ]
		chargesToCard: card
		amount: 1300 * peso.
	self
		assert: [ self charge: card inLine60From: plazaDeMayo to: belgrano on: (self november: 26 hours: 10 minutes: 0) ]
		chargesToCard: card
		amount: 1000 * peso! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test03StudentPaysHalfFromMondayToFriday

	| card |
	card := BajeCard studentWithBalance: self fullBalance.

	self
		assert: [ self charge: card inLine60From: constitucion to: belgrano on: (self november: 24 hours: 11 minutes: 0) ]
		chargesToCard: card
		amount: 650 * peso! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |
	card := BajeCard studentWithBalance: self fullBalance.

	self
		assert: [ self charge: card inLine60From: constitucion to: belgrano on: (self november: 22 hours: 11 minutes: 0) ]
		chargesToCard: card
		amount: 1300 * peso.
	self
		assert: [ self charge: card inLine60From: constitucion to: belgrano on: (self november: 23 hours: 18 minutes: 0) ]
		chargesToCard: card
		amount: 1300 * peso! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |
	card := BajeCard retireeWithBalance: self fullBalance.

	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: congreso on: (self november: 22 hours: 9 minutes: 0) ]
		chargesToCard: card
		amount: 0 * peso.
	self
		assert: [ self charge: card inSubwayDAt: congreso towards: palermo on: (self november: 22 hours: 12 minutes: 0) ]
		chargesToCard: card
		amount: 0 * peso.
	self
		assert: [ self charge: card inSubwayDAt: palermo towards: congreso on: (self november: 22 hours: 15 minutes: 0) ]
		chargesToCard: card
		amount: 1000 * peso! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test06RetireeFreeTripsAreCountedPerDay

	| card |
	card := BajeCard retireeWithBalance: self fullBalance.

	self charge: card inSubwayDAt: tribunales towards: congreso on: (self november: 22 hours: 9 minutes: 0).
	self charge: card inSubwayDAt: congreso towards: palermo on: (self november: 22 hours: 12 minutes: 0).

	self
		assert: [ self charge: card inSubwayDAt: palermo towards: congreso on: (self november: 23 hours: 9 minutes: 0) ]
		chargesToCard: card
		amount: 0 * peso! !

!PublicTransportTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test07RetireeCanMakeFreeTripWithoutBalance

	| card |
	card := BajeCard retireeWithBalance: 0 * peso.

	self charge: card inSubwayDAt: tribunales towards: congreso on: (self november: 22 hours: 9 minutes: 0).

	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test08TripWithinTwoHoursOfLastTripStartPaysHalf

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		assert: [ self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0) ]
		chargesToCard: card
		amount: 600 * peso.
	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 25 hours: 10 minutes: 30) ]
		chargesToCard: card
		amount: 500 * peso! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test09TransfersAreUnlimitedAndCountFromLastTripStart

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0).
	self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 25 hours: 11 minutes: 30).

	self
		assert: [ self charge: card inSubwayDAt: palermo towards: congreso on: (self november: 25 hours: 13 minutes: 30) ]
		chargesToCard: card
		amount: 500 * peso! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test10TripAfterTwoHoursOfLastTripStartIsNotTransfer

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0).

	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 25 hours: 12 minutes: 1) ]
		chargesToCard: card
		amount: 1000 * peso! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test11StudentDiscountIsNotCumulativeWithTransfer

	| card |
	card := BajeCard studentWithBalance: self fullBalance.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0).

	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 25 hours: 10 minutes: 30) ]
		chargesToCard: card
		amount: 500 * peso! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test12StudentGetsTransferDiscountOnWeekends

	| card |
	card := BajeCard studentWithBalance: self fullBalance.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 22 hours: 10 minutes: 0).

	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 22 hours: 10 minutes: 30) ]
		chargesToCard: card
		amount: 500 * peso! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test13RetireeFreeTripIsNotChargedWhenTransferring

	| card |
	card := BajeCard retireeWithBalance: self fullBalance.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0).
	self
		assert: [ self charge: card inSubwayDAt: tribunales towards: palermo on: (self november: 25 hours: 10 minutes: 30) ]
		chargesToCard: card
		amount: 0 * peso.
	self
		assert: [ self charge: card inSubwayDAt: palermo towards: congreso on: (self november: 25 hours: 11 minutes: 0) ]
		chargesToCard: card
		amount: 500 * peso! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test14TrainChargesDistanceToDirectionOnEntry

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		assert: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card towards: mitreRetiro on: (self november: 22 hours: 9 minutes: 0) ]
		chargesToCard: card
		amount: 600 * peso! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test15TrainRefundsDifferenceOnExit

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: mitreRetiro on: (self november: 22 hours: 9 minutes: 0).

	self
		assert: [ (TrainTurnstile at: mitreBelgrano of: mitre) registerExitOf: card ]
		chargesToCard: card
		amount: -200 * peso! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test16TrainRefundKeepsDiscountAppliedOnEntry

	| card |
	card := BajeCard studentWithBalance: self fullBalance.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: mitreRetiro on: (self november: 25 hours: 9 minutes: 0).

	self
		assert: [ (TrainTurnstile at: mitreBelgrano of: mitre) registerExitOf: card ]
		chargesToCard: card
		amount: -100 * peso! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test17TrainExitAtSameFareKeepsCharge

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.
	(TrainTurnstile at: tigre of: mitre) charge: card towards: mitreRetiro on: (self november: 22 hours: 9 minutes: 0).

	self
		assert: [ (TrainTurnstile at: mitreBelgrano of: mitre) registerExitOf: card ]
		chargesToCard: card
		amount: 0 * peso.
	self assert: 1 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test18CanNotPayTripWithoutEnoughBalance

	| card |
	card := BajeCard withoutDiscountWithBalance: 599 * peso.

	self
		should: [ self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.

	self assert: 599 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test19CanPayTripWithExactBalance

	| card |
	card := BajeCard withoutDiscountWithBalance: 600 * peso.

	self charge: card inLine60From: constitucion to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0).

	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ MeansOfTransport withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: MeansOfTransport atLeastTwoStopsErrorDescription! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test21TripStopsMustBeInTheMeansOfTransport

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		should: [ self charge: card inLine60From: constitucion to: mitreBelgrano on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.
	self
		should: [ self charge: card inLine60From: tribunales to: plazaDeMayo on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription.

	self assert: self fullBalance equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test22TripOriginAndDestinationMustBeDifferent

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		should: [ self charge: card inLine60From: retiro to: retiro on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self
		should: [ self charge: card inSubwayDAt: palermo towards: palermo on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.

	self assert: self fullBalance equals: card balance! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test23TurnstileDirectionMustBeHeadOfLineOrLastStop

	| card |
	card := BajeCard withoutDiscountWithBalance: self fullBalance.

	self
		should: [ self charge: card inSubwayDAt: tribunales towards: callao on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ (TrainTurnstile at: tigre of: mitre) charge: card towards: sanIsidro on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self
		should: [ (TrainTurnstile at: tigre of: mitre) charge: card towards: retiro on: (self november: 25 hours: 10 minutes: 0) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.

	self assert: self fullBalance equals: card balance! !

!PublicTransportTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 4:46:46 am (UTC)'!
test24TurnstileStopMustBeInTheMeansOfTransport

	self
		should: [ Turnstile at: retiro of: subwayD ]
		failWith: MeansOfTransport stopNotInRouteErrorDescription! !
