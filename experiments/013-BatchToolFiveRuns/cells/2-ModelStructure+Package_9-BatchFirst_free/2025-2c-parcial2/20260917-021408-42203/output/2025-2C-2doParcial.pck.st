'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:17:12 am'!
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

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'fares'
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

!classDefinition: #BusLine category: #'2025-2C-2doParcial'!
TransportLine subclass: #BusLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusLine class' category: #'2025-2C-2doParcial'!
BusLine class
	instanceVariableNames: ''!

!classDefinition: #TurnstileLine category: #'2025-2C-2doParcial'!
TransportLine subclass: #TurnstileLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileLine class' category: #'2025-2C-2doParcial'!
TurnstileLine class
	instanceVariableNames: ''!

!classDefinition: #SubwayLine category: #'2025-2C-2doParcial'!
TurnstileLine subclass: #SubwayLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayLine class' category: #'2025-2C-2doParcial'!
SubwayLine class
	instanceVariableNames: ''!

!classDefinition: #TrainLine category: #'2025-2C-2doParcial'!
TurnstileLine subclass: #TrainLine
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainLine class' category: #'2025-2C-2doParcial'!
TrainLine class
	instanceVariableNames: ''!

!classDefinition: #TransportStop category: #'2025-2C-2doParcial'!
Object subclass: #TransportStop
	instanceVariableNames: 'name distanceToHead'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'line origin destination start fullFare payingRate'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroBus belgranoBus line60 congresoDeTucuman tribunales callao palermo subwayD retiroTrain belgranoTrain sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
numberOfTripsStartedOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
endLastTripAt: aStop

	| refund |

	refund := trips last endAt: aStop.
	balance := balance + refund.

	^refund! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination at: aDateTime

	| trip |

	trip := Trip
		on: aLine
		from: anOrigin
		to: aDestination
		startingAt: aDateTime
		fullFare: (aLine fareFrom: anOrigin to: aDestination)
		payingRate: (self payingRateAt: aDateTime).
	self assertCanPay: trip chargedAmount.

	balance := balance - trip chargedAmount.
	trips add: trip.

	^trip chargedAmount! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payingRateAt: aDateTime

	^(discount payingRateFor: self at: aDateTime) min: (self transferPayingRateAt: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
transferPayingRateAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ self class transferPayingRate ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedWithin: self class transferTimeSpan before: aDateTime ]! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
assertCanPay: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
transferPayingRate

	^1/2! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
transferTimeSpan

	^2 * hour! !

!CardDiscount methodsFor: 'paying rate' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payingRateFor: aCard at: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying rate' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payingRateFor: aCard at: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'paying rate' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payingRateFor: aCard at: aDateTime

	^(aCard numberOfTripsStartedOn: aDateTime date) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'free trips' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying rate' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
payingRateFor: aCard at: aDateTime

	| day |

	day := aDateTime date day.
	^(day isSaturday or: [ day isSunday ])
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
initializeWithFaresUpToDistances: distanceToFareAssociations

	fares := distanceToFareAssociations! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
fareFor: aDistance

	^(fares detect: [ :distanceToFare | aDistance <= distanceToFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
fixed: aFare

	^self withFaresUpToDistances: { PlusInfinity new -> aFare }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
withFaresUpToDistances: distanceToFareAssociations

	^self new initializeWithFaresUpToDistances: distanceToFareAssociations! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
fareFrom: anOrigin to: aDestination

	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'charging - private' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.

	^aCard payTripOn: self from: anOrigin to: aDestination at: aDateTime! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
assertIncludes: aStop

	(stops includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.

	^self new initializeWithStops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to this means of transport'! !

!BusLine methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	^self chargeTripOf: aCard from: anOrigin to: aDestination at: aDateTime! !

!TurnstileLine methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self assertIsDirection: aDirection.

	^self chargeTripOf: aCard from: aStop to: aDirection at: aDateTime! !

!TurnstileLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
assertIsDirection: aStop

	(aStop == stops first or: [ aStop == stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!SubwayLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
withStops: aStops fare: aFare

	^self withStops: aStops fareTable: (FareTable fixed: aFare)! !

!TrainLine methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
registerExitOf: aCard at: aStop

	^aCard endLastTripAt: aStop! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
initializeNamed: aName atDistanceToHead: aDistance

	name := aName.
	distanceToHead := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
distanceToHead

	^distanceToHead! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
name

	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:55 am (UTC)'!
named: aName atDistanceToHead: aDistance

	^self new initializeNamed: aName atDistanceToHead: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime fullFare: aFare payingRate: aRate

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	fullFare := aFare.
	payingRate := aRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
chargedAmount

	^fullFare * payingRate! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
startedWithin: aTimeSpan before: aDateTime

	^(start distanceTo: aDateTime) <= aTimeSpan! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
endAt: aStop

	| previouslyCharged |

	previouslyCharged := self chargedAmount.
	destination := aStop.
	fullFare := line fareFrom: origin to: aStop.

	^previouslyCharged - self chargedAmount! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:56 am (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime fullFare: aFare payingRate: aRate

	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime fullFare: aFare payingRate: aRate! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
setUp

	constitucion := TransportStop named: 'Constitución' atDistanceToHead: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' atDistanceToHead: 5 * kilometer.
	retiroBus := TransportStop named: 'Retiro' atDistanceToHead: 8 * kilometer.
	belgranoBus := TransportStop named: 'Belgrano' atDistanceToHead: 12 * kilometer.
	line60 := BusLine
		withStops: { constitucion. plazaDeMayo. retiroBus. belgranoBus }
		fareTable: (FareTable withFaresUpToDistances: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := TransportStop named: 'Congreso de Tucumán' atDistanceToHead: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' atDistanceToHead: (12/10) * kilometer.
	callao := TransportStop named: 'Callao' atDistanceToHead: (25/10) * kilometer.
	palermo := TransportStop named: 'Palermo' atDistanceToHead: 6 * kilometer.
	subwayD := SubwayLine withStops: { congresoDeTucuman. tribunales. callao. palermo } fare: 1000 * peso.

	retiroTrain := TransportStop named: 'Retiro' atDistanceToHead: 0 * kilometer.
	belgranoTrain := TransportStop named: 'Belgrano' atDistanceToHead: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' atDistanceToHead: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' atDistanceToHead: 28 * kilometer.
	mitre := TrainLine
		withStops: { retiroTrain. belgranoTrain. sanIsidro. tigre }
		fareTable: (FareTable withFaresUpToDistances: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
cardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: 10000 * peso! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
mondayAt: anHour minutes: aMinute

	^(November twentyfourth, 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
saturdayAt: anHour minutes: aMinute

	^(November twentysecond, 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self
		should: aBlock
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
tuesdayAt: anHour minutes: aMinute

	^(November twentyfifth, 2025) at: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test01MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ BusLine withStops: { constitucion } fareTable: (FareTable fixed: 600 * peso) ]
		failWith: TransportLine atLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test02OriginMustBelongToTheMeansOfTransport

	| card |

	card := self cardWithoutDiscount.

	self
		should: [ line60 charge: card from: retiroTrain to: belgranoBus at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test03DestinationMustBelongToTheMeansOfTransport

	self
		should: [ line60 charge: self cardWithoutDiscount from: constitucion to: belgranoTrain at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test04OriginAndDestinationMustBeDifferent

	self
		should: [ line60 charge: self cardWithoutDiscount from: constitucion to: constitucion at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test05SubwayDirectionMustBeHeadOrLastStop

	self
		should: [ subwayD charge: self cardWithoutDiscount boardingAt: tribunales towards: callao at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test06TrainDirectionMustBeHeadOrLastStop

	self
		should: [ mitre charge: self cardWithoutDiscount boardingAt: sanIsidro towards: belgranoTrain at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test07CanNotBoardAtTheStopOfTheDirection

	self
		should: [ subwayD charge: self cardWithoutDiscount boardingAt: palermo towards: palermo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test08DirectionMustBelongToTheMeansOfTransport

	self
		should: [ subwayD charge: self cardWithoutDiscount boardingAt: tribunales towards: tigre at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test09CanNotPayWithoutEnoughBalance

	| card |

	card := BAJECard withoutDiscountWithBalance: 599 * peso.

	self
		should: [ line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test10CanPayWithExactBalance

	| card |

	card := BAJECard withoutDiscountWithBalance: 600 * peso.

	line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - fares' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test11BusWithoutDiscountChargesByDistance

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 1000 * peso equals: (line60 charge: card from: constitucion to: retiroBus at: (self tuesdayAt: 13 minutes: 0)).
	self assert: 1300 * peso equals: (line60 charge: card from: belgranoBus to: constitucion at: (self tuesdayAt: 16 minutes: 0)).
	self assert: 7100 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - fares' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test12SubwayChargesAFixedFare

	| card |

	card := self cardWithoutDiscount.

	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 13 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test13StudentPaysHalfFromMondayToFriday

	| card |

	card := BAJECard studentWithBalance: 10000 * peso.

	self assert: 650 * peso equals: (line60 charge: card from: constitucion to: belgranoBus at: (self mondayAt: 11 minutes: 0)).
	self assert: 9350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test14StudentPaysFullPriceOnWeekends

	| card |

	card := BAJECard studentWithBalance: 10000 * peso.

	self assert: 1300 * peso equals: (line60 charge: card from: constitucion to: belgranoBus at: (self saturdayAt: 11 minutes: 0)).
	self assert: 1300 * peso equals: (line60 charge: card from: constitucion to: belgranoBus at: ((November twentythird, 2025) at: (TimeOfDay hours: 11 minutes: 0)))! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test15RetireeHasTwoFreeTripsPerDay

	| card |

	card := BAJECard retireeWithBalance: 0 * peso.

	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self saturdayAt: 9 minutes: 0)).
	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 12 minutes: 0)).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test16RetireePaysFullPriceAfterTwoTripsInTheSameDay

	| card |

	card := BAJECard retireeWithBalance: 10000 * peso.

	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self saturdayAt: 9 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 12 minutes: 0).

	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 15 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test17RetireeFreeTripsAreRenewedEveryDay

	| card |

	card := BAJECard retireeWithBalance: 10000 * peso.

	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self saturdayAt: 9 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 12 minutes: 0).

	self assert: 0 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self mondayAt: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test18TrainChargesByDistanceToTheDirectionOnEntry

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (mitre charge: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0)).
	self assert: 400 * peso equals: (mitre charge: card boardingAt: sanIsidro towards: tigre at: (self saturdayAt: 12 minutes: 0)).
	self assert: 9000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test19TrainExitRefundsTheDifferenceOfTheActualTrip

	| card |

	card := self cardWithoutDiscount.
	mitre charge: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0).

	self assert: 200 * peso equals: (mitre registerExitOf: card at: belgranoTrain).
	self assert: 9600 * peso equals: card balance.
	self assert: belgranoTrain equals: card trips last destination! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test20TrainExitAtTheDirectionRefundsNothing

	| card |

	card := self cardWithoutDiscount.
	mitre charge: card boardingAt: sanIsidro towards: retiroTrain at: (self saturdayAt: 9 minutes: 0).

	self assert: 0 * peso equals: (mitre registerExitOf: card at: retiroTrain).
	self assert: 9400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 5:16:56 am (UTC)'!
test21TrainExitRefundKeepsTheDiscountOfTheEntry

	| card |

	card := BAJECard studentWithBalance: 10000 * peso.

	self assert: 300 * peso equals: (mitre charge: card boardingAt: sanIsidro towards: retiroTrain at: (self tuesdayAt: 9 minutes: 0)).
	self assert: 100 * peso equals: (mitre registerExitOf: card at: belgranoTrain).
	self assert: 9800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test22TripWithinTwoHoursOfTheLastTripIsATransfer

	| card |

	card := self cardWithoutDiscount.

	self assert: 600 * peso equals: (line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0)).
	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30)).
	self assert: 8900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test23TransfersAreCountedFromTheStartOfTheLastTrip

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 11 minutes: 30).

	self assert: 300 * peso equals: (line60 charge: card from: plazaDeMayo to: constitucion at: (self tuesdayAt: 13 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test24TripAfterTwoHoursOfTheLastTripIsNotATransfer

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 1000 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 12 minutes: 1))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test25StudentDiscountIsNotCumulativeWithTransfers

	| card |

	card := BAJECard studentWithBalance: 10000 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self tuesdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self tuesdayAt: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test26StudentGetsTransferDiscountOnWeekends

	| card |

	card := BAJECard studentWithBalance: 10000 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0).

	self assert: 500 * peso equals: (subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:16:57 am (UTC)'!
test27RetireeGetsTransferDiscountAfterTheFreeTrips

	| card |

	card := BAJECard retireeWithBalance: 10000 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self saturdayAt: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self saturdayAt: 10 minutes: 30).

	self assert: 300 * peso equals: (line60 charge: card from: plazaDeMayo to: constitucion at: (self saturdayAt: 11 minutes: 0))! !
