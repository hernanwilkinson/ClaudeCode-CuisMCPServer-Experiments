'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:36:10 am'!
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
	instanceVariableNames: 'transport'
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

!classDefinition: #FareRange category: #'2025-2C-2doParcial'!
Object subclass: #FareRange
	instanceVariableNames: 'maximumDistance cost'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareRange class' category: #'2025-2C-2doParcial'!
FareRange class
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
	instanceVariableNames: 'transport origin destination startTime paymentRatio'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
Object subclass: #Turnstile
	instanceVariableNames: 'transport stop'
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

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroLine60 belgranoLine60 line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeWithDiscount: aDiscount

	discount := aDiscount.
	balance := 0 * peso.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
balance

	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
trips

	^trips copy! !

!BajeCard methodsFor: 'balance' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
load: anAmount

	balance := balance + anAmount! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
adjustLastTripEndingAt: anExitStop

	| refund |

	refund := trips last endAt: anExitStop.
	balance := balance + refund.

	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
payTripOn: aTransport from: anOrigin to: aDestination at: aDateTime

	| trip |

	trip := Trip on: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingRatio: (self paymentRatioAt: aDateTime).
	self assertCanPay: trip amountCharged.

	balance := balance - trip amountCharged.
	trips add: trip.

	^trip amountCharged! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:34:53 am (UTC)'!
paymentRatioAt: aDateTime

	"Discounts are not cumulative, so only the best one applies"
	^(discount paymentRatioFor: self at: aDateTime) min: (self transferPaymentRatioAt: aDateTime)! !

!BajeCard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
transferPaymentRatioAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ 1/2 ]
		ifFalse: [ 1 ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last isWithinTransferWindowOf: aDateTime ]! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
numberOfTripsOnSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedOnSameDayAs: aDateTime ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
withDiscount: aDiscount

	^self new initializeWithDiscount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeFor: aTransport

	transport := aTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripOn: transport from: anOrigin to: aDestination at: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
for: aTransport

	^self new initializeFor: aTransport! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
paymentRatioFor: aCard at: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
paymentRatioFor: aCard at: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
paymentRatioFor: aCard at: aDateTime

	^(aCard numberOfTripsOnSameDayAs: aDateTime) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
paymentRatioFor: aCard at: aDateTime

	^(self isWeekend: aDateTime)
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
isWeekend: aDateTime

	| day |

	day := aDateTime date day.
	^day isSaturday or: [ day isSunday ]! !

!FareRange methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeUpTo: aMaximumDistance costing: aCost

	maximumDistance := aMaximumDistance.
	cost := aCost! !

!FareRange methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
cost

	^cost! !

!FareRange methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
includes: aDistance

	^aDistance <= maximumDistance! !

!FareRange class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
upTo: aMaximumDistance costing: aCost

	^self new initializeUpTo: aMaximumDistance costing: aCost! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeWithRanges: aFareRanges

	ranges := aFareRanges asArray! !

!FareTable methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
costFor: aDistance

	^(ranges detect: [ :aRange | aRange includes: aDistance ]) cost! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
fixedCost: aCost

	^self withRanges: { FareRange upTo: PlusInfinity new costing: aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
withRanges: aFareRanges

	^self new initializeWithRanges: aFareRanges! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
headOfLine

	^stops first! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
isEndOfLine: aStop

	^aStop = self headOfLine or: [ aStop = self lastStop ]! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
lastStop

	^stops last! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwo: aStops.

	^self new initializeWithStops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
assertHasAtLeastTwo: aStops

	aStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
stopNotInTransportErrorDescription

	^'The stop does not belong to the means of transport'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeOn: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aPaymentRatio

	transport := aTransport.
	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	paymentRatio := aPaymentRatio! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
amountCharged

	^(transport costFrom: origin to: destination) * paymentRatio! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
isWithinTransferWindowOf: aDateTime

	^(startTime distanceTo: aDateTime) <= self class transferWindow! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
startedOnSameDayAs: aDateTime

	^startTime sameDayAs: aDateTime! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
endAt: anExitStop

	| previousAmountCharged |

	previousAmountCharged := self amountCharged.
	destination := anExitStop.

	^previousAmountCharged - self amountCharged! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
on: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aPaymentRatio

	aTransport assertIsValidTripFrom: anOrigin to: aDestination.

	^self new initializeOn: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingRatio: aPaymentRatio! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
transferWindow

	^2 * hour! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
initializeOf: aTransport at: aStop

	transport := aTransport.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	self assertIsValidDirection: aDirection.

	^aCard payTripOn: transport from: stop to: aDirection at: aDateTime! !

!Turnstile methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
assertIsValidDirection: aDirection

	(transport isEndOfLine: aDirection) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
of: aTransport at: aStop

	aTransport assertIncludes: aStop.

	^self new initializeOf: aTransport at: aStop! !

!Turnstile class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:34:47 am (UTC)'!
registerExitOf: aCard

	^aCard adjustLastTripEndingAt: stop! !

!PublicTransportTest methodsFor: 'setUp' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroLine60 := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoLine60 := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		withStops: { constitucion. plazaDeMayo. retiroLine60. belgranoLine60 }
		fareTable: (FareTable withRanges: {
			FareRange upTo: 5 * kilometer costing: 600 * peso.
			FareRange upTo: 10 * kilometer costing: 1000 * peso.
			FareRange upTo: PlusInfinity new costing: 1300 * peso }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixedCost: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTrain := MeansOfTransport
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withRanges: {
			FareRange upTo: 15 * kilometer costing: 400 * peso.
			FareRange upTo: PlusInfinity new costing: 600 * peso })! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
assertNothingWasChargedTo: aCard

	self assert: 10000 * peso equals: aCard balance.
	self assert: aCard trips isEmpty! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
cardWith: aDiscount

	^(BajeCard withDiscount: aDiscount)
		load: 10000 * peso;
		yourself! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
line60Reader

	^BusCardReader for: line60! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
mitreTurnstileAt: aStop

	^TrainTurnstile of: mitreTrain at: aStop! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute seconds: 0)! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
subwayDTurnstileAt: aStop

	^SubwayTurnstile of: subwayD at: aStop! !

!PublicTransportTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test01MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ MeansOfTransport withStops: { constitucion } fareTable: (FareTable fixedCost: 1000 * peso) ]
		failWith: MeansOfTransport atLeastTwoStopsErrorDescription! !

!PublicTransportTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test02DistanceBetweenStopsIsTheAbsoluteDifferenceOfTheirDistancesToTheHeadOfLine

	self assert: 7 * kilometer equals: (belgranoLine60 distanceTo: plazaDeMayo).
	self assert: 7 * kilometer equals: (plazaDeMayo distanceTo: belgranoLine60)! !

!PublicTransportTest methodsFor: 'tests - means of transport' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test03CostDependsOnTheFareTableRangeOfTheDistance

	self assert: 600 * peso equals: (line60 costFrom: constitucion to: plazaDeMayo).
	self assert: 1000 * peso equals: (line60 costFrom: plazaDeMayo to: belgranoLine60).
	self assert: 1000 * peso equals: (line60 costFrom: constitucion to: retiroLine60).
	self assert: 1300 * peso equals: (line60 costFrom: constitucion to: belgranoLine60)! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test04BusChargesFullPriceToCardWithoutDiscount

	| card |

	card := self cardWith: NoDiscount new.

	self assert: 600 * peso equals: (self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 9400 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test05StudentPaysHalfPriceOnWeekdays

	| card |

	card := self cardWith: StudentDiscount new.

	self assert: 650 * peso equals: (self line60Reader charge: card from: constitucion to: belgranoLine60 at: (self november: 24 at: 11 minutes: 0)).
	self assert: 9350 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test06StudentPaysFullPriceOnWeekends

	| card |

	card := self cardWith: StudentDiscount new.

	self assert: 1300 * peso equals: (self line60Reader charge: card from: constitucion to: belgranoLine60 at: (self november: 22 at: 11 minutes: 0)).
	self assert: 1300 * peso equals: (self line60Reader charge: card from: constitucion to: belgranoLine60 at: (self november: 23 at: 11 minutes: 0))! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test07CanNotTravelFromAStopOfAnotherMeansOfTransport

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ self line60Reader charge: card from: retiroMitre to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInTransportErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test08CanNotTravelToAStopOfAnotherMeansOfTransport

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ self line60Reader charge: card from: plazaDeMayo to: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport stopNotInTransportErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test09OriginAndDestinationMustBeDifferent

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ self line60Reader charge: card from: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test10CanNotPayWithInsufficientBalance

	| card |

	card := (BajeCard withDiscount: NoDiscount new) load: 599 * peso; yourself.

	self
		should: [ self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: card trips isEmpty! !

!PublicTransportTest methodsFor: 'tests - card' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test11CanPayWithExactBalance

	| card |

	card := (BajeCard withDiscount: NoDiscount new) load: 600 * peso; yourself.

	self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 0 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test12SubwayChargesAFixedCost

	| card |

	card := self cardWith: NoDiscount new.

	self assert: 1000 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 1000 * peso equals: ((self subwayDTurnstileAt: callao) charge: card towards: congresoDeTucuman at: (self november: 25 at: 18 minutes: 0))! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test13RetireeHasTwoFreeTripsPerDay

	| card |

	card := self cardWith: RetireeDiscount new.

	self assert: 0 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0)).
	self assert: 0 * peso equals: ((self subwayDTurnstileAt: congresoDeTucuman) charge: card towards: palermo at: (self november: 22 at: 13 minutes: 0)).
	self assert: 1000 * peso equals: ((self subwayDTurnstileAt: palermo) charge: card towards: congresoDeTucuman at: (self november: 22 at: 18 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test14RetireeFreeTripsAreRenewedEachDay

	| card |

	card := self cardWith: RetireeDiscount new.

	(self subwayDTurnstileAt: tribunales) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	(self subwayDTurnstileAt: congresoDeTucuman) charge: card towards: palermo at: (self november: 22 at: 13 minutes: 0).

	self assert: 0 * peso equals: ((self subwayDTurnstileAt: palermo) charge: card towards: congresoDeTucuman at: (self november: 23 at: 18 minutes: 0))! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test15SubwayDirectionMustBeAnEndOfTheLine

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ (self subwayDTurnstileAt: tribunales) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: Turnstile invalidDirectionErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test16SubwayDirectionCanNotBeTheBoardingStop

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ (self subwayDTurnstileAt: palermo) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: MeansOfTransport sameOriginAndDestinationErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test17SubwayDirectionMustBeAnEndOfTheSameLine

	| card |

	card := self cardWith: NoDiscount new.

	self
		should: [ (self subwayDTurnstileAt: tribunales) charge: card towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: Turnstile invalidDirectionErrorDescription.
	self assertNothingWasChargedTo: card! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test18TurnstileMustBeAtAStopOfItsMeansOfTransport

	self
		should: [ self subwayDTurnstileAt: sanIsidro ]
		failWith: MeansOfTransport stopNotInTransportErrorDescription! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test19TrainChargesOnEntryByDistanceToTheDirection

	| card |

	card := self cardWith: NoDiscount new.

	self assert: 600 * peso equals: ((self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0)).
	self assert: 400 * peso equals: ((self mitreTurnstileAt: sanIsidro) charge: card towards: tigre at: (self november: 22 at: 18 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test20TrainExitRefundsTheDifferenceOfTheTripMade

	| card |

	card := self cardWith: NoDiscount new.
	(self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: 200 * peso equals: ((self mitreTurnstileAt: belgranoMitre) registerExitOf: card).
	self assert: 9600 * peso equals: card balance.
	self assert: belgranoMitre equals: card trips last destination! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test21TrainExitWithTheSameFareRefundsNothing

	| card |

	card := self cardWith: NoDiscount new.
	(self mitreTurnstileAt: retiroMitre) charge: card towards: tigre at: (self november: 22 at: 9 minutes: 0).

	self assert: 0 * peso equals: ((self mitreTurnstileAt: sanIsidro) registerExitOf: card).
	self assert: 9400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test22TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |

	card := self cardWith: StudentDiscount new.
	(self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 9 minutes: 0).

	self assert: 100 * peso equals: ((self mitreTurnstileAt: belgranoMitre) registerExitOf: card).
	self assert: 9800 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test23RetireeFreeTrainTripRefundsNothing

	| card |

	card := self cardWith: RetireeDiscount new.
	(self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 9 minutes: 0).

	self assert: 0 * peso equals: ((self mitreTurnstileAt: belgranoMitre) registerExitOf: card).
	self assert: 10000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test24TripWithinTwoHoursOfTheLastTripIsATransfer

	| card |

	card := self cardWith: NoDiscount new.

	self assert: 600 * peso equals: (self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test25TripExactlyTwoHoursAfterTheLastTripIsATransfer

	| card |

	card := self cardWith: NoDiscount new.

	self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 500 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 0))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test26TripMoreThanTwoHoursAfterTheLastTripIsNotATransfer

	| card |

	card := self cardWith: NoDiscount new.

	self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 1000 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test27TransfersHaveNoLimitAndCountFromTheStartOfTheLastTrip

	| card |

	card := self cardWith: NoDiscount new.

	self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: 500 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30)).
	self assert: 300 * peso equals: ((self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 13 minutes: 0)).
	self assert: 650 * peso equals: (self line60Reader charge: card from: belgranoLine60 to: constitucion at: (self november: 25 at: 14 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test28StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |

	card := self cardWith: StudentDiscount new.

	self assert: 300 * peso equals: (self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test29StudentGetsTransferDiscountOnWeekends

	| card |

	card := self cardWith: StudentDiscount new.

	self assert: 600 * peso equals: (self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test30RetireeGetsTransferDiscountOnceFreeTripsAreUsed

	| card |

	card := self cardWith: RetireeDiscount new.

	self assert: 0 * peso equals: (self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0)).
	self assert: 0 * peso equals: ((self subwayDTurnstileAt: tribunales) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30)).
	self assert: 300 * peso equals: ((self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 11 minutes: 0))! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:35:50 am (UTC)'!
test31TrainExitRefundKeepsTheTransferDiscountOfTheEntry

	| card |

	card := self cardWith: NoDiscount new.
	self line60Reader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	(self mitreTurnstileAt: sanIsidro) charge: card towards: retiroMitre at: (self november: 25 at: 11 minutes: 0).

	self assert: 100 * peso equals: ((self mitreTurnstileAt: belgranoMitre) registerExitOf: card).
	self assert: 9200 * peso equals: card balance! !
