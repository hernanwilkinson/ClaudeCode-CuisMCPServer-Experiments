'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 2:17:07 am'!
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
	instanceVariableNames: 'meansOfTransport'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'BusCardReader class' category: #'2025-2C-2doParcial'!
BusCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'brackets'
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

!classDefinition: #NoDiscount category: #'2025-2C-2doParcial'!
Object subclass: #NoDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'NoDiscount class' category: #'2025-2C-2doParcial'!
NoDiscount class
	instanceVariableNames: ''!

!classDefinition: #RetireeDiscount category: #'2025-2C-2doParcial'!
Object subclass: #RetireeDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'RetireeDiscount class' category: #'2025-2C-2doParcial'!
RetireeDiscount class
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

!classDefinition: #StudentDiscount category: #'2025-2C-2doParcial'!
Object subclass: #StudentDiscount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'StudentDiscount class' category: #'2025-2C-2doParcial'!
StudentDiscount class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'meansOfTransport origin destination startTime discountFactor'
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
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subteD retiroMitre belgranoMitre sanIsidro tigre mitre'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'ISWMetropolitanoTest class' category: #'2025-2C-2doParcial-Tests'!
ISWMetropolitanoTest class
	instanceVariableNames: ''!


!BajeCard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
initializeWithBalance: anAmount discount: aDiscount
	balance := anAmount.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
balance
	^balance! !

!BajeCard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
trips
	^trips copy! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
isTransferAt: aDateTime
	^trips notEmpty and: [trips last startedWithin: self transferPeriod before: aDateTime]! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
numberOfTripsOn: aDate
	^trips count: [:aTrip | aTrip startedOn: aDate]! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
transferFactor
	^1/2! !

!BajeCard methodsFor: 'trips' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
transferPeriod
	^2 * hour! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
discountFactorAt: aDateTime
	^discount
		factorAt: aDateTime
		for: self
		ifNotApplicable: [(self isTransferAt: aDateTime) ifTrue: [self transferFactor] ifFalse: [1]]! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
endLastTripAt: aStop
	| lastTrip adjustedTrip refund |
	lastTrip := trips last.
	adjustedTrip := lastTrip endingAt: aStop.
	refund := lastTrip price - adjustedTrip price.
	balance := balance + refund.
	trips removeLast; add: adjustedTrip.
	^refund! !

!BajeCard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
payTripOn: aMeansOfTransport from: anOrigin to: aDestination at: aDateTime
	| trip price |
	trip := Trip on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withDiscountFactor: (self discountFactorAt: aDateTime).
	price := trip price.
	price > balance ifTrue: [self error: self class insufficientBalanceErrorDescription].
	balance := balance - price.
	trips add: trip.
	^price! !

!BajeCard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
withBalance: anAmount discount: aDiscount
	^self new initializeWithBalance: anAmount discount: aDiscount! !

!BajeCard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
insufficientBalanceErrorDescription
	^'Insufficient balance'! !

!BusCardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
initializeFor: aMeansOfTransport
	meansOfTransport := aMeansOfTransport! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime
	^aCard payTripOn: meansOfTransport from: anOrigin to: aDestination at: aDateTime! !

!BusCardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
for: aMeansOfTransport
	^self new initializeFor: aMeansOfTransport! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
initialize
	brackets := OrderedCollection new! !

!FareTable methodsFor: 'configuring' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
upTo: aMaximumDistance charge: aPrice
	"Brackets must be added from the shortest to the longest distance"
	brackets add: aMaximumDistance -> aPrice! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
priceFor: aDistance
	^(brackets detect: [:aBracket | aDistance <= aBracket key]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
fixed: aPrice
	^self new upTo: PlusInfinity new charge: aPrice; yourself! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
new
	^super new initialize! !

!MeansOfTransport methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable
	name := aName.
	stops := aCollectionOfStops asOrderedCollection.
	fareTable := aFareTable! !

!MeansOfTransport methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
name
	^name! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
headStop
	^stops detectMin: [:aStop | aStop distanceToHead]! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
includes: aStop
	^stops includes: aStop! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
isTerminal: aStop
	^aStop == self headStop or: [aStop == self lastStop]! !

!MeansOfTransport methodsFor: 'stops' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
lastStop
	^stops detectMax: [:aStop | aStop distanceToHead]! !

!MeansOfTransport methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
priceFrom: anOrigin to: aDestination
	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!MeansOfTransport methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!MeansOfTransport class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable
	self assertHasAtLeastTwoStops: aCollectionOfStops.
	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!MeansOfTransport class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
assertHasAtLeastTwoStops: aCollectionOfStops
	aCollectionOfStops size < 2 ifTrue: [self error: self notEnoughStopsErrorDescription]! !

!MeansOfTransport class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
notEnoughStopsErrorDescription
	^'A means of transport must have at least two stops'! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
factorAt: aDateTime for: aCard ifNotApplicable: aBlock
	^aBlock value! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
factorAt: aDateTime for: aCard ifNotApplicable: aBlock
	^(aCard numberOfTripsOn: aDateTime date) < self freeTripsPerDay
		ifTrue: [0]
		ifFalse: [aBlock value]! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
freeTripsPerDay
	^2! !

!Stop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
initializeNamed: aName at: aDistanceToHead
	name := aName.
	distanceToHead := aDistanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
distanceToHead
	^distanceToHead! !

!Stop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
name
	^name! !

!Stop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
distanceTo: aStop
	^(distanceToHead - aStop distanceToHead) abs! !

!Stop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 5:15:04 am (UTC)'!
printOn: aStream
	aStream nextPutAll: name! !

!Stop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:03 am (UTC)'!
named: aName at: aDistanceToHead
	^self new initializeNamed: aName at: aDistanceToHead! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
factorAt: aDateTime for: aCard ifNotApplicable: aBlock
	| date |
	date := aDateTime date.
	^(date isSaturday or: [date isSunday])
		ifTrue: [aBlock value]
		ifFalse: [1/2]! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withDiscountFactor: aFactor
	meansOfTransport := aMeansOfTransport.
	origin := anOrigin.
	destination := aDestination.
	startTime := aDateTime.
	discountFactor := aFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
destination
	^destination! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
meansOfTransport
	^meansOfTransport! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
origin
	^origin! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
startTime
	^startTime! !

!Trip methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
price
	^(meansOfTransport priceFrom: origin to: destination) * discountFactor! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
startedOn: aDate
	^startTime date = aDate! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
startedWithin: aTimeMeasure before: aDateTime
	^(startTime distanceTo: aDateTime) <= aTimeMeasure! !

!Trip methodsFor: 'ending' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
endingAt: aStop
	^self class on: meansOfTransport from: origin to: aStop startingAt: startTime withDiscountFactor: discountFactor! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
on: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withDiscountFactor: aFactor
	self assertStopsOf: aMeansOfTransport from: anOrigin to: aDestination.
	^self new initializeOn: aMeansOfTransport from: anOrigin to: aDestination startingAt: aDateTime withDiscountFactor: aFactor! !

!Trip class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
assertStopsOf: aMeansOfTransport from: anOrigin to: aDestination
	((aMeansOfTransport includes: anOrigin) and: [aMeansOfTransport includes: aDestination])
		ifFalse: [self error: self stopsNotInMeansOfTransportErrorDescription].
	anOrigin == aDestination ifTrue: [self error: self sameOriginAndDestinationErrorDescription]! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
sameOriginAndDestinationErrorDescription
	^'Origin and destination must be different'! !

!Trip class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
stopsNotInMeansOfTransportErrorDescription
	^'Origin and destination must be stops of the means of transport'! !

!Turnstile methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
initializeOf: aMeansOfTransport at: aStop
	meansOfTransport := aMeansOfTransport.
	stop := aStop! !

!Turnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
charge: aCard goingTowards: aDirection at: aDateTime
	(meansOfTransport isTerminal: aDirection) ifFalse: [self error: self class invalidDirectionErrorDescription].
	^aCard payTripOn: meansOfTransport from: stop to: aDirection at: aDateTime! !

!Turnstile class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
of: aMeansOfTransport at: aStop
	^self new initializeOf: aMeansOfTransport at: aStop! !

!Turnstile class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
invalidDirectionErrorDescription
	^'Direction must be the head of the line or the last stop'! !

!TrainTurnstile methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 5:15:26 am (UTC)'!
chargeExitOf: aCard
	^aCard endLastTripAt: stop! !

!ISWMetropolitanoTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 5:15:39 am (UTC)'!
setUp
	constitucion := Stop named: 'Constitución' at: 0 * kilometer.
	plazaDeMayo := Stop named: 'Plaza de Mayo' at: 5 * kilometer.
	retiro := Stop named: 'Retiro' at: 8 * kilometer.
	belgrano := Stop named: 'Belgrano' at: 12 * kilometer.
	line60 := MeansOfTransport
		named: 'Colectivo Línea 60'
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable new
			upTo: 5 * kilometer charge: 600 * peso;
			upTo: 10 * kilometer charge: 1000 * peso;
			upTo: PlusInfinity new charge: 1300 * peso;
			yourself).

	congreso := Stop named: 'Congreso de Tucumán' at: 0 * kilometer.
	tribunales := Stop named: 'Tribunales' at: 1.2 * kilometer.
	callao := Stop named: 'Callao' at: 2.5 * kilometer.
	palermo := Stop named: 'Palermo' at: 6 * kilometer.
	subteD := MeansOfTransport
		named: 'Subte Línea D'
		stops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).

	retiroMitre := Stop named: 'Retiro' at: 0 * kilometer.
	belgranoMitre := Stop named: 'Belgrano' at: 8 * kilometer.
	sanIsidro := Stop named: 'San Isidro' at: 18 * kilometer.
	tigre := Stop named: 'Tigre' at: 28 * kilometer.
	mitre := MeansOfTransport
		named: 'Tren Mitre - Ramal Retiro-Tigre'
		stops: { retiroMitre. belgranoMitre. sanIsidro. tigre }
		fareTable: (FareTable new
			upTo: 15 * kilometer charge: 400 * peso;
			upTo: PlusInfinity new charge: 600 * peso;
			yourself)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
cardWith: aDiscount
	^BajeCard withBalance: 5000 * peso discount: aDiscount! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
monday
	^November twentyfourth, 2025! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:15:39 am (UTC)'!
november: aDayNumber at: anHour minutes: aMinute
	^(November dayNumber: aDayNumber) , 2025 atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
on: aDate at: anHour minutes: aMinute
	^aDate atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
saturday
	^November twentysecond, 2025! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
should: aBlock failWith: anErrorDescription
	self should: aBlock raise: Error withExceptionDo: [:anError | self assert: anErrorDescription equals: anError messageText]! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
sunday
	^November twentythird, 2025! !

!ISWMetropolitanoTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
tuesday
	^November twentyfifth, 2025! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test01BusChargesFullPriceWithNoDiscount
	| card |
	card := self cardWith: NoDiscount new.
	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 4400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:48 am (UTC)'!
test02BusPriceDependsOnDistance
	| card reader |
	card := self cardWith: NoDiscount new.
	reader := BusCardReader for: line60.
	self assert: 1000 * peso equals: (reader charge: card from: constitucion to: retiro at: (self on: self monday at: 8 minutes: 0)).
	self assert: 1300 * peso equals: (reader charge: card from: belgrano to: constitucion at: (self on: self tuesday at: 8 minutes: 0)).
	self assert: 600 * peso equals: (reader charge: card from: retiro to: belgrano at: (self on: self tuesday at: 18 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test03StudentPaysHalfOnWeekdays
	| card |
	card := self cardWith: StudentDiscount new.
	self assert: 650 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: belgrano at: (self on: self monday at: 11 minutes: 0)).
	self assert: 4350 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:34 am (UTC)'!
test04StudentPaysFullPriceOnWeekends
	| card reader |
	card := self cardWith: StudentDiscount new.
	reader := BusCardReader for: line60.
	self assert: 1300 * peso equals: (reader charge: card from: constitucion to: belgrano at: (self on: self saturday at: 11 minutes: 0)).
	self assert: 1300 * peso equals: (reader charge: card from: constitucion to: belgrano at: (self on: self sunday at: 11 minutes: 0)).
	self assert: 2400 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test05SubwayChargesFixedPrice
	| card |
	card := self cardWith: NoDiscount new.
	self assert: 1000 * peso equals: ((Turnstile of: subteD at: tribunales) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 1000 * peso equals: ((Turnstile of: subteD at: callao) charge: card goingTowards: congreso at: (self on: self tuesday at: 15 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test06RetireeHasTwoFreeTripsPerDay
	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := Turnstile of: subteD at: tribunales.
	self assert: 0 * peso equals: (turnstile charge: card goingTowards: congreso at: (self on: self saturday at: 9 minutes: 0)).
	self assert: 0 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 12 minutes: 0)).
	self assert: 1000 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 18 minutes: 0)).
	self assert: 0 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self sunday at: 18 minutes: 0)).
	self assert: 4000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test07TrainChargesByDistanceToDirection
	| card |
	card := self cardWith: NoDiscount new.
	self assert: 600 * peso equals: ((TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: retiroMitre at: (self on: self saturday at: 9 minutes: 0)).
	self assert: 400 * peso equals: ((TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: tigre at: (self on: self sunday at: 9 minutes: 0))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test08TrainExitRefundsDifference
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: retiroMitre at: (self on: self saturday at: 9 minutes: 0).
	self assert: 200 * peso equals: ((TrainTurnstile of: mitre at: belgranoMitre) chargeExitOf: card).
	self assert: 4600 * peso equals: card balance.
	self assert: belgranoMitre equals: card trips last destination! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test09TrainWithoutExitKeepsEntryCharge
	| card |
	card := self cardWith: NoDiscount new.
	(TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: retiroMitre at: (self on: self saturday at: 9 minutes: 0).
	(TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: retiroMitre at: (self on: self sunday at: 9 minutes: 0).
	self assert: 3800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test10TrainExitRefundKeepsDiscountOfEntry
	| card |
	card := self cardWith: StudentDiscount new.
	self assert: 300 * peso equals: ((TrainTurnstile of: mitre at: sanIsidro) charge: card goingTowards: retiroMitre at: (self on: self tuesday at: 9 minutes: 0)).
	self assert: 100 * peso equals: ((TrainTurnstile of: mitre at: belgranoMitre) chargeExitOf: card).
	self assert: 4800 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test11TripWithinTwoHoursIsTransfer
	| card |
	card := self cardWith: NoDiscount new.
	self assert: 600 * peso equals: ((BusCardReader for: line60) charge: card from: constitucion to: plazaDeMayo at: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 500 * peso equals: ((Turnstile of: subteD at: tribunales) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 30)).
	self assert: 3900 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test12TransferIsMeasuredFromStartOfLastTripAndHasNoLimit
	| card turnstile |
	card := self cardWith: NoDiscount new.
	turnstile := Turnstile of: subteD at: tribunales.
	turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0).
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 12 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 13 minutes: 30)).
	self assert: 1000 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 15 minutes: 31))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test13StudentDiscountIsNotCumulativeWithTransferOnWeekdays
	| card turnstile |
	card := self cardWith: StudentDiscount new.
	turnstile := Turnstile of: subteD at: tribunales.
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test14StudentGetsTransferDiscountOnWeekends
	| card turnstile |
	card := self cardWith: StudentDiscount new.
	turnstile := Turnstile of: subteD at: tribunales.
	self assert: 1000 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 10 minutes: 0)).
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 10 minutes: 30))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test15RetireeGetsTransferDiscountAfterFreeTrips
	| card turnstile |
	card := self cardWith: RetireeDiscount new.
	turnstile := Turnstile of: subteD at: tribunales.
	turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 10 minutes: 0).
	turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 10 minutes: 10).
	self assert: 500 * peso equals: (turnstile charge: card goingTowards: palermo at: (self on: self saturday at: 10 minutes: 20))! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test16CanNotPayWithoutEnoughBalance
	| card |
	card := BajeCard withBalance: 999 * peso discount: NoDiscount new.
	self
		should: [(Turnstile of: subteD at: tribunales) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: BajeCard insufficientBalanceErrorDescription.
	self assert: 999 * peso equals: card balance.
	self assert: card trips isEmpty! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test17CanPayWithExactBalance
	| card |
	card := BajeCard withBalance: 1000 * peso discount: NoDiscount new.
	(Turnstile of: subteD at: tribunales) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0).
	self assert: 0 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test18OriginAndDestinationMustBelongToMeansOfTransport
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [(BusCardReader for: line60) charge: card from: constitucion to: belgranoMitre at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Trip stopsNotInMeansOfTransportErrorDescription.
	self
		should: [(BusCardReader for: line60) charge: card from: retiroMitre to: belgrano at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Trip stopsNotInMeansOfTransportErrorDescription.
	self
		should: [(Turnstile of: subteD at: plazaDeMayo) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Trip stopsNotInMeansOfTransportErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test19OriginAndDestinationMustBeDifferent
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [(BusCardReader for: line60) charge: card from: retiro to: retiro at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self
		should: [(Turnstile of: subteD at: palermo) charge: card goingTowards: palermo at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Trip sameOriginAndDestinationErrorDescription.
	self assert: 5000 * peso equals: card balance! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:27 am (UTC)'!
test20MeansOfTransportMustHaveAtLeastTwoStops
	self
		should: [MeansOfTransport named: 'Empty' stops: #() fareTable: (FareTable fixed: 100 * peso)]
		failWith: MeansOfTransport notEnoughStopsErrorDescription.
	self
		should: [MeansOfTransport named: 'One stop' stops: { constitucion } fareTable: (FareTable fixed: 100 * peso)]
		failWith: MeansOfTransport notEnoughStopsErrorDescription! !

!ISWMetropolitanoTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 5:16:34 am (UTC)'!
test21SubwayAndTrainDirectionMustBeHeadOrLastStop
	| card |
	card := self cardWith: NoDiscount new.
	self
		should: [(Turnstile of: subteD at: tribunales) charge: card goingTowards: callao at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Turnstile invalidDirectionErrorDescription.
	self
		should: [(TrainTurnstile of: mitre at: retiroMitre) charge: card goingTowards: sanIsidro at: (self on: self tuesday at: 10 minutes: 0)]
		failWith: Turnstile invalidDirectionErrorDescription.
	self assert: card trips isEmpty! !
