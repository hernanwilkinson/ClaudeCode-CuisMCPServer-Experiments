'From Cuis7.9 [latest update: #8166] on 11 September 2026 at 1:28:52 pm'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!
SystemOrganization addCategory: #'2025-2C-2doParcial'!


!classDefinition: #BAJECard category: #'2025-2C-2doParcial'!
Object subclass: #BAJECard
	instanceVariableNames: 'balance trips discount'
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
	instanceVariableNames: 'stop'
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

!classDefinition: #FareRange category: #'2025-2C-2doParcial'!
Object subclass: #FareRange
	instanceVariableNames: 'limit fare'
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
	instanceVariableNames: 'name distanceFromHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Stop class' category: #'2025-2C-2doParcial'!
Stop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'meansOfTransport origin destination start fareProportion'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #CardReaderTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #CardReaderTest
	instanceVariableNames: 'constitucion plazaDeMayo busRetiro busBelgrano line60 busReader congresoDeTucuman tribunales callao palermo subwayD tribunalesTurnstile trainRetiro trainBelgrano sanIsidro tigre mitre sanIsidroTurnstile trainBelgranoTurnstile'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'CardReaderTest class' category: #'2025-2C-2doParcial-Tests'!
CardReaderTest class
	instanceVariableNames: ''!

!classDefinition: #MeansOfTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #MeansOfTransportTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'MeansOfTransportTest class' category: #'2025-2C-2doParcial-Tests'!
MeansOfTransportTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount

	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
endLastTripAt: aStop

	| refund |
	refund := trips last endAt: aStop.
	balance := balance + refund.
	
	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime

	| trip |
	trip := Trip 
		on: aMeansOfTransport 
		from: anOrigin 
		to: aDestination 
		startingAt: aDateTime 
		paying: (self fareProportionForTripAt: aDateTime).
	self debit: trip cost.
	trips add: trip.
	
	^trip cost! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
debit: anAmount

	self assertCanPay: anAmount.
	balance := balance - anAmount! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionForTripAt: aDateTime

	^discount 
		fareProportionForTripAt: aDateTime 
		of: self 
		ifNotApplicable: [ self fareProportionWithoutDiscountForTripAt: aDateTime ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionWithoutDiscountForTripAt: aDateTime

	^(self isTransferAt: aDateTime) 
		ifTrue: [ self class transferFareProportion ]
		ifFalse: [ self class fullFareProportion ]! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedAtMost: self class transferTimeLimit before: aDateTime ]! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
numberOfTripsStartedTheSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedTheSameDayAs: aDateTime ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
withBalance: aBalance discount: aCardDiscount

	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BAJECard class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fullFareProportion

	^1! !

!BAJECard class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
transferFareProportion

	^1/2! !

!BAJECard class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
transferTimeLimit

	^2 * hour! !

!CardDiscount methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionForTripAt: aDateTime of: aCard ifNotApplicable: aNotApplicableBlock

	self subclassResponsibility! !

!NoDiscount methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionForTripAt: aDateTime of: aCard ifNotApplicable: aNotApplicableBlock

	^aNotApplicableBlock value! !

!RetireeDiscount methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionForTripAt: aDateTime of: aCard ifNotApplicable: aNotApplicableBlock

	^(aCard numberOfTripsStartedTheSameDayAs: aDateTime) < self class freeTripsPerDay
		ifTrue: [ self class freeTripFareProportion ]
		ifFalse: [ aNotApplicableBlock value ]! !

!RetireeDiscount class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
freeTripFareProportion

	^0! !

!RetireeDiscount class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
fareProportionForTripAt: aDateTime of: aCard ifNotApplicable: aNotApplicableBlock

	^(self isWeekend: aDateTime date)
		ifTrue: [ aNotApplicableBlock value ]
		ifFalse: [ self class weekdayFareProportion ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
isWeekend: aDate

	^aDate isSaturday or: [ aDate isSunday ]! !

!StudentDiscount class methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
weekdayFareProportion

	^1/2! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
initializeOn: aMeansOfTransport

	meansOfTransport := aMeansOfTransport! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
on: aMeansOfTransport

	^self new initializeOn: aMeansOfTransport! !

!TurnstileCardReader methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
initializeOn: aMeansOfTransport at: aStop

	meansOfTransport := aMeansOfTransport.
	stop := aStop! !

!TurnstileCardReader methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	meansOfTransport assertIsHeadOrEndOfTheLine: aDirection.
	
	^aCard payTripOn: meansOfTransport from: stop to: aDirection at: aDateTime! !

!TurnstileCardReader class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
on: aMeansOfTransport at: aStop

	aMeansOfTransport assertIncludes: aStop.
	
	^self new initializeOn: aMeansOfTransport at: aStop! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
refundExitOf: aCard

	^aCard endLastTripAt: stop! !

!FareRange methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
initializeUpTo: aDistance costs: aFare

	limit := aDistance.
	fare := aFare! !

!FareRange methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
includes: aDistance

	^aDistance <= limit! !

!FareRange methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
fare

	^fare! !

!FareRange class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
upTo: aDistance costs: aFare

	^self new initializeUpTo: aDistance costs: aFare! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
initializeRanges: aSequenceOfFareRanges

	ranges := aSequenceOfFareRanges! !

!FareTable methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
fareFor: aDistance

	^(ranges detect: [ :aRange | aRange includes: aDistance ]) fare! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
fixed: aFare

	^self ranges: { FareRange upTo: PlusInfinity new costs: aFare }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
ranges: aSequenceOfFareRanges

	^self new initializeRanges: aSequenceOfFareRanges! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
initializeStops: aSequenceOfStops fareTable: aFareTable

	stops := aSequenceOfStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'fares' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
assertCanTravelFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class originAndDestinationMustBeDifferentErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
assertIsHeadOrEndOfTheLine: aStop

	(self isHeadOrEndOfTheLine: aStop) ifFalse: [ self error: self class directionMustBeHeadOrEndOfTheLineErrorDescription ]! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
isHeadOrEndOfTheLine: aStop

	^aStop = stops first or: [ aStop = stops last ]! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
stops: aSequenceOfStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aSequenceOfStops.
	
	^self new initializeStops: aSequenceOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
directionMustBeHeadOrEndOfTheLineErrorDescription

	^'The direction must be the head or the end of the line'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
mustHaveAtLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
originAndDestinationMustBeDifferentErrorDescription

	^'The origin and destination of a trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stop does not belong to the means of transport'! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
assertHasAtLeastTwoStops: aSequenceOfStops

	aSequenceOfStops size < 2 ifTrue: [ self error: self mustHaveAtLeastTwoStopsErrorDescription ]! !

!Stop methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
initializeNamed: aName atDistanceFromHead: aDistance

	name := aName.
	distanceFromHead := aDistance! !

!Stop methodsFor: 'distance' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
distanceFromHead

	^distanceFromHead! !

!Stop methodsFor: 'distance' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
distanceTo: aStop

	^(distanceFromHead - aStop distanceFromHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
named: aName atDistanceFromHead: aDistance

	^self new initializeNamed: aName atDistanceFromHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime paying: aFareProportion

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	fareProportion := aFareProportion! !

!Trip methodsFor: 'cost' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
cost

	^(meansOfTransport fareFrom: origin to: destination) * fareProportion! !

!Trip methodsFor: 'ending' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
endAt: aStop

	"Answers what was paid in excess for ending the trip before its destination"
	| costToDestination |
	costToDestination := self cost.
	destination := aStop.
	
	^costToDestination - self cost! !

!Trip methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
startedAtMost: aTimeSpan before: aDateTime

	^(start distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
startedTheSameDayAs: aDateTime

	^start sameDayAs: aDateTime! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime paying: aFareProportion

	aMeansOfTransport assertCanTravelFrom: anOrigin to: aDestination.
	
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime paying: aFareProportion! !

!CardReaderTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
createLine60

	constitucion := Stop named: 'Constitución' atDistanceFromHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceFromHead: 5 * kilometer.
	busRetiro := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	busBelgrano := Stop named: 'Belgrano' atDistanceFromHead: 12 * kilometer.
	line60 := MeansOfTransport 
		stops: { constitucion. plazaDeMayo. busRetiro. busBelgrano }
		fareTable: (FareTable ranges: { 
			FareRange upTo: 5 * kilometer costs: 600 * peso.
			FareRange upTo: 10 * kilometer costs: 1000 * peso.
			FareRange upTo: PlusInfinity new costs: 1300 * peso }).
	busReader := BusCardReader on: line60! !

!CardReaderTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
createMitre

	trainRetiro := Stop named: 'Retiro' atDistanceFromHead: 0 * kilometer.
	trainBelgrano := Stop named: 'Belgrano' atDistanceFromHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceFromHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceFromHead: 28 * kilometer.
	mitre := MeansOfTransport 
		stops: { trainRetiro. trainBelgrano. sanIsidro. tigre }
		fareTable: (FareTable ranges: { 
			FareRange upTo: 15 * kilometer costs: 400 * peso.
			FareRange upTo: PlusInfinity new costs: 600 * peso }).
	sanIsidroTurnstile := TrainCardReader on: mitre at: sanIsidro.
	trainBelgranoTurnstile := TrainCardReader on: mitre at: trainBelgrano! !

!CardReaderTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
createSubwayD

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' atDistanceFromHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceFromHead: 1.2 * kilometer.
	callao := Stop named: 'Callao' atDistanceFromHead: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceFromHead: 6 * kilometer.
	subwayD := MeansOfTransport 
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).
	tribunalesTurnstile := SubwayCardReader on: subwayD at: tribunales! !

!CardReaderTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
setUp

	self createLine60.
	self createSubwayD.
	self createMitre! !

!CardReaderTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
november: aDayNumber at: anHour

	^self november: aDayNumber at: anHour minutes: 0! !

!CardReaderTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(November / aDayNumber / 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!CardReaderTest methodsFor: 'tests - bus' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test01BusChargesTheFareOfTheDistanceBetweenOriginAndDestination

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10))
		equals: 600 * peso.
	self assert: card balance equals: 4400 * peso! !

!CardReaderTest methodsFor: 'tests - bus' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test02BusChargesTheFareOfTheRangeThatIncludesTheDistanceInEitherDirection

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: busBelgrano to: plazaDeMayo at: (self november: 25 at: 10))
		equals: 1000 * peso.
	self 
		assert: (busReader charge: card from: constitucion to: busBelgrano at: (self november: 25 at: 15))
		equals: 1300 * peso.
	self assert: card balance equals: 2700 * peso! !

!CardReaderTest methodsFor: 'tests - bus' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test05BusCanNotChargeATripFromAStopOfAnotherMeansOfTransport

	| card anotherRetiro |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	anotherRetiro := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	
	self 
		should: [ busReader charge: card from: anotherRetiro to: plazaDeMayo at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - bus' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test06BusCanNotChargeATripToAStopOfAnotherMeansOfTransport

	| card anotherRetiro |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	anotherRetiro := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	
	self 
		should: [ busReader charge: card from: plazaDeMayo to: anotherRetiro at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport stopNotInMeansOfTransportErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - bus' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test07BusCanNotChargeATripWithTheSameOriginAndDestination

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		should: [ busReader charge: card from: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport originAndDestinationMustBeDifferentErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - balance' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test03CanNotPayATripWithoutEnoughBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 599 * peso.
	
	self 
		should: [ busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: BAJECard insufficientBalanceErrorDescription.
			self assert: card balance equals: 599 * peso ]! !

!CardReaderTest methodsFor: 'tests - balance' stamp: 'HAW 11/Sep/2026, 4:28:44 pm (UTC)'!
test04CanPayATripWithAllTheBalance

	| card |
	card := BAJECard withoutDiscountWithBalance: 600 * peso.
	
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	
	self assert: card balance equals: 0 * peso! !

!CardReaderTest methodsFor: 'tests - subway' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test08SubwayChargesAFixedFareWhateverTheDirection

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 25 at: 10))
		equals: 1000 * peso.
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 15))
		equals: 1000 * peso.
	self assert: card balance equals: 3000 * peso! !

!CardReaderTest methodsFor: 'tests - subway' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test09SubwayCanNotChargeTowardsAStopThatIsNotTheHeadOrTheEndOfTheLine

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		should: [ tribunalesTurnstile charge: card towards: callao at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport directionMustBeHeadOrEndOfTheLineErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - subway' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
test10SubwayCanNotChargeTowardsTheStopOfItsTurnstile

	| card turnstile |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	turnstile := SubwayCardReader on: subwayD at: palermo.
	
	self 
		should: [ turnstile charge: card towards: palermo at: (self november: 25 at: 10) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport originAndDestinationMustBeDifferentErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - subway' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
test11SubwayTurnstileCanNotBeAtAStopOfAnotherMeansOfTransport

	self 
		should: [ SubwayCardReader on: subwayD at: plazaDeMayo ]
		raise: Error - MessageNotUnderstood
		withMessageText: MeansOfTransport stopNotInMeansOfTransportErrorDescription! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test12TrainChargesOnEntryTheFareToTheStopOfTheDirection

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		assert: (sanIsidroTurnstile charge: card towards: trainRetiro at: (self november: 22 at: 9))
		equals: 600 * peso.
	self 
		assert: (sanIsidroTurnstile charge: card towards: tigre at: (self november: 22 at: 15))
		equals: 400 * peso.
	self assert: card balance equals: 4000 * peso! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test13TrainRefundsOnExitTheDifferenceWithTheFareOfTheTripMade

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	sanIsidroTurnstile charge: card towards: trainRetiro at: (self november: 22 at: 9).
	
	self assert: (trainBelgranoTurnstile refundExitOf: card) equals: 200 * peso.
	self assert: card balance equals: 4600 * peso! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test14TrainCanNotChargeTowardsAStopThatIsNotTheHeadOrTheEndOfTheLine

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		should: [ sanIsidroTurnstile charge: card towards: trainBelgrano at: (self november: 22 at: 9) ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: MeansOfTransport directionMustBeHeadOrEndOfTheLineErrorDescription.
			self assert: card balance equals: 5000 * peso ]! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test28TrainRefundsOnExitTheDifferenceOfTheDiscountedFare

	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	
	self 
		assert: (sanIsidroTurnstile charge: card towards: trainRetiro at: (self november: 25 at: 9))
		equals: 300 * peso.
	self assert: (trainBelgranoTurnstile refundExitOf: card) equals: 100 * peso.
	self assert: card balance equals: 4800 * peso! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test29TrainRefundsOnExitTheDifferenceOfTheTransferFare

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 9).
	
	self 
		assert: (sanIsidroTurnstile charge: card towards: trainRetiro at: (self november: 22 at: 9 minutes: 30))
		equals: 300 * peso.
	self assert: (trainBelgranoTurnstile refundExitOf: card) equals: 100 * peso.
	self assert: card balance equals: 4200 * peso! !

!CardReaderTest methodsFor: 'tests - train' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test30TrainRefundsNothingOnExitOfAFreeTrip

	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	sanIsidroTurnstile charge: card towards: trainRetiro at: (self november: 22 at: 9).
	
	self assert: (trainBelgranoTurnstile refundExitOf: card) equals: 0 * peso.
	self assert: card balance equals: 5000 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test15ATripWithinTwoHoursOfTheStartOfTheLastOneIsATransferThatPaysHalfTheFare

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10))
		equals: 600 * peso.
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30))
		equals: 500 * peso.
	self assert: card balance equals: 3900 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test16ATripJustTwoHoursAfterTheStartOfTheLastOneIsATransfer

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 12))
		equals: 500 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test17ATripMoreThanTwoHoursAfterTheStartOfTheLastOneIsNotATransfer

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1))
		equals: 1000 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test18TransfersAreCountedFromTheStartOfTheLastTrip

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30).
	
	self 
		assert: (busReader charge: card from: plazaDeMayo to: constitucion at: (self november: 25 at: 13))
		equals: 300 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test19TransfersCanBeMadeFromTheTripOfThePreviousDay

	| card |
	card := BAJECard withoutDiscountWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 24 at: 23 minutes: 30).
	
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 25 at: 0 minutes: 30))
		equals: 500 * peso! !

!CardReaderTest methodsFor: 'tests - transfers' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
test20ATripThatCouldNotBePaidIsNotTakenIntoAccountForTransfers

	| card |
	card := BAJECard withoutDiscountWithBalance: 1000 * peso.
	[ busReader charge: card from: constitucion to: busBelgrano at: (self november: 25 at: 10) ]
		on: Error - MessageNotUnderstood
		do: [ :anError | ].
	
	self 
		assert: (busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 30))
		equals: 600 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
test21StudentsPayHalfTheFareFromMondayToFriday

	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: constitucion to: busBelgrano at: (self november: 24 at: 11))
		equals: 650 * peso.
	self 
		assert: (busReader charge: card from: constitucion to: busBelgrano at: (self november: 28 at: 11))
		equals: 650 * peso.
	self assert: card balance equals: 3700 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:46 pm (UTC)'!
test22StudentsPayTheFullFareOnWeekends

	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: constitucion to: busBelgrano at: (self november: 22 at: 11))
		equals: 1300 * peso.
	self 
		assert: (busReader charge: card from: constitucion to: busBelgrano at: (self november: 23 at: 11))
		equals: 1300 * peso.
	self assert: card balance equals: 2400 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test23StudentsDoNotAddTheTransferDiscountToTheirDiscount

	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 24 at: 10).
	
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 24 at: 10 minutes: 30))
		equals: 500 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test24StudentsGetTheTransferDiscountOnWeekends

	| card |
	card := BAJECard studentWithBalance: 5000 * peso.
	
	self 
		assert: (busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10))
		equals: 600 * peso.
	self 
		assert: (tribunalesTurnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30))
		equals: 500 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test25RetireesTravelForFreeTheFirstTwoTripsOfTheDay

	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9)) equals: 0 * peso.
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 13)) equals: 0 * peso.
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 17)) equals: 1000 * peso.
	self assert: card balance equals: 4000 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test26RetireesHaveTwoFreeTripsEachDay

	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9).
	tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 13).
	
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 23 at: 9)) equals: 0 * peso.
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 23 at: 13)) equals: 0 * peso.
	self assert: card balance equals: 5000 * peso! !

!CardReaderTest methodsFor: 'tests - discounts' stamp: 'HAW 11/Sep/2026, 4:28:47 pm (UTC)'!
test27RetireesGetTheTransferDiscountOnceTheyHaveNoFreeTripsLeft

	| card |
	card := BAJECard retireeWithBalance: 5000 * peso.
	tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9).
	tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 30).
	
	self assert: (tribunalesTurnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 10)) equals: 500 * peso! !

!MeansOfTransportTest methodsFor: 'support' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
assertCanNotCreateWithStops: aSequenceOfStops

	self 
		should: [ MeansOfTransport stops: aSequenceOfStops fareTable: (FareTable fixed: 1000 * peso) ]
		raise: Error - MessageNotUnderstood
		withMessageText: MeansOfTransport mustHaveAtLeastTwoStopsErrorDescription! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
test01CanNotCreateAMeansOfTransportWithoutStops

	self assertCanNotCreateWithStops: #()! !

!MeansOfTransportTest methodsFor: 'tests' stamp: 'HAW 11/Sep/2026, 4:28:45 pm (UTC)'!
test02CanNotCreateAMeansOfTransportWithOnlyOneStop

	self assertCanNotCreateWithStops: { Stop named: 'Callao' atDistanceFromHead: 0 * kilometer }! !
