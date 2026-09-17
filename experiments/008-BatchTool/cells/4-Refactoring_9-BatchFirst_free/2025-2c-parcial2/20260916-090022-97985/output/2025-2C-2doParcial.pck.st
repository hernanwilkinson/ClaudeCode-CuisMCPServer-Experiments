'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 9:03:27 am'!
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
	instanceVariableNames: 'stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'line origin destination start chargeFactor'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiroColectivo belgranoColectivo line60 congreso tribunales callao palermo subteD retiroTren belgranoTren sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
adjustLastTripEndingAt: aStop

	| lastTrip chargedOnEntry |
	lastTrip := trips last.
	chargedOnEntry := lastTrip chargedAmount.
	lastTrip endAt: aStop.
	balance := balance + chargedOnEntry - lastTrip chargedAmount! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
payTripOn: aLine from: anOrigin to: aDestination on: aDateTime

	| trip |
	trip := Trip on: aLine from: anOrigin to: aDestination startingAt: aDateTime chargeFactor: (discount chargeFactorForTripAt: aDateTime of: self).
	self withdraw: trip chargedAmount.
	trips add: trip! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
transferChargeFactorAt: aDateTime

	^(trips notEmpty and: [ trips last isTransferAt: aDateTime ])
		ifTrue: [ 1/2 ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'balance - private' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
withdraw: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - anAmount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeFor: aBus

	bus := aBus! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime

	aCard payTripOn: bus from: anOrigin to: aDestination on: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
for: aBus

	^self new initializeFor: aBus! !

!CardDiscount methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	^aCard transferChargeFactorAt: aDateTime! !

!RetireeDiscount methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ aCard transferChargeFactorAt: aDateTime ]! !

!RetireeDiscount methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargeFactorForTripAt: aDateTime of: aCard

	^(self isWeekend: aDateTime date)
		ifTrue: [ aCard transferChargeFactorAt: aDateTime ]
		ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
isWeekend: aDate

	^aDate day = Saturday or: [ aDate day = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initialize

	ranges := OrderedCollection new! !

!FareTable methodsFor: 'fares' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
costFor: aDistance

	^(ranges detect: [ :aRange | aDistance <= aRange key ]) value! !

!FareTable methodsFor: 'fares' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
upTo: aDistance charge: aCost

	ranges add: aDistance -> aCost! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
fixed: aCost

	^self new upTo: PlusInfinity new charge: aCost; yourself! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asOrderedCollection.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
assertIsDirection: aStop

	(aStop = stops first or: [ aStop = stops last ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
assertValidTripFrom: anOrigin to: aDestination

	((self includes: anOrigin) and: [ self includes: aDestination ]) ifFalse: [ self error: self class stopNotInLineErrorDescription ].
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine methodsFor: 'fares' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
withStops: aStops fareTable: aFareTable

	aStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ].
	^self new initializeWithStops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
atLeastTwoStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of a trip must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
stopNotInLineErrorDescription

	^'The stop is not in this means of transport'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime chargeFactor: aChargeFactor

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	chargeFactor := aChargeFactor! !

!Trip methodsFor: 'charge' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargedAmount

	^(line costFrom: origin to: destination) * chargeFactor! !

!Trip methodsFor: 'ending' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
endAt: aStop

	destination := aStop! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
isTransferAt: aDateTime

	^(aDateTime distanceFrom: start) <= self class transferTime! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
on: aLine from: anOrigin to: aDestination startingAt: aDateTime chargeFactor: aChargeFactor

	aLine assertValidTripFrom: anOrigin to: aDestination.
	^self new initializeOn: aLine from: anOrigin to: aDestination startingAt: aDateTime chargeFactor: aChargeFactor! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
transferTime

	^2 * hour! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
initializeAt: aStop of: aLine

	stop := aStop.
	line := aLine! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
charge: aCard goingTo: aDirection on: aDateTime

	line assertIsDirection: aDirection.
	aCard payTripOn: line from: stop to: aDirection on: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
at: aStop of: aLine

	^self new initializeAt: aStop of: aLine! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 12:02:24 pm (UTC)'!
chargeExitOf: aCard

	aCard adjustLastTripEndingAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
setUp

	| line60FareTable mitreFareTable |
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroColectivo := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoColectivo := Stop named: 'Belgrano' at: 12 * kilometer.
	line60FareTable := FareTable new.
	line60FareTable
		upTo: 5 * kilometer charge: 600 * peso;
		upTo: 10 * kilometer charge: 1000 * peso;
		upTo: PlusInfinity new charge: 1300 * peso.
	line60 := TransportLine withStops: { constitucion. plazaDeMayo. retiroColectivo. belgranoColectivo } fareTable: line60FareTable.

	congreso := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subteD := TransportLine withStops: { congreso. tribunales. callao. palermo } fareTable: (FareTable fixed: 1000 * peso).

	retiroTren := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoTren := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreFareTable := FareTable new.
	mitreFareTable
		upTo: 15 * kilometer charge: 400 * peso;
		upTo: PlusInfinity new charge: 600 * peso.
	mitre := TransportLine withStops: { retiroTren. belgranoTren. sanIsidro. tigre } fareTable: mitreFareTable! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
assertThat: aCard wasCharged: anAmount by: aBlock

	| balanceBefore |
	balanceBefore := aCard balance.
	aBlock value.
	self assert: anAmount equals: balanceBefore - aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
on: aDate at: anHour and: aMinute

	^aDate atMidnight next: anHour * hour + (aMinute * minute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
rideLine60: aCard from: anOrigin to: aDestination on: aDateTime

	(BusCardReader for: line60) charge: aCard from: anOrigin to: aDestination on: aDateTime! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
rideSubteD: aCard at: aStop goingTo: aDirection on: aDateTime

	(Turnstile at: aStop of: subteD) charge: aCard goingTo: aDirection on: aDateTime! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'tests - stops and lines' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test01DistanceBetweenStopsIsTheDifferenceOfTheirDistancesToTheHead

	self assert: 7 * kilometer equals: (belgranoColectivo distanceTo: plazaDeMayo).
	self assert: 7 * kilometer equals: (plazaDeMayo distanceTo: belgranoColectivo)! !

!ISWMetropolitanoTest methodsFor: 'tests - stops and lines' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test02MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ TransportLine withStops: { constitucion } fareTable: (FareTable fixed: 1000 * peso) ]
		failWith: TransportLine atLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test03BusChargesAccordingToTheDistanceOfTheTrip

	| card |
	card := self cardWithoutDiscount.
	self assertThat: card wasCharged: 600 * peso by: [ self rideLine60: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ].
	self assertThat: card wasCharged: 1000 * peso by: [ self rideLine60: card from: constitucion to: retiroColectivo on: (self on: November twentysixth, 2025 at: 10 and: 0) ].
	self assertThat: card wasCharged: 1300 * peso by: [ self rideLine60: card from: belgranoColectivo to: constitucion on: (self on: November twentyseventh, 2025 at: 10 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test04BusTripOriginAndDestinationMustBeDifferent

	| card |
	card := self cardWithoutDiscount.
	self
		should: [ self rideLine60: card from: plazaDeMayo to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test05BusTripStopsMustBeInTheSameMeansOfTransport

	| card |
	card := self cardWithoutDiscount.
	self
		should: [ self rideLine60: card from: constitucion to: retiroTren on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self
		should: [ self rideLine60: card from: retiroTren to: constitucion on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test06SubwayChargesAFixedCost

	| card |
	card := self cardWithoutDiscount.
	self assertThat: card wasCharged: 1000 * peso by: [ self rideSubteD: card at: tribunales goingTo: congreso on: (self on: November twentyfifth, 2025 at: 10 and: 0) ].
	self assertThat: card wasCharged: 1000 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentyfifth, 2025 at: 18 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test07SubwayDirectionMustBeTheHeadOrTheLastStop

	| card |
	card := self cardWithoutDiscount.
	self
		should: [ self rideSubteD: card at: tribunales goingTo: callao on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self
		should: [ self rideSubteD: card at: tribunales goingTo: tigre on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test08SubwayCanNotGoTowardsTheStopItBoardsAt

	| card |
	card := self cardWithoutDiscount.
	self
		should: [ self rideSubteD: card at: palermo goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self
		should: [ self rideSubteD: card at: sanIsidro goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test09TrainChargesOnEntryAccordingToTheDistanceToTheDirection

	| card |
	card := self cardWithoutDiscount.
	self assertThat: card wasCharged: 600 * peso by: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card goingTo: retiroTren on: (self on: November twentysecond, 2025 at: 9 and: 0) ].
	self assertThat: card wasCharged: 400 * peso by: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card goingTo: tigre on: (self on: November twentysecond, 2025 at: 18 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test10TrainRefundsTheDifferenceOnExit

	| card |
	card := self cardWithoutDiscount.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card goingTo: retiroTren on: (self on: November twentysecond, 2025 at: 9 and: 0).
	self assertThat: card wasCharged: -200 * peso by: [ (TrainTurnstile at: belgranoTren of: mitre) chargeExitOf: card ].
	self assert: 9600 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test11TrainExitAdjustsWithTheDiscountAppliedOnEntry

	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo on: (self on: November twentysecond, 2025 at: 8 and: 0).
	(TrainTurnstile at: sanIsidro of: mitre) charge: card goingTo: retiroTren on: (self on: November twentysecond, 2025 at: 9 and: 0).
	self assertThat: card wasCharged: -100 * peso by: [ (TrainTurnstile at: belgranoTren of: mitre) chargeExitOf: card ].
	self assert: (10000 - 600 - 200) * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test12TrainDirectionMustBeTheHeadOrTheLastStop

	| card |
	card := self cardWithoutDiscount.
	self
		should: [ (TrainTurnstile at: tigre of: mitre) charge: card goingTo: belgranoTren on: (self on: November twentysecond, 2025 at: 9 and: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test13StudentPaysHalfFromMondayToFriday

	| card |
	card := self studentCard.
	self assertThat: card wasCharged: 650 * peso by: [ self rideLine60: card from: constitucion to: belgranoColectivo on: (self on: November twentyfourth, 2025 at: 11 and: 0) ].
	self assertThat: card wasCharged: 500 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentyeighth, 2025 at: 11 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test14StudentPaysFullPriceOnWeekends

	| card |
	card := self studentCard.
	self assertThat: card wasCharged: 1300 * peso by: [ self rideLine60: card from: constitucion to: belgranoColectivo on: (self on: November twentysecond, 2025 at: 11 and: 0) ].
	self assertThat: card wasCharged: 1000 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentythird, 2025 at: 11 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test15RetireeHasTwoFreeTripsPerDay

	| card |
	card := self retireeCard.
	self assertThat: card wasCharged: 0 * peso by: [ self rideSubteD: card at: tribunales goingTo: congreso on: (self on: November twentysecond, 2025 at: 9 and: 0) ].
	self assertThat: card wasCharged: 0 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentysecond, 2025 at: 12 and: 0) ].
	self assertThat: card wasCharged: 1000 * peso by: [ self rideSubteD: card at: palermo goingTo: congreso on: (self on: November twentysecond, 2025 at: 15 and: 0) ].
	self assertThat: card wasCharged: 0 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentythird, 2025 at: 9 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test16TripWithinTwoHoursOfTheLastOneIsATransfer

	| card |
	card := self cardWithoutDiscount.
	self assertThat: card wasCharged: 600 * peso by: [ self rideLine60: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ].
	self assertThat: card wasCharged: 500 * peso by: [ self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 30) ].
	self assertThat: card wasCharged: 300 * peso by: [ self rideLine60: card from: plazaDeMayo to: constitucion on: (self on: November twentyfifth, 2025 at: 12 and: 30) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test17TripAfterTwoHoursOfTheLastOneIsNotATransfer

	| card |
	card := self cardWithoutDiscount.
	self rideLine60: card from: constitucion to: plazaDeMayo on: (self on: November twentyfifth, 2025 at: 10 and: 0).
	self assertThat: card wasCharged: 1000 * peso by: [ self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentyfifth, 2025 at: 12 and: 1) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test18StudentDiscountIsNotCumulativeWithTransfers

	| card |
	card := self studentCard.
	self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 0).
	self assertThat: card wasCharged: 500 * peso by: [ self rideSubteD: card at: palermo goingTo: congreso on: (self on: November twentyfifth, 2025 at: 10 and: 30) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test19StudentGetsTransferDiscountOnWeekends

	| card |
	card := self studentCard.
	self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentysecond, 2025 at: 10 and: 0).
	self assertThat: card wasCharged: 500 * peso by: [ self rideSubteD: card at: palermo goingTo: congreso on: (self on: November twentysecond, 2025 at: 10 and: 30) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test20RetireeGetsTransferDiscountAfterTheFreeTrips

	| card |
	card := self retireeCard.
	self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentysecond, 2025 at: 10 and: 0).
	self rideSubteD: card at: palermo goingTo: congreso on: (self on: November twentysecond, 2025 at: 10 and: 30).
	self assertThat: card wasCharged: 500 * peso by: [ self rideSubteD: card at: congreso goingTo: palermo on: (self on: November twentysecond, 2025 at: 11 and: 0) ]! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test21CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 999 * peso discount: NoDiscount new.
	self
		should: [ self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 999 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 12:03:13 pm (UTC)'!
test22CanPayWithExactlyTheBalanceNeeded

	| card |
	card := BAJECard withBalance: 1000 * peso discount: NoDiscount new.
	self rideSubteD: card at: tribunales goingTo: palermo on: (self on: November twentyfifth, 2025 at: 10 and: 0).
	self assert: 0 * peso equals: card balance! !
