'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:47:12 am'!
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
	instanceVariableNames: 'stops fareTable'
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

!classDefinition: #TurnstileMeansOfTransport category: #'2025-2C-2doParcial'!
MeansOfTransport subclass: #TurnstileMeansOfTransport
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TurnstileMeansOfTransport class' category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport class
	instanceVariableNames: ''!

!classDefinition: #Subway category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport subclass: #Subway
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Subway class' category: #'2025-2C-2doParcial'!
Subway class
	instanceVariableNames: ''!

!classDefinition: #Train category: #'2025-2C-2doParcial'!
TurnstileMeansOfTransport subclass: #Train
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Train class' category: #'2025-2C-2doParcial'!
Train class
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
	instanceVariableNames: 'meansOfTransport origin destination start discountFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiroLinea60 belgranoLinea60 line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitreTrain'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
initializeWithBalance: aBalance discount: aCardDiscount

	balance := aBalance.
	discount := aCardDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip startedOn: aDate ]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
adjustLastTripEndingAt: aStop

	| adjustedTrip |

	adjustedTrip := trips last endingAt: aStop.

	balance := balance + trips last charge - adjustedTrip charge.
	trips removeLast.
	trips add: adjustedTrip! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime

	| trip |

	trip := Trip
		on: aMeansOfTransport
		from: anOrigin
		to: aDestination
		startingAt: aDateTime
		discountFactor: (self discountFactorForTripStartingAt: aDateTime).
	self assertCanPay: trip charge.

	balance := balance - trip charge.
	trips add: trip! !

!BAJECard methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
assertCanPay: aCharge

	aCharge > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'discounts - private' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
discountFactorForTripStartingAt: aDateTime

	^(discount factorForTripStartingAt: aDateTime of: self) min: (self transferFactorForTripStartingAt: aDateTime)! !

!BAJECard methodsFor: 'discounts - private' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
transferFactorForTripStartingAt: aDateTime

	^(self isTransferAt: aDateTime)
		ifTrue: [ self class transferDiscountFactor ]
		ifFalse: [ 1 ]! !

!BAJECard methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
isTransferAt: aDateTime

	trips isEmpty ifTrue: [ ^false ].

	^(trips last start distanceTo: aDateTime) <= self class transferWindow! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
withBalance: aBalance discount: aCardDiscount

	^self new initializeWithBalance: aBalance discount: aCardDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
insufficientBalanceErrorDescription

	^'The card does not have enough balance to pay the trip'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
transferDiscountFactor

	^1/2! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
transferWindow

	^2 * hour! !

!CardDiscount methodsFor: 'discount factor' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
factorForTripStartingAt: aDateTime of: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'discount factor' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
factorForTripStartingAt: aDateTime of: aCard

	^1! !

!RetireeDiscount methodsFor: 'discount factor' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
factorForTripStartingAt: aDateTime of: aCard

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay
		ifTrue: [ 0 ]
		ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'free trips' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discount factor' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
factorForTripStartingAt: aDateTime of: aCard

	| date |

	date := aDateTime date.

	^(date isSaturday or: [ date isSunday ])
		ifTrue: [ 1 ]
		ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
initializeWithCostsByDistanceLimit: distanceLimitToCostAssociations

	costsByDistanceLimit := distanceLimitToCostAssociations! !

!FareTable methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
costFor: aDistance

	^(costsByDistanceLimit detect: [ :distanceLimitToCost | aDistance <= distanceLimitToCost key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
fixedAt: aCost

	^self withCostsByDistanceLimit: { PlusInfinity new -> aCost }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
withCostsByDistanceLimit: distanceLimitToCostAssociations

	^self new initializeWithCostsByDistanceLimit: distanceLimitToCostAssociations! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
initializeStops: aSequenceOfStops fareTable: aFareTable

	stops := aSequenceOfStops.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'cost' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
costFrom: anOrigin to: aDestination

	^fareTable costFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInRouteErrorDescription ]! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!MeansOfTransport methodsFor: 'charging - private' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime

	self assertIsValidTripFrom: anOrigin to: aDestination.

	aCard payTripOn: self from: anOrigin to: aDestination startingAt: aDateTime! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
stops: aSequenceOfStops fareTable: aFareTable

	self assertHasEnoughStops: aSequenceOfStops.

	^self new initializeStops: aSequenceOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
assertHasEnoughStops: aSequenceOfStops

	aSequenceOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
stopNotInRouteErrorDescription

	^'The stop is not part of the route of this means of transport'! !

!Bus methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	self charge: aCard forTripFrom: anOrigin to: aDestination at: aDateTime! !

!TurnstileMeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
headOfLine

	^stops detectMin: [ :aStop | aStop distanceToHeadOfLine ]! !

!TurnstileMeansOfTransport methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
lastStop

	^stops detectMax: [ :aStop | aStop distanceToHeadOfLine ]! !

!TurnstileMeansOfTransport methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
assertIsValidDirection: aDirection

	(aDirection = self headOfLine or: [ aDirection = self lastStop ])
		ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TurnstileMeansOfTransport methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	self assertIsValidDirection: aDirection.

	self charge: aCard forTripFrom: aStop to: aDirection at: aDateTime! !

!TurnstileMeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!Train methodsFor: 'charging' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
adjustExitOf: aCard at: aStop

	self assertIncludes: aStop.

	aCard adjustLastTripEndingAt: aStop! !

!Stop methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine

	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
named: aName at: aDistanceToHeadOfLine

	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime discountFactor: aDiscountFactor

	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	start := aDateTime.
	discountFactor := aDiscountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
charge

	^(meansOfTransport costFrom: origin to: destination) * discountFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
start

	^start! !

!Trip methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
startedOn: aDate

	^start date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
endingAt: aStop

	^self class on: meansOfTransport from: origin to: aStop startingAt: start discountFactor: discountFactor! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:45:50 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime discountFactor: aDiscountFactor

	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime discountFactor: aDiscountFactor! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
setUp

	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiroLinea60 := Stop named: 'Retiro' at: 8 * kilometer.
	belgranoLinea60 := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := Bus
		stops: { constitucion. plazaDeMayo. retiroLinea60. belgranoLinea60 }
		fareTable: (FareTable withCostsByDistanceLimit: {
			(5 * kilometer) -> (600 * peso).
			(10 * kilometer) -> (1000 * peso).
			PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := Subway
		stops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixedAt: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitreTrain := Train
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withCostsByDistanceLimit: {
			(15 * kilometer) -> (400 * peso).
			PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 5000 * peso discount: NoDiscount new! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
retireeCard

	^BAJECard withBalance: 5000 * peso discount: RetireeDiscount new! !

!ISWMetropolitanoTest methodsFor: 'cards' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
studentCard

	^BAJECard withBalance: 5000 * peso discount: StudentDiscount new! !

!ISWMetropolitanoTest methodsFor: 'dates' stamp: 'HAW 16/Sep/2026, 11:46:54 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^(FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
assert: aCard wasChargedFrom: anInitialBalance amount: aCharge

	self assert: anInitialBalance - aCharge equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
assertTripIsInvalid: aTripBlock withMessageText: anErrorDescription

	| card |

	card := self cardWithoutDiscount.

	self
		should: [ aTripBlock value: card ]
		raise: Error - MessageNotUnderstood
		withMessageText: anErrorDescription.

	self assert: card balance equals: 5000 * peso.
	self assert: card numberOfTrips equals: 0! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test01BusChargesCostByDistanceWithoutDiscount

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - bus' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test02BusChargesMoreForLongerDistances

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: belgranoLinea60 to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test03StudentPaysHalfOnWeekdays

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: belgranoLinea60 at: (self november: 24 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test04StudentPaysFullPriceOnWeekends

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: belgranoLinea60 at: (self november: 23 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test05RetireeHasTwoFreeTripsPerDay

	| card |

	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 13 minutes: 0).

	self assert: card balance equals: 5000 * peso.
	self assert: card numberOfTrips equals: 2! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test06RetireePaysFullPriceAfterTwoTripsInADay

	| card |

	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 13 minutes: 0).
	subwayD charge: card boardingAt: callao towards: palermo at: (self november: 22 at: 18 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - discounts' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test07RetireeFreeTripsRestartEachDay

	| card |

	card := self retireeCard.
	subwayD charge: card boardingAt: tribunales towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 13 minutes: 0).
	subwayD charge: card boardingAt: callao towards: palermo at: (self november: 23 at: 18 minutes: 0).

	self assert: card balance equals: 5000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - subway' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test08SubwayChargesFixedCost

	| card |

	card := self cardWithoutDiscount.
	subwayD charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	subwayD charge: card boardingAt: callao towards: palermo at: (self november: 22 at: 15 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test09TrainChargesByDistanceToDirectionOnEntry

	| card |

	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test10TrainRefundsDifferenceOnExit

	| card |

	card := self cardWithoutDiscount.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	mitreTrain adjustExitOf: card at: belgranoMitre.

	self assert: card wasChargedFrom: 5000 * peso amount: 400 * peso.
	self assert: card numberOfTrips equals: 1! !

!ISWMetropolitanoTest methodsFor: 'tests - train' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test11TrainRefundKeepsTheDiscountOfTheEntry

	| card |

	card := self studentCard.
	mitreTrain charge: card boardingAt: sanIsidro towards: retiroMitre at: (self november: 25 at: 9 minutes: 0).
	mitreTrain adjustExitOf: card at: belgranoMitre.

	self assert: card wasChargedFrom: 5000 * peso amount: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test12TripWithinTwoHoursOfLastTripStartPaysHalf

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 5000 * peso amount: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test13TransfersHaveNoLimit

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 11 minutes: 30).
	subwayD charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 25 at: 13 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test14TripAfterTwoHoursOfLastTripStartIsNotATransfer

	| card |

	card := self cardWithoutDiscount.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12 minutes: 1).

	self assert: card wasChargedFrom: 5000 * peso amount: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test15StudentDoesNotAccumulateTransferDiscountOnWeekdays

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 5000 * peso amount: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test16StudentGetsTransferDiscountOnWeekends

	| card |

	card := self studentCard.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 30).

	self assert: card wasChargedFrom: 5000 * peso amount: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 16/Sep/2026, 11:46:59 am (UTC)'!
test17RetireeFreeTripIsNotChargedWhenTransferring

	| card |

	card := self retireeCard.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	subwayD charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 30).
	subwayD charge: card boardingAt: palermo towards: congresoDeTucuman at: (self november: 22 at: 11 minutes: 0).

	self assert: card wasChargedFrom: 5000 * peso amount: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test18CanNotPayWithoutEnoughBalance

	| card |

	card := BAJECard withBalance: 599 * peso discount: NoDiscount new.

	self
		should: [ line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		raise: Error - MessageNotUnderstood
		withMessageText: BAJECard insufficientBalanceErrorDescription.

	self assert: card balance equals: 599 * peso.
	self assert: card numberOfTrips equals: 0! !

!ISWMetropolitanoTest methodsFor: 'tests - balance' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test19CanPayWithExactBalance

	| card |

	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	line60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).

	self assert: card balance equals: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test20OriginAndDestinationMustBeDifferent

	self assertTripIsInvalid: [ :card | line60 charge: card from: plazaDeMayo to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: MeansOfTransport sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test21OriginMustBeInTheMeansOfTransport

	self assertTripIsInvalid: [ :card | line60 charge: card from: retiroMitre to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: MeansOfTransport stopNotInRouteErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test22DestinationMustBeInTheMeansOfTransport

	self assertTripIsInvalid: [ :card | line60 charge: card from: constitucion to: belgranoMitre at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: MeansOfTransport stopNotInRouteErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test23MeansOfTransportMustHaveAtLeastTwoStops

	self
		should: [ Bus stops: { constitucion } fareTable: (FareTable fixedAt: 600 * peso) ]
		raise: Error - MessageNotUnderstood
		withMessageText: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test24SubwayDirectionMustBeHeadOfLineOrLastStop

	self assertTripIsInvalid: [ :card | subwayD charge: card boardingAt: tribunales towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: TurnstileMeansOfTransport invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test25TrainDirectionMustBeHeadOfLineOrLastStop

	self assertTripIsInvalid: [ :card | mitreTrain charge: card boardingAt: retiroMitre towards: sanIsidro at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: TurnstileMeansOfTransport invalidDirectionErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test26CanNotBoardAtTheStopOfTheDirection

	self assertTripIsInvalid: [ :card | subwayD charge: card boardingAt: palermo towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: MeansOfTransport sameOriginAndDestinationErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 16/Sep/2026, 11:46:43 am (UTC)'!
test27SubwayDirectionMustBeInTheMeansOfTransport

	self assertTripIsInvalid: [ :card | subwayD charge: card boardingAt: tribunales towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		withMessageText: TurnstileMeansOfTransport invalidDirectionErrorDescription! !
