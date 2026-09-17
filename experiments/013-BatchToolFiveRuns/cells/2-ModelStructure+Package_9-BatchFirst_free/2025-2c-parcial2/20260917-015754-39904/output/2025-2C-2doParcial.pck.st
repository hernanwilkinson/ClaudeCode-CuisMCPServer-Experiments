'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:00:46 am'!
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
	instanceVariableNames: 'line'
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
	instanceVariableNames: 'fares'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
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
	instanceVariableNames: 'line origin destination startTime discountFactor'
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

!classDefinition: #ISWMetropolitanoTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #ISWMetropolitanoTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congresoDeTucuman tribunales callao palermo subteD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
trips

	^trips copy! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
endLastTripAt: aStop

	| trip chargeBeforeEnding |
	trip := trips last.
	chargeBeforeEnding := trip charge.
	trip endAt: aStop.
	balance := balance + chargeBeforeEnding - trip charge! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
numberOfTripsOnDayOf: aDateTime

	^trips count: [ :trip | trip startedOnSameDayAs: aDateTime ]! !

!BAJECard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
startTrip: aTrip

	| factor charge |
	factor := (discount factorAt: aTrip startTime for: self) min: (self transferFactorAt: aTrip startTime).
	charge := aTrip fullPrice * factor.
	charge > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ].
	aTrip applyDiscountFactor: factor.
	balance := balance - charge.
	trips add: aTrip! !

!BAJECard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
isTransferAt: aDateTime

	^trips notEmpty and: [ trips last startedWithin: 2 * hour before: aDateTime ]! !

!BAJECard methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
transferFactorAt: aDateTime

	^(self isTransferAt: aDateTime) ifTrue: [ 1/2 ] ifFalse: [ 1 ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeFor: aLine

	line := aLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	aCard startTrip: (Trip on: line from: anOrigin to: aDestination at: aDateTime)! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
for: aLine

	^self new initializeFor: aLine! !

!CardDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
factorAt: aDateTime for: aCard

	self subclassResponsibility! !

!NoDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
factorAt: aDateTime for: aCard

	^1! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
factorAt: aDateTime for: aCard

	^(aCard numberOfTripsOnDayOf: aDateTime) < self freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'discount' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
factorAt: aDateTime for: aCard

	| day |
	day := aDateTime date day.
	^(day isSaturday or: [ day isSunday ]) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initialize

	fares := OrderedCollection new! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
priceFor: aDistance

	^(fares detect: [ :fare | aDistance <= fare key ]) value! !

!FareTable methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
upTo: aDistance charge: aPrice

	fares add: aDistance -> aPrice! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
fixed: aPrice

	^self new upTo: PlusInfinity new charge: aPrice! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeNamed: aName atDistanceFromHead: aDistance

	name := aName.
	distanceFromHead := aDistance! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
distanceFromHead

	^distanceFromHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
name

	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
distanceTo: aStop

	^(distanceFromHead - aStop distanceFromHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
named: aName atDistanceFromHead: aDistance

	^self new initializeNamed: aName atDistanceFromHead: aDistance! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeWithStops: aStops fareTable: aFareTable

	stops := aStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
head

	^stops first! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
isTerminal: aStop

	^aStop = self head or: [ aStop = self lastStop ]! !

!TransportLine methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
lastStop

	^stops last! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
assertIsDirection: aStop

	(self isTerminal: aStop) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'fares' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
withStops: aStops fareTable: aFareTable

	self assertHasAtLeastTwoStops: aStops.
	^self new initializeWithStops: aStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
assertHasAtLeastTwoStops: aStops

	aStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeOn: aLine from: anOrigin to: aDestination at: aDateTime

	line := aLine.
	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	discountFactor := 1! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
destination

	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
startTime

	^startTime! !

!Trip methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
applyDiscountFactor: aFactor

	discountFactor := aFactor! !

!Trip methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
charge

	^self fullPrice * discountFactor! !

!Trip methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
fullPrice

	^line priceFrom: origin to: destination! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
endAt: aStop

	destination := aStop! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
startedOnSameDayAs: aDateTime

	^startTime date = aDateTime date! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
startedWithin: aTimeSpan before: aDateTime

	^(startTime distanceTo: aDateTime) <= aTimeSpan! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
on: aLine from: anOrigin to: aDestination at: aDateTime

	self assertStopsOf: aLine areValidFrom: anOrigin to: aDestination.
	^self new initializeOn: aLine from: anOrigin to: aDestination at: aDateTime! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
assertStopsOf: aLine areValidFrom: anOrigin to: aDestination

	((aLine includes: anOrigin) and: [ aLine includes: aDestination ]) ifFalse: [ self error: self stopsNotInLineErrorDescription ].
	anOrigin = aDestination ifTrue: [ self error: self sameOriginAndDestinationErrorDescription ]! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
stopsNotInLineErrorDescription

	^'Origin and destination must be stops of the means of transport'! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
initializeAt: aStop of: aLine

	stop := aStop.
	line := aLine! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
charge: aCard towards: aDirection at: aDateTime

	line assertIsDirection: aDirection.
	aCard startTrip: (Trip on: line from: stop to: aDirection at: aDateTime)! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
at: aStop of: aLine

	^self new initializeAt: aStop of: aLine! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
registerExitOf: aCard

	aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
setUp

	| line60Fares mitreFares |
	constitucion := Stop named: 'Constitución' atDistanceFromHead: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' atDistanceFromHead: 5 * kilometer.
	retiro := Stop named: 'Retiro' atDistanceFromHead: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' atDistanceFromHead: 12 * kilometer.
	line60Fares := FareTable new.
	line60Fares upTo: 5 * kilometer charge: 600 * peso.
	line60Fares upTo: 10 * kilometer charge: 1000 * peso.
	line60Fares upTo: PlusInfinity new charge: 1300 * peso.
	line60 := TransportLine withStops: { constitucion. plazaDeMayo. retiro. belgrano } fareTable: line60Fares.

	congresoDeTucuman := Stop named: 'Congreso de Tucumán' atDistanceFromHead: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' atDistanceFromHead: 6/5 * kilometer.
	callao := Stop named: 'Callao' atDistanceFromHead: 5/2 * kilometer.
	palermo := Stop named: 'Palermo' atDistanceFromHead: 6 * kilometer.
	subteD := TransportLine withStops: { congresoDeTucuman. tribunales. callao. palermo } fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' atDistanceFromHead: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' atDistanceFromHead: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' atDistanceFromHead: 18 * kilometer.
	tigre := Stop named: 'Tigre' atDistanceFromHead: 28 * kilometer.
	mitreFares := FareTable new.
	mitreFares upTo: 15 * kilometer charge: 400 * peso.
	mitreFares upTo: PlusInfinity new charge: 600 * peso.
	mitre := TransportLine withStops: { retiroMitre. belgranoMitre. sanIsidro. tigre } fareTable: mitreFares! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
assertCharging: aBlock to: aCard is: anAmount

	| balanceBefore |
	balanceBefore := aCard balance.
	aBlock value.
	self assert: anAmount equals: balanceBefore - aCard balance! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
busLine60

	^BusCardReader for: line60! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
cardWith: aDiscount

	^BAJECard withBalance: 10000 * peso discount: aDiscount! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute

	^GregorianDateTime date: (November / aDayNumber / 2025) timeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self should: aBlock raise: Error withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:31 am (UTC)'!
test01MeansOfTransportMustHaveAtLeastTwoStops

	self should: [ TransportLine withStops: { constitucion } fareTable: (FareTable fixed: 100 * peso) ] failWith: TransportLine notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test02TripStopsMustBelongToTheMeansOfTransport

	| card |
	card := self cardWith: NoDiscount new.
	self should: [ self busLine60 charge: card from: constitucion to: palermo at: (self november: 25 at: 10 minutes: 0) ] failWith: Trip stopsNotInLineErrorDescription.
	self should: [ self busLine60 charge: card from: retiroMitre to: retiro at: (self november: 25 at: 10 minutes: 0) ] failWith: Trip stopsNotInLineErrorDescription.
	self assert: card trips isEmpty.
	self assert: 10000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test03TripStopsMustBeDifferent

	| card |
	card := self cardWith: NoDiscount new.
	self should: [ self busLine60 charge: card from: retiro to: retiro at: (self november: 25 at: 10 minutes: 0) ] failWith: Trip sameOriginAndDestinationErrorDescription.
	self should: [ (SubwayTurnstile at: palermo of: subteD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 0) ] failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test04SubwayDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWith: NoDiscount new.
	self should: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: callao at: (self november: 25 at: 10 minutes: 0) ] failWith: TransportLine invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test05TrainDirectionMustBeHeadOrLastStop

	| card |
	card := self cardWith: NoDiscount new.
	self should: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card towards: belgranoMitre at: (self november: 22 at: 9 minutes: 0) ] failWith: TransportLine invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test06CanNotPayWithoutEnoughBalance

	| card |
	card := BAJECard withBalance: 500 * peso discount: NoDiscount new.
	self should: [ self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 500 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests - validations' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test07CanPayWithExactBalance

	| card |
	card := BAJECard withBalance: 600 * peso discount: NoDiscount new.
	self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assert: 0 * peso equals: card balance.
	self assert: 1 equals: card trips size! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test08BusChargesDependingOnDistance

	| card |
	card := self cardWith: NoDiscount new.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] to: card is: 600 * peso.
	self assertCharging: [ self busLine60 charge: card from: belgrano to: plazaDeMayo at: (self november: 25 at: 13 minutes: 0) ] to: card is: 1000 * peso.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: belgrano at: (self november: 25 at: 16 minutes: 0) ] to: card is: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test09StudentPaysHalfFromMondayToFriday

	| card |
	card := self cardWith: StudentDiscount new.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0) ] to: card is: 650 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test10StudentPaysFullPriceOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: belgrano at: (self november: 22 at: 11 minutes: 0) ] to: card is: 1300 * peso.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: belgrano at: (self november: 23 at: 11 minutes: 0) ] to: card is: 1300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test11SubwayChargesFixedPrice

	| card |
	card := self cardWith: NoDiscount new.
	self assertCharging: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0) ] to: card is: 1000 * peso.
	self assertCharging: [ (SubwayTurnstile at: congresoDeTucuman of: subteD) charge: card towards: palermo at: (self november: 22 at: 12 minutes: 0) ] to: card is: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test12RetireeHasTwoFreeTripsPerDay

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := SubwayTurnstile at: tribunales of: subteD.
	self assertCharging: [ turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0) ] to: card is: 0 * peso.
	self assertCharging: [ turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 12 minutes: 0) ] to: card is: 0 * peso.
	self assertCharging: [ turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 15 minutes: 0) ] to: card is: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test13RetireeFreeTripsAreCountedPerDay

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := SubwayTurnstile at: tribunales of: subteD.
	turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 9 minutes: 0).
	turnstile charge: card towards: congresoDeTucuman at: (self november: 22 at: 12 minutes: 0).
	self assertCharging: [ turnstile charge: card towards: congresoDeTucuman at: (self november: 23 at: 12 minutes: 0) ] to: card is: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test14TrainChargesOnEntryDependingOnDistanceToDirection

	| card |
	card := self cardWith: NoDiscount new.
	self assertCharging: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0) ] to: card is: 600 * peso.
	self assertCharging: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card towards: tigre at: (self november: 22 at: 12 minutes: 0) ] to: card is: 400 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test15TrainExitRefundsTheDifferenceOfTheActualTrip

	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	self assertCharging: [ (TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card ] to: card is: -200 * peso.
	self assert: 9600 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test16TrainExitWithSameFareRefundsNothing

	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile at: tigre of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0).
	self assertCharging: [ (TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card ] to: card is: 0 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - charges' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test17TrainExitKeepsTheDiscountAppliedOnEntry

	| card |
	card := self cardWith: StudentDiscount new.
	(TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 24 at: 9 minutes: 0).
	self assertCharging: [ (TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card ] to: card is: -100 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test18TripWithinTwoHoursOfLastTripIsATransfer

	| card |
	card := self cardWith: NoDiscount new.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ] to: card is: 600 * peso.
	self assertCharging: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30) ] to: card is: 500 * peso.
	self assertCharging: [ self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 12 minutes: 30) ] to: card is: 300 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test19TripAfterTwoHoursOfLastTripIsNotATransfer

	| card |
	card := self cardWith: NoDiscount new.
	self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assertCharging: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: palermo at: (self november: 25 at: 12 minutes: 1) ] to: card is: 1000 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test20StudentDiscountIsNotCumulativeWithTransfers

	| card |
	card := self cardWith: StudentDiscount new.
	self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	self assertCharging: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: palermo at: (self november: 25 at: 10 minutes: 30) ] to: card is: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test21StudentGetsTransferDiscountOnWeekends

	| card |
	card := self cardWith: StudentDiscount new.
	self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	self assertCharging: [ (SubwayTurnstile at: tribunales of: subteD) charge: card towards: palermo at: (self november: 22 at: 10 minutes: 30) ] to: card is: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test22RetireeGetsTransferDiscountAfterFreeTrips

	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := SubwayTurnstile at: tribunales of: subteD.
	turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 0).
	turnstile charge: card towards: palermo at: (self november: 22 at: 9 minutes: 30).
	self assertCharging: [ turnstile charge: card towards: palermo at: (self november: 22 at: 10 minutes: 0) ] to: card is: 500 * peso! !

!ISWMetropolitanoTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 5:00:32 am (UTC)'!
test23TrainExitAdjustsWithTransferDiscount

	| card |
	card := self cardWith: NoDiscount new.
	self busLine60 charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 8 minutes: 30).
	self assertCharging: [ (TrainTurnstile at: sanIsidro of: mitre) charge: card towards: retiroMitre at: (self november: 22 at: 9 minutes: 0) ] to: card is: 300 * peso.
	self assertCharging: [ (TrainTurnstile at: belgranoMitre of: mitre) registerExitOf: card ] to: card is: -100 * peso! !
