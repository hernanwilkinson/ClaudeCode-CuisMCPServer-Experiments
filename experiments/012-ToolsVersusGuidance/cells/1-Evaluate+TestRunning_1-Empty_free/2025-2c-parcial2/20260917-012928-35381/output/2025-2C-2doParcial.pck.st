'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:32:22 am'!
'Description '!
!provides: '2025-2C-2doParcial' 1 0!
SystemOrganization addCategory: #'2025-2C-2doParcial'!
SystemOrganization addCategory: #'2025-2C-2doParcial-Tests'!


!classDefinition: #BajeCard category: #'2025-2C-2doParcial'!
Object subclass: #BajeCard
	instanceVariableNames: 'balance discountPlan trips'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BajeCard class' category: #'2025-2C-2doParcial'!
BajeCard class
	instanceVariableNames: ''!

!classDefinition: #BusCardReader category: #'2025-2C-2doParcial'!
Object subclass: #BusCardReader
	instanceVariableNames: 'meansOfTransport'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusCardReader class' category: #'2025-2C-2doParcial'!
BusCardReader class
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

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
	instanceVariableNames: ''!

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
DiscountPlan subclass: #StudentDiscount
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

!classDefinition: #MeansOfTransport category: #'2025-2C-2doParcial'!
Object subclass: #MeansOfTransport
	instanceVariableNames: 'name stops fareTable'
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
	instanceVariableNames: 'meansOfTransport origin destination startedAt'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #Turnstile category: #'2025-2C-2doParcial'!
Object subclass: #Turnstile
	instanceVariableNames: 'meansOfTransport stop'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subwayD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
initializeWithBalance: anAmount discountPlan: aDiscountPlan
	balance := anAmount.
	discountPlan := aDiscountPlan.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
numberOfTrips
	^trips size! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
endLastTripAt: aStop
	| endedTrip startedTrip |
	endedTrip := trips last endingAt: aStop.
	startedTrip := trips removeLast.
	balance := balance + (self fareFor: startedTrip) - (self fareFor: endedTrip).
	trips add: endedTrip! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
pay: aTrip
	| fare |
	fare := self fareFor: aTrip.
	fare > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	balance := balance - fare.
	trips add: aTrip! !

!BajeCard methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareFor: aTrip
	^discountPlan fareFor: aTrip paidWith: self! !

!BajeCard methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareWithTransferDiscountFor: aTrip
	^(self isTransfer: aTrip)
		ifTrue: [ aTrip fullFare / 2 ]
		ifFalse: [ aTrip fullFare ]! !

!BajeCard methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
isTransfer: aTrip
	^trips notEmpty and: [ aTrip isTransferFrom: trips last ]! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
numberOfTripsOnSameDayAs: aTrip
	^trips count: [ :aPreviousTrip | aPreviousTrip isOnSameDayAs: aTrip ]! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
withBalance: anAmount discountPlan: aDiscountPlan
	^self new initializeWithBalance: anAmount discountPlan: aDiscountPlan! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
initializeFor: aBus
	meansOfTransport := aBus! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	aCard pay: (Trip on: meansOfTransport from: anOrigin to: aDestination startedAt: aDateTime)! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
for: aBus
	^self new initializeFor: aBus! !

!DiscountPlan methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareFor: aTrip paidWith: aCard
	self subclassResponsibility! !

!NoDiscount methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareFor: aTrip paidWith: aCard
	^aCard fareWithTransferDiscountFor: aTrip! !

!RetireeDiscount methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareFor: aTrip paidWith: aCard
	^(aCard numberOfTripsOnSameDayAs: aTrip) < self class freeTripsPerDay
		ifTrue: [ aTrip fullFare * 0 ]
		ifFalse: [ aCard fareWithTransferDiscountFor: aTrip ]! !

!RetireeDiscount class methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
freeTripsPerDay
	^2! !

!StudentDiscount methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
fareFor: aTrip paidWith: aCard
	^aTrip isOnWeekend
		ifTrue: [ aCard fareWithTransferDiscountFor: aTrip ]
		ifFalse: [ aTrip fullFare / 2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
initializeWithFares: distanceUpToAndFareAssociations
	fares := distanceUpToAndFareAssociations! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
fareFor: aDistance
	^(fares detect: [:distanceUpToAndFare | aDistance <= distanceUpToAndFare key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
fixed: aFare
	^self withFares: { PlusInfinity new -> aFare }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
withFares: distanceUpToAndFareAssociations
	"Associations must be sorted by distance, the last one being up to PlusInfinity new"
	^self new initializeWithFares: distanceUpToAndFareAssociations! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
initializeNamed: aName withStops: aSequenceOfStops fareTable: aFareTable
	name := aName.
	stops := aSequenceOfStops asArray.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
name
	^name! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
headOfLine
	^stops first! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
lastStop
	^stops last! !

!MeansOfTransport methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
assertIsDirection: aStop
	(aStop = self headOfLine or: [ aStop = self lastStop ]) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!MeansOfTransport methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
fareFrom: anOrigin to: aDestination
	^fareTable fareFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
named: aName withStops: aSequenceOfStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: aSequenceOfStops.
	^self new initializeNamed: aName withStops: aSequenceOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
assertHasAtLeastTwoStops: aSequenceOfStops
	aSequenceOfStops size < 2 ifTrue: [ self error: self atLeastTwoStopsErrorDescription ]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
atLeastTwoStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
invalidDirectionErrorDescription
	^'The direction must be the head of the line or the last stop'! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
initializeNamed: aName at: aDistanceToHeadOfLine
	name := aName.
	distanceToHeadOfLine := aDistanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
distanceToHeadOfLine
	^distanceToHeadOfLine! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
distanceTo: aStop
	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:55 am (UTC)'!
named: aName at: aDistanceToHeadOfLine
	^self new initializeNamed: aName at: aDistanceToHeadOfLine! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime
	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	startedAt := aDateTime! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
startedAt
	^startedAt! !

!Trip methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
fullFare
	^meansOfTransport fareFrom: origin to: destination! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
isOnSameDayAs: aTrip
	^startedAt sameDayAs: aTrip startedAt! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
isOnWeekend
	^startedAt date day = Saturday or: [ startedAt date day = Sunday ]! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
isTransferFrom: aPreviousTrip
	^(aPreviousTrip startedAt distanceTo: startedAt) <= self class transferTimeLimit! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
endingAt: aStop
	^self class on: meansOfTransport from: origin to: aStop startedAt: startedAt! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime
	self assertThat: anOrigin and: aDestination areDifferentStopsOf: aMeansOfTransport.
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startedAt: aDateTime! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
assertThat: anOrigin and: aDestination areDifferentStopsOf: aMeansOfTransport
	((aMeansOfTransport includes: anOrigin) and: [ aMeansOfTransport includes: aDestination ])
		ifFalse: [ self error: self stopsNotInMeansOfTransportErrorDescription ].
	anOrigin = aDestination ifTrue: [ self error: self sameOriginAndDestinationErrorDescription ]! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
stopsNotInMeansOfTransportErrorDescription
	^'Origin and destination must be stops of the means of transport'! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:30:56 am (UTC)'!
transferTimeLimit
	^2 * hour! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
initializeAt: aStop of: aMeansOfTransport
	stop := aStop.
	meansOfTransport := aMeansOfTransport! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime
	meansOfTransport assertIsDirection: aDirection.
	aCard pay: (Trip on: meansOfTransport from: stop to: aDirection startedAt: aDateTime)! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
at: aStop of: aMeansOfTransport
	^self new initializeAt: aStop of: aMeansOfTransport! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:31:08 am (UTC)'!
registerExitOf: aCard
	aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:31:24 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		named: 'Línea 60'
		withStops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withFares: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subwayD := MeansOfTransport
		named: 'Subte D'
		withStops: { congresoDeTucuman. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := MeansOfTransport
		named: 'Mitre Retiro-Tigre'
		withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable withFares: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) })! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:31:24 am (UTC)'!
assert: aCard wasCharged: anAmount
	self assert: 10000 * peso - anAmount equals: aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:31:24 am (UTC)'!
cardWith: aDiscountPlan
	^BajeCard withBalance: 10000 * peso discountPlan: aDiscountPlan! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:31:24 am (UTC)'!
november: aDayNumber at: anHour
	^self november: aDayNumber at: anHour minutes: 0! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:31:30 am (UTC)'!
november: aDayNumber at: anHour minutes: aNumberOfMinutes
	^GregorianDateTime
		date: (FixedGregorianDate yearNumber: 2025 monthNumber: 11 dayNumber: aDayNumber)
		timeOfDay: (TimeOfDay hours: anHour minutes: aNumberOfMinutes)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:31:24 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error - MessageNotUnderstood withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test01DistanceBetweenStopsIsTheAbsoluteDifferenceOfTheirDistancesToHeadOfLine
	self assert: 3.5 * kilometer equals: (palermo distanceTo: callao).
	self assert: 3.5 * kilometer equals: (callao distanceTo: palermo)! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test02MeansOfTransportMustHaveAtLeastTwoStops
	self
		should: [ MeansOfTransport named: 'Línea 1' withStops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ]
		failWith: MeansOfTransport atLeastTwoStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test03FareTableChargesAccordingToDistanceRanges
	| fareTable |
	fareTable := FareTable withFares: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }.
	self assert: 600 * peso equals: (fareTable fareFor: 5 * kilometer).
	self assert: 1000 * peso equals: (fareTable fareFor: 7 * kilometer).
	self assert: 1300 * peso equals: (fareTable fareFor: 12 * kilometer)! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test04BusChargesFullFareToCardWithoutDiscount
	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test05StudentPaysHalfFromMondayToFriday
	| card |
	card := self cardWith: StudentDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 24 at: 11).
	self assert: card wasCharged: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test06StudentPaysFullFareOnWeekends
	| card |
	card := self cardWith: StudentDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self november: 23 at: 11).
	self assert: card wasCharged: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test07RetireeFirstTripOfTheDayIsFree
	| card |
	card := self cardWith: RetireeDiscount new.
	(Turnstile at: tribunales of: subwayD) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9).
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test08RetireePaysFullFareFromThirdTripOfTheDay
	| card reader |
	card := self cardWith: RetireeDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: congresoDeTucuman at: (self november: 22 at: 7).
	reader charge: card towards: congresoDeTucuman at: (self november: 22 at: 10).
	reader charge: card towards: congresoDeTucuman at: (self november: 22 at: 13).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test09RetireeFreeTripsAreRenewedEachDay
	| card reader |
	card := self cardWith: RetireeDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: congresoDeTucuman at: (self november: 22 at: 7).
	reader charge: card towards: congresoDeTucuman at: (self november: 22 at: 10).
	reader charge: card towards: congresoDeTucuman at: (self november: 23 at: 7).
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test10TrainChargesAccordingToDistanceToDirection
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9).
	self assert: card wasCharged: 600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test11TrainExitRefundsTheDifferenceOfTheActualTrip
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9).
	(TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card.
	self assert: card wasCharged: 400 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test12TrainExitAdjustmentConsidersDiscounts
	| card |
	card := self cardWith: StudentDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 25 at: 9).
	(TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card.
	self assert: card wasCharged: 200 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test13TripWithinTwoHoursOfLastTripStartIsATransfer
	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).
	self assert: card wasCharged: 1100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test14TripAfterTwoHoursOfLastTripStartIsNotATransfer
	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	(Turnstile at: tribunales of: subwayD) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1).
	self assert: card wasCharged: 1600 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test15TransfersHaveNoLimit
	| card reader |
	card := self cardWith: NoDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: palermo at: (self november: 25 at: 10).
	reader charge: card towards: palermo at: (self november: 25 at: 11 minutes: 30).
	reader charge: card towards: palermo at: (self november: 25 at: 13).
	self assert: card wasCharged: 2000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test16StudentDiscountIsNotCumulativeWithTransferDuringWeekdays
	| card reader |
	card := self cardWith: StudentDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: palermo at: (self november: 25 at: 10).
	reader charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30).
	self assert: card wasCharged: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test17StudentGetsTransferDiscountOnWeekends
	| card reader |
	card := self cardWith: StudentDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: palermo at: (self november: 22 at: 10).
	reader charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30).
	self assert: card wasCharged: 1500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test18RetireeGetsTransferDiscountOnPaidTrips
	| card reader |
	card := self cardWith: RetireeDiscount new.
	reader := Turnstile at: tribunales of: subwayD.
	reader charge: card towards: palermo at: (self november: 22 at: 10).
	reader charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30).
	reader charge: card towards: palermo at: (self november: 22 at: 11).
	self assert: card wasCharged: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test19CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withBalance: 500 * peso discountPlan: NoDiscount new.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10) ]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test20RetireeCanTravelForFreeWithoutBalance
	| card |
	card := BajeCard withBalance: 0 * peso discountPlan: RetireeDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10).
	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test21OriginAndDestinationMustBeStopsOfTheMeansOfTransport
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: palermo at: (self november: 25 at: 10) ]
		failWith: Trip stopsNotInMeansOfTransportErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test22OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ (BusCardReader for: line60) charge: card from: constitucion to: constitucion at: (self november: 25 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test23SubwayDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ (Turnstile at: tribunales of: subwayD) charge: card towards: callao at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test24TrainDirectionMustBeHeadOfLineOrLastStop
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ (TrainTurnstile at: belgranoMitre of: mitre) charge: card towards: sanIsidro at: (self november: 25 at: 10) ]
		failWith: MeansOfTransport invalidDirectionErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test25TurnstileAtHeadOfLineCanNotChargeTowardsHeadOfLine
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [ (Turnstile at: congresoDeTucuman of: subwayD) charge: card towards: congresoDeTucuman at: (self november: 25 at: 10) ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test26TrainExitAtOriginIsInvalidAndKeepsTheEntryCharge
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9).
	self
		should: [ (TrainTurnstile at: sanIsidro of: mitre) registerExitOf: card ]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: card wasCharged: 600 * peso.
	self assert: 1 equals: card numberOfTrips! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test27TrainExitAdjustmentConsidersTransfers
	| card |
	card := self cardWith: NoDiscount new.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 8 minutes: 30).
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9).
	(TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card.
	self assert: card wasCharged: 800 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:32:03 am (UTC)'!
test28NewTripAfterTrainExitIsATransferFromTheTrainTrip
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9).
	(TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card.
	(BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 9 minutes: 40).
	self assert: card wasCharged: 700 * peso! !
