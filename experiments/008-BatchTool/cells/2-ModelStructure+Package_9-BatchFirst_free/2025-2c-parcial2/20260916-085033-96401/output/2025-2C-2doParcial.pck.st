'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:53:45 am'!
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
	instanceVariableNames: 'costsByDistanceLimit'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #MeansOfTransport category: #'2025-2C-2doParcial'!
Object subclass: #MeansOfTransport
	instanceVariableNames: 'name stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'MeansOfTransport class' category: #'2025-2C-2doParcial'!
MeansOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Bus category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #Bus
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Bus class' category: #'2025-2C-2doParcial'!
Bus class
	instanceVariableNames: ''!

!classDefinition: #StationBasedTransport category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #StationBasedTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StationBasedTransport class' category: #'2025-2C-2doParcial'!
StationBasedTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
StationBasedTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
StationBasedTransport subclass: #Train
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Train class' category: #'2025-2C-2doParcial'!
Train class
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

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'transport origin destination start payableFraction'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #TransportSystemTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #TransportSystemTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'TransportSystemTest class' category: #'2025-2C-2doParcial-Tests'!
TransportSystemTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
numberOfTripsOnSameDayAs: aDateTime

	^trips count: [ :aTrip | aTrip startedOnSameDayAs: aDateTime ]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
adjustLastTripEndingAt: aStop

	| lastTrip chargedCost |

	lastTrip := trips last.
	chargedCost := lastTrip cost.
	lastTrip endAt: aStop.
	balance := balance + (chargedCost - lastTrip cost)! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payTripOn: aTransport from: anOrigin to: aDestination on: aDateTime

	| trip |

	trip := Trip on: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: (self payableFractionAt: aDateTime).
	self withdraw: trip cost.
	trips add: trip! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last allowsTransferAt: aDateTime ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payableFractionAt: aDateTime

	"Discounts are not cumulative, the most convenient one is applied"
	^(discount payableFractionAt: aDateTime for: self) min: (self transferPayableFractionAt: aDateTime)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
transferPayableFractionAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
withdraw: anAmount

	anAmount > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].

	balance := balance - anAmount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
retireeWithBalance: aBalance

	^self withBalance: aBalance discount: RetireeDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
studentWithBalance: aBalance

	^self withBalance: aBalance discount: StudentDiscount new! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
withoutDiscountWithBalance: aBalance

	^self withBalance: aBalance discount: NoDiscount new! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!CardDiscount methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payableFractionAt: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payableFractionAt: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payableFractionAt: aDateTime for: aCard

	^(aCard numberOfTripsOnSameDayAs: aDateTime) < self class freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
payableFractionAt: aDateTime for: aCard

	^(self isWeekend: aDateTime) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!StudentDiscount methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
isWeekend: aDateTime

	| day |

	day := aDateTime date day.
	^day = Saturday or: [ day = Sunday ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
initialize

	costsByDistanceLimit := OrderedCollection new! !

!FareTable methodsFor: 'costs' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
addCost: aCost upTo: aDistanceLimit

	costsByDistanceLimit add: aDistanceLimit -> aCost! !

!FareTable methodsFor: 'costs' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
costFor: aDistance

	^(costsByDistanceLimit detect: [ :limitAndCost | aDistance <= limitAndCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
fixed: aCost

	^self new addCost: aCost upTo: PlusInfinity new; yourself! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
initializeNamed: aName stops: aStops fareTable: aFareTable

	name := aName.
	stops := aStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
name

	^name! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
headStop

	^stops detectMin: [ :aStop | aStop distanceToHead ]! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
includesStop: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
lastStop

	^stops detectMax: [ :aStop | aStop distanceToHead ]! !

!MeansOfTransport methodsFor: 'costs' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
chargeTripOf: aCard from: anOrigin to: aDestination on: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.

	aCard payTripOn: self from: anOrigin to: aDestination on: aDateTime! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	((self includesStop: anOrigin) and: [ self includesStop: aDestination ])
		ifFalse: [ self error: self class stopNotInMeansOfTransportErrorDescription ].
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
named: aName stops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.

	^self new initializeNamed: aName stops: aStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
notEnoughStopsErrorDescription

	^'The means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'The origin and destination of the trip must be different'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
stopNotInMeansOfTransportErrorDescription

	^'The stops of the trip must be in the means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
charge: aCard from: anOrigin to: aDestination on: aDateTime

	self chargeTripOf: aCard from: anOrigin to: aDestination on: aDateTime! !

!StationBasedTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection on: aDateTime

	self assertIsDirection: aDirection.

	self chargeTripOf: aCard from: aStop to: aDirection on: aDateTime! !

!StationBasedTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
assertIsDirection: aStop

	(aStop = self headStop or: [ aStop = self lastStop ])
		ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!StationBasedTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
chargeExit: aCard gettingOffAt: aStop

	aCard adjustLastTripEndingAt: aStop! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
initializeNamed: aName at: aDistanceToHead

	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
distanceToHead

	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
distanceTo: aStop

	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
named: aName at: aDistanceToHead

	^self new initializeNamed: aName at: aDistanceToHead! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
initializeOn: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPayableFraction

	transport := aTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	payableFraction := aPayableFraction! !

!Trip methodsFor: 'costs' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
cost

	^self fullCost * payableFraction! !

!Trip methodsFor: 'costs' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
fullCost

	^transport costFrom: origin to: destination! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
allowsTransferAt: aDateTime

	^(start distanceTo: aDateTime) <= self class transferTimeLimit! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
startedOnSameDayAs: aDateTime

	^start sameDayAs: aDateTime! !

!Trip methodsFor: 'ending' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
endAt: aStop

	destination := aStop! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
on: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPayableFraction

	^self new initializeOn: aTransport from: anOrigin to: aDestination startingAt: aDateTime payingFraction: aPayableFraction! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:52:45 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!TransportSystemTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		named: 'Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable new
			addCost: 600 * peso upTo: 5 * kilometer;
			addCost: 1000 * peso upTo: 10 * kilometer;
			addCost: 1300 * peso upTo: PlusInfinity new;
			yourself).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway
		named: 'Línea D'
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := Train
		named: 'Mitre - Ramal Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable new
			addCost: 400 * peso upTo: 15 * kilometer;
			addCost: 600 * peso upTo: PlusInfinity new;
			yourself)! !

!TransportSystemTest methodsFor: 'dates' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
november: aDayNumber at: anHour

	^self november: aDayNumber at: anHour minutes: 0! !

!TransportSystemTest methodsFor: 'dates' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!TransportSystemTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
cardWithoutDiscount

	^BAJECard withoutDiscountWithBalance: 5000 * peso! !

!TransportSystemTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
retireeCard

	^BAJECard retireeWithBalance: 5000 * peso! !

!TransportSystemTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
studentCard

	^BAJECard studentWithBalance: 5000 * peso! !

!TransportSystemTest methodsFor: 'tests - means of transport' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test01MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus named: 'Línea 1' stops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		raise: Error
		withExceptionDo: [ :anError | self assert: MeansOfTransport notEnoughStopsErrorDescription equals: anError messageText ]! !

!TransportSystemTest methodsFor: 'tests - means of transport' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test02FareTableCostDependsOnDistance

	self assert: 600 * peso equals: (line60 costFrom: constitucion to: plazaDeMayo).
	self assert: 1000 * peso equals: (line60 costFrom: belgrano to: plazaDeMayo).
	self assert: 1300 * peso equals: (line60 costFrom: constitucion to: belgrano)! !

!TransportSystemTest methodsFor: 'tests - means of transport' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test26StopsWithSameNameInDifferentLinesAreDifferent

	self assert: (line60 includesStop: retiro).
	self deny: (line60 includesStop: retiroMitre).
	self deny: (mitre includesStop: retiro)! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test03BusChargesFullPriceWithoutDiscount

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).

	self assert: 4400 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test04BusTripStopsMustBeInTheBusLine

	| card |

	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: tribunales to: plazaDeMayo on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotInMeansOfTransportErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance.
			self assert: 0 equals: card numberOfTrips ].
	self
		should: [ line60 charge: card from: constitucion to: belgranoMitre on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotInMeansOfTransportErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance ]! !

!TransportSystemTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test05BusTripOriginAndDestinationMustBeDifferent

	| card |

	card := self cardWithoutDiscount.
	self
		should: [ line60 charge: card from: retiro to: retiro on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport sameOriginAndDestinationErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance ]! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test06CanNotPayWithoutEnoughBalance

	| card |

	card := BAJECard withoutDiscountWithBalance: 1000 * peso.
	self
		should: [ line60 charge: card from: constitucion to: belgrano on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: BAJECard insufficientBalanceErrorDescription equals: anError messageText.
			self assert: 1000 * peso equals: card balance.
			self assert: 0 equals: card numberOfTrips ]! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test07CanPayWithExactBalance

	| card |

	card := BAJECard withoutDiscountWithBalance: 600 * peso.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).

	self assert: 0 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test08StudentPaysHalfFromMondayToFriday

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: belgrano on: (self november: 24 at: 11).

	self assert: 4350 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test09StudentPaysFullPriceOnWeekends

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: belgrano on: (self november: 22 at: 11).
	line60 charge: card from: constitucion to: belgrano on: (self november: 23 at: 20).

	self assert: 2400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test10RetireeHasTwoFreeTripsPerDay

	| card |

	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman on: (self november: 22 at: 9).
	line60 charge: card from: constitucion to: belgrano on: (self november: 22 at: 12).
	self assert: 5000 * peso equals: card balance.

	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 18).
	self assert: 4400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - card' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test11RetireeFreeTripsAreRenewedEachDay

	| card |

	card := self retireeCard.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 9).
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 12).
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 23 at: 9).

	self assert: 5000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test12SubwayChargesFixedCost

	| card |

	card := self cardWithoutDiscount.
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 10).
	subwayD charge: card boardingAt: callao towards: congresoDeTucuman on: (self november: 25 at: 15).

	self assert: 3000 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test13SubwayDirectionMustBeHeadOrLastStop

	| card |

	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: tribunales towards: callao on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: StationBasedTransport invalidDirectionErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance ]! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test14SubwayBoardingStopMustBeInTheLine

	| card |

	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: retiro towards: palermo on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport stopNotInMeansOfTransportErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance ]! !

!TransportSystemTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test15SubwayCanNotBoardAtTheDirectionStop

	| card |

	card := self cardWithoutDiscount.
	self
		should: [ subwayD charge: card boardingAt: palermo towards: palermo on: (self november: 25 at: 10) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: MeansOfTransport sameOriginAndDestinationErrorDescription equals: anError messageText.
			self assert: 5000 * peso equals: card balance ]! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test16TrainChargesByDistanceToDirection

	| card |

	card := self cardWithoutDiscount.
	mitre charge: card boardingAt: sanIsidro towards: retiroMitre on: (self november: 22 at: 9).

	self assert: 4400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test17TrainExitRefundsDifferenceOfActualTrip

	| card |

	card := self cardWithoutDiscount.
	mitre charge: card boardingAt: sanIsidro towards: retiroMitre on: (self november: 22 at: 9).
	mitre chargeExit: card gettingOffAt: belgranoMitre.

	self assert: 4600 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test18TrainExitRefundKeepsTheDiscountApplied

	| card |

	card := self studentCard.
	mitre charge: card boardingAt: sanIsidro towards: retiroMitre on: (self november: 25 at: 9).
	self assert: 4700 * peso equals: card balance.

	mitre chargeExit: card gettingOffAt: belgranoMitre.
	self assert: 4800 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test19TrainExitWithoutRefundWhenCostDoesNotChange

	| card |

	card := self cardWithoutDiscount.
	mitre charge: card boardingAt: sanIsidro towards: tigre on: (self november: 25 at: 9).
	mitre chargeExit: card gettingOffAt: tigre.

	self assert: 4600 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test20TripWithinTwoHoursIsATransferPayingHalf

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 10 minutes: 30).

	self assert: 3900 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test21TransfersHaveNoLimitAndCountFromTheLastTripStart

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 11 minutes: 30).
	subwayD charge: card boardingAt: palermo towards: congresoDeTucuman on: (self november: 25 at: 13).

	self assert: 3400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test22TripAfterTwoHoursIsNotATransfer

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 12 minutes: 1).

	self assert: 3400 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test23StudentDiscountIsNotCumulativeWithTransfers

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 25 at: 10).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 25 at: 10 minutes: 30).

	self assert: 4200 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test24StudentGetsTransferDiscountOnWeekends

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 10).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 10 minutes: 30).

	self assert: 3900 * peso equals: card balance! !

!TransportSystemTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:53:32 am (UTC)'!
test25RetireeGetsTransferDiscountAfterFreeTrips

	| card |

	card := self retireeCard.
	line60 charge: card from: constitucion to: plazaDeMayo on: (self november: 22 at: 10).
	line60 charge: card from: plazaDeMayo to: retiro on: (self november: 22 at: 10 minutes: 20).
	subwayD charge: card boardingAt: tribunales towards: palermo on: (self november: 22 at: 10 minutes: 40).

	self assert: 4500 * peso equals: card balance! !
