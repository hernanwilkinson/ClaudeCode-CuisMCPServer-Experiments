'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:26:09 am'!
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

!classDefinition: #CardReader category: #'2025-2C-2doParcial'!
Object subclass: #CardReader
	instanceVariableNames: 'line'
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

!classDefinition: #SubwayCardReader category: #'2025-2C-2doParcial'!
CardReader subclass: #SubwayCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'SubwayCardReader class' category: #'2025-2C-2doParcial'!
SubwayCardReader class
	instanceVariableNames: ''!

!classDefinition: #TrainCardReader category: #'2025-2C-2doParcial'!
SubwayCardReader subclass: #TrainCardReader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TrainCardReader class' category: #'2025-2C-2doParcial'!
TrainCardReader class
	instanceVariableNames: ''!

!classDefinition: #FareTable category: #'2025-2C-2doParcial'!
Object subclass: #FareTable
	instanceVariableNames: 'pricesUpToDistance'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'FareTable class' category: #'2025-2C-2doParcial'!
FareTable class
	instanceVariableNames: ''!

!classDefinition: #TransportLine category: #'2025-2C-2doParcial'!
Object subclass: #TransportLine
	instanceVariableNames: 'name stops fareTable'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportLine class' category: #'2025-2C-2doParcial'!
TransportLine class
	instanceVariableNames: ''!

!classDefinition: #TransportStop category: #'2025-2C-2doParcial'!
Object subclass: #TransportStop
	instanceVariableNames: 'name distanceToHeadOfLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'TransportStop class' category: #'2025-2C-2doParcial'!
TransportStop class
	instanceVariableNames: ''!

!classDefinition: #Trip category: #'2025-2C-2doParcial'!
Object subclass: #Trip
	instanceVariableNames: 'startTime origin chargedPrice priceFactor'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial'!
!classDefinition: 'Trip class' category: #'2025-2C-2doParcial'!
Trip class
	instanceVariableNames: ''!

!classDefinition: #PublicTransportTest category: #'2025-2C-2doParcial-Tests'!
TestCase subclass: #PublicTransportTest
	instanceVariableNames: 'constitucion plazaDeMayo retiro belgrano line60 congreso tribunales callao palermo subwayD trainRetiro trainBelgrano sanIsidro tigre mitreTigre busReader subwayReader trainReader'
	classVariableNames: ''
	poolDictionaries: ''
	category: '2025-2C-2doParcial-Tests'!
!classDefinition: 'PublicTransportTest class' category: #'2025-2C-2doParcial-Tests'!
PublicTransportTest class
	instanceVariableNames: ''!


!BAJECard methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeWithBalance: aBalance discount: aDiscount

	balance := aBalance.
	discount := aDiscount.
	trips := OrderedCollection new! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
balance

	^balance! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
lastTripChargedPrice

	^trips last chargedPrice! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
lastTripOrigin

	^trips last origin! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
numberOfTrips

	^trips size! !

!BAJECard methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
numberOfTripsOn: aDate

	^trips count: [ :aTrip | aTrip isOn: aDate ]! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
adjustLastTripToPriceOf: aFullPrice

	balance := balance + (trips last adjustToPriceOf: aFullPrice)! !

!BAJECard methodsFor: 'paying' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
payTripOf: aFullPrice from: anOrigin at: aDateTime

	| priceFactor price |
	
	priceFactor := (discount priceFactorFor: self at: aDateTime) min: (self transferPriceFactorAt: aDateTime).
	price := aFullPrice * priceFactor.
	self assertCanPay: price.
	
	balance := balance - price.
	trips add: (Trip startingAt: aDateTime from: anOrigin charging: price withPriceFactor: priceFactor)! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
assertCanPay: aPrice

	aPrice > balance ifTrue: [ self error: self class insufficientBalanceErrorDescription ]! !

!BAJECard methodsFor: 'paying - private' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
transferPriceFactorAt: aDateTime

	^(trips notEmpty and: [ trips last allowsTransferAt: aDateTime ])
		ifTrue: [ self class transferPriceFactor ]
		ifFalse: [ 1 ]! !

!BAJECard class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
withBalance: aBalance discount: aDiscount

	^self new initializeWithBalance: aBalance discount: aDiscount! !

!BAJECard class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
insufficientBalanceErrorDescription

	^'Insufficient balance to pay the trip'! !

!BAJECard class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
transferPriceFactor

	^1/2! !

!CardDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	self subclassResponsibility! !

!NoDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^1! !

!RetireeDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	^(aCard numberOfTripsOn: aDateTime date) < self class freeTripsPerDay ifTrue: [ 0 ] ifFalse: [ 1 ]! !

!RetireeDiscount class methodsFor: 'configuration' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
freeTripsPerDay

	^2! !

!StudentDiscount methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFactorFor: aCard at: aDateTime

	| date |
	
	date := aDateTime date.
	^(date isSaturday or: [ date isSunday ]) ifTrue: [ 1 ] ifFalse: [ 1/2 ]! !

!CardReader methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeFor: aTransportLine

	line := aTransportLine! !

!CardReader class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
for: aTransportLine

	^self new initializeFor: aTransportLine! !

!BusCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
charge: aCard from: anOrigin to: aDestination at: aDateTime

	line assertIsValidTripFrom: anOrigin to: aDestination.
	
	aCard payTripOf: (line priceFrom: anOrigin to: aDestination) from: anOrigin at: aDateTime! !

!SubwayCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
charge: aCard boardingAt: aStop towards: aDirection at: aDateTime

	line assertIsValidTripFrom: aStop towards: aDirection.
	
	aCard payTripOf: (line priceFrom: aStop to: aDirection) from: aStop at: aDateTime! !

!TrainCardReader methodsFor: 'charging' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
adjust: aCard gettingOffAt: aStop

	aCard adjustLastTripToPriceOf: (line priceFrom: aCard lastTripOrigin to: aStop)! !

!FareTable methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeWithPricesUpToDistance: aCollectionOfDistanceToPriceAssociations

	pricesUpToDistance := aCollectionOfDistanceToPriceAssociations asSortedCollection: [ :aPriceUpToDistance :anotherPriceUpToDistance | 
		aPriceUpToDistance key <= anotherPriceUpToDistance key ]! !

!FareTable methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFor: aDistance

	^(pricesUpToDistance detect: [ :aPriceUpToDistance | aDistance <= aPriceUpToDistance key ]) value! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
fixed: aPrice

	^self withPricesUpToDistance: { PlusInfinity new -> aPrice }! !

!FareTable class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
withPricesUpToDistance: aCollectionOfDistanceToPriceAssociations

	^self new initializeWithPricesUpToDistance: aCollectionOfDistanceToPriceAssociations! !

!TransportLine methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable

	name := aName.
	stops := aCollectionOfStops asArray.
	fareTable := aFareTable! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
headOfLine

	^stops first! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
lastStop

	^stops last! !

!TransportLine methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
name

	^name! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
includes: aStop

	^stops includes: aStop! !

!TransportLine methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
isTerminal: aStop

	^aStop = self headOfLine or: [ aStop = self lastStop ]! !

!TransportLine methodsFor: 'pricing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
priceFrom: anOrigin to: aDestination

	^fareTable priceFor: (anOrigin distanceTo: aDestination)! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
assertIncludes: aStop

	(self includes: aStop) ifFalse: [ self error: self class stopNotInLineErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
assertIsValidTripFrom: anOrigin to: aDestination

	self assertIncludes: anOrigin.
	self assertIncludes: aDestination.
	anOrigin = aDestination ifTrue: [ self error: self class sameOriginAndDestinationErrorDescription ]! !

!TransportLine methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
assertIsValidTripFrom: anOrigin towards: aDirection

	self assertIsValidTripFrom: anOrigin to: aDirection.
	(self isTerminal: aDirection) ifFalse: [ self error: self class invalidDirectionErrorDescription ]! !

!TransportLine methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportLine class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
named: aName stops: aCollectionOfStops fareTable: aFareTable

	self assertHasEnoughStops: aCollectionOfStops.
	
	^self new initializeNamed: aName stops: aCollectionOfStops fareTable: aFareTable! !

!TransportLine class methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
assertHasEnoughStops: aCollectionOfStops

	aCollectionOfStops size < 2 ifTrue: [ self error: self notEnoughStopsErrorDescription ]! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
invalidDirectionErrorDescription

	^'The direction must be the head of the line or the last stop'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
notEnoughStopsErrorDescription

	^'A means of transport must have at least two stops'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
sameOriginAndDestinationErrorDescription

	^'Origin and destination must be different'! !

!TransportLine class methodsFor: 'error descriptions' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
stopNotInLineErrorDescription

	^'The stop does not belong to the means of transport'! !

!TransportStop methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeNamed: aName distanceToHeadOfLine: aDistance

	name := aName.
	distanceToHeadOfLine := aDistance! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
distanceToHeadOfLine

	^distanceToHeadOfLine! !

!TransportStop methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
name

	^name! !

!TransportStop methodsFor: 'distance' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
distanceTo: aStop

	^(distanceToHeadOfLine - aStop distanceToHeadOfLine) abs! !

!TransportStop methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!TransportStop class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
named: aName distanceToHeadOfLine: aDistance

	^self new initializeNamed: aName distanceToHeadOfLine: aDistance! !

!Trip methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
initializeStartingAt: aDateTime from: anOrigin charging: aPrice withPriceFactor: aPriceFactor

	startTime := aDateTime.
	origin := anOrigin.
	chargedPrice := aPrice.
	priceFactor := aPriceFactor! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
chargedPrice

	^chargedPrice! !

!Trip methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
origin

	^origin! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
allowsTransferAt: aDateTime

	^(startTime distanceTo: aDateTime) <= self class transferTimeLimit! !

!Trip methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
isOn: aDate

	^startTime date = aDate! !

!Trip methodsFor: 'adjusting' stamp: 'HAW 17/Sep/2026, 4:25:07 am (UTC)'!
adjustToPriceOf: aFullPrice

	"Answers the amount to refund, keeping the price factor applied when the trip started"
	| adjustedPrice refund |
	
	adjustedPrice := aFullPrice * priceFactor.
	refund := chargedPrice - adjustedPrice.
	chargedPrice := adjustedPrice.
	
	^refund! !

!Trip class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
startingAt: aDateTime from: anOrigin charging: aPrice withPriceFactor: aPriceFactor

	^self new initializeStartingAt: aDateTime from: anOrigin charging: aPrice withPriceFactor: aPriceFactor! !

!Trip class methodsFor: 'transfers' stamp: 'HAW 17/Sep/2026, 4:25:00 am (UTC)'!
transferTimeLimit

	^2 * hour! !

!PublicTransportTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
setUp

	constitucion := TransportStop named: 'Constitucion' distanceToHeadOfLine: 0 * kilometer.
	plazaDeMayo := TransportStop named: 'Plaza de Mayo' distanceToHeadOfLine: 5 * kilometer.
	retiro := TransportStop named: 'Retiro' distanceToHeadOfLine: 8 * kilometer.
	belgrano := TransportStop named: 'Belgrano' distanceToHeadOfLine: 12 * kilometer.
	line60 := TransportLine 
		named: 'Linea 60' 
		stops: { constitucion. plazaDeMayo. retiro. belgrano }
		fareTable: (FareTable withPricesUpToDistance: { 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso). PlusInfinity new -> (1300 * peso) }).
	
	congreso := TransportStop named: 'Congreso de Tucuman' distanceToHeadOfLine: 0 * kilometer.
	tribunales := TransportStop named: 'Tribunales' distanceToHeadOfLine: 1.2 * kilometer.
	callao := TransportStop named: 'Callao' distanceToHeadOfLine: 2.5 * kilometer.
	palermo := TransportStop named: 'Palermo' distanceToHeadOfLine: 6 * kilometer.
	subwayD := TransportLine 
		named: 'Subte D' 
		stops: { congreso. tribunales. callao. palermo }
		fareTable: (FareTable fixed: 1000 * peso).
	
	trainRetiro := TransportStop named: 'Retiro' distanceToHeadOfLine: 0 * kilometer.
	trainBelgrano := TransportStop named: 'Belgrano' distanceToHeadOfLine: 8 * kilometer.
	sanIsidro := TransportStop named: 'San Isidro' distanceToHeadOfLine: 18 * kilometer.
	tigre := TransportStop named: 'Tigre' distanceToHeadOfLine: 28 * kilometer.
	mitreTigre := TransportLine 
		named: 'Mitre Retiro-Tigre' 
		stops: { trainRetiro. trainBelgrano. sanIsidro. tigre }
		fareTable: (FareTable withPricesUpToDistance: { 15 * kilometer -> (400 * peso). PlusInfinity new -> (600 * peso) }).
	
	busReader := BusCardReader for: line60.
	subwayReader := SubwayCardReader for: subwayD.
	trainReader := TrainCardReader for: mitreTigre! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
cardWithoutDiscount

	^BAJECard withBalance: 10000 * peso discount: NoDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
november: aDayOfMonth at: anHour minutes: aMinute

	^(November / aDayOfMonth / 2025) atTimeOfDay: (TimeOfDay hours: anHour minutes: aMinute)! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
retireeCard

	^BAJECard withBalance: 10000 * peso discount: RetireeDiscount new! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
should: aBlock failWith: anErrorDescription

	self 
		should: aBlock 
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError | self assert: anErrorDescription equals: anError messageText ]! !

!PublicTransportTest methodsFor: 'support' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
studentCard

	^BAJECard withBalance: 10000 * peso discount: StudentDiscount new! !

!PublicTransportTest methodsFor: 'tests - lines' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test01DistanceBetweenStopsIsTheAbsoluteDifferenceOfTheirDistancesToHeadOfLine

	self assert: 7 * kilometer equals: (belgrano distanceTo: plazaDeMayo).
	self assert: 7 * kilometer equals: (plazaDeMayo distanceTo: belgrano)! !

!PublicTransportTest methodsFor: 'tests - lines' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test02FareTableAnswersPriceOfFirstRangeIncludingTheDistance

	| fareTable |
	
	fareTable := FareTable withPricesUpToDistance: { PlusInfinity new -> (1300 * peso). 5 * kilometer -> (600 * peso). 10 * kilometer -> (1000 * peso) }.
	
	self assert: 600 * peso equals: (fareTable priceFor: 5 * kilometer).
	self assert: 1000 * peso equals: (fareTable priceFor: 7 * kilometer).
	self assert: 1300 * peso equals: (fareTable priceFor: 12 * kilometer)! !

!PublicTransportTest methodsFor: 'tests - lines' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test03LineMustHaveAtLeastTwoStops

	self 
		should: [ TransportLine named: 'Linea 1' stops: { constitucion } fareTable: (FareTable fixed: 1 * peso) ]
		failWith: TransportLine notEnoughStopsErrorDescription! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test04BusChargesPriceAccordingToDistanceWithoutDiscount

	| card |
	
	card := self cardWithoutDiscount.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	
	self assert: 600 * peso equals: card lastTripChargedPrice.
	self assert: 9400 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test05StudentPaysHalfFromMondayToFriday

	| card |
	
	card := self studentCard.
	busReader charge: card from: constitucion to: belgrano at: (self november: 24 at: 11 minutes: 0).
	
	self assert: 650 * peso equals: card lastTripChargedPrice.
	self assert: 9350 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:57 am (UTC)'!
test06StudentPaysFullPriceOnWeekends

	| card |
	
	card := self studentCard.
	busReader charge: card from: constitucion to: belgrano at: (self november: 23 at: 11 minutes: 0).
	
	self assert: 1300 * peso equals: card lastTripChargedPrice.
	self assert: 8700 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test07BusOriginAndDestinationMustBelongToTheLine

	| card |
	
	card := self cardWithoutDiscount.
	
	self 
		should: [ busReader charge: card from: constitucion to: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self 
		should: [ busReader charge: card from: palermo to: constitucion at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self assert: 10000 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test08BusOriginAndDestinationMustBeDifferent

	| card |
	
	card := self cardWithoutDiscount.
	
	self 
		should: [ busReader charge: card from: retiro to: retiro at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - bus' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test09CanNotPayWithInsufficientBalance

	| card |
	
	card := BAJECard withBalance: 599 * peso discount: NoDiscount new.
	
	self 
		should: [ busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: BAJECard insufficientBalanceErrorDescription.
	self assert: 599 * peso equals: card balance.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test10SubwayChargesFixedPrice

	| card |
	
	card := self cardWithoutDiscount.
	subwayReader charge: card boardingAt: callao towards: palermo at: (self november: 25 at: 10 minutes: 0).
	
	self assert: 1000 * peso equals: card lastTripChargedPrice! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test11RetireeHasTwoFreeTripsPerDay

	| card |
	
	card := self retireeCard.
	subwayReader charge: card boardingAt: tribunales towards: congreso at: (self november: 22 at: 9 minutes: 0).
	self assert: 0 * peso equals: card lastTripChargedPrice.
	
	subwayReader charge: card boardingAt: congreso towards: palermo at: (self november: 22 at: 12 minutes: 0).
	self assert: 0 * peso equals: card lastTripChargedPrice.
	
	subwayReader charge: card boardingAt: palermo towards: congreso at: (self november: 22 at: 18 minutes: 0).
	self assert: 1000 * peso equals: card lastTripChargedPrice.
	
	subwayReader charge: card boardingAt: congreso towards: palermo at: (self november: 23 at: 9 minutes: 0).
	self assert: 0 * peso equals: card lastTripChargedPrice.
	self assert: 9000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test12SubwayDirectionMustBeHeadOfLineOrLastStop

	| card |
	
	card := self cardWithoutDiscount.
	
	self 
		should: [ subwayReader charge: card boardingAt: tribunales towards: callao at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription.
	self assert: 0 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test13SubwayBoardingStopMustBeDifferentFromDirection

	self 
		should: [ subwayReader charge: self cardWithoutDiscount boardingAt: palermo towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine sameOriginAndDestinationErrorDescription! !

!PublicTransportTest methodsFor: 'tests - subway' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test14SubwayStopsMustBelongToTheLine

	self 
		should: [ subwayReader charge: self cardWithoutDiscount boardingAt: retiro towards: palermo at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription.
	self 
		should: [ subwayReader charge: self cardWithoutDiscount boardingAt: callao towards: tigre at: (self november: 25 at: 10 minutes: 0) ]
		failWith: TransportLine stopNotInLineErrorDescription! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test15TrainChargesDistanceToDirectionOnEntryAndRefundsDifferenceOnExit

	| card |
	
	card := self cardWithoutDiscount.
	trainReader charge: card boardingAt: sanIsidro towards: trainRetiro at: (self november: 22 at: 9 minutes: 0).
	self assert: 600 * peso equals: card lastTripChargedPrice.
	self assert: 9400 * peso equals: card balance.
	
	trainReader adjust: card gettingOffAt: trainBelgrano.
	self assert: 400 * peso equals: card lastTripChargedPrice.
	self assert: 9600 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test16TrainKeepsEntryChargeWhenNotTappingOnExit

	| card |
	
	card := self cardWithoutDiscount.
	trainReader charge: card boardingAt: sanIsidro towards: trainRetiro at: (self november: 22 at: 9 minutes: 0).
	
	self assert: 9400 * peso equals: card balance.
	self assert: 1 equals: card numberOfTrips! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test17TrainExitAdjustmentKeepsDiscountAppliedOnEntry

	| card |
	
	card := self studentCard.
	trainReader charge: card boardingAt: sanIsidro towards: trainRetiro at: (self november: 25 at: 9 minutes: 0).
	self assert: 300 * peso equals: card lastTripChargedPrice.
	
	trainReader adjust: card gettingOffAt: trainBelgrano.
	self assert: 200 * peso equals: card lastTripChargedPrice.
	self assert: 9800 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test18TrainExitOfAFreeTripRefundsNothing

	| card |
	
	card := self retireeCard.
	trainReader charge: card boardingAt: sanIsidro towards: trainRetiro at: (self november: 22 at: 9 minutes: 0).
	trainReader adjust: card gettingOffAt: trainBelgrano.
	
	self assert: 0 * peso equals: card lastTripChargedPrice.
	self assert: 10000 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - train' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test19TrainDirectionMustBeHeadOfLineOrLastStop

	self 
		should: [ trainReader charge: self cardWithoutDiscount boardingAt: trainRetiro towards: sanIsidro at: (self november: 22 at: 9 minutes: 0) ]
		failWith: TransportLine invalidDirectionErrorDescription! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test20TripWithinTwoHoursOfLastTripStartPaysHalf

	| card |
	
	card := self cardWithoutDiscount.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayReader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).
	self assert: 500 * peso equals: card lastTripChargedPrice.
	
	trainReader charge: card boardingAt: trainBelgrano towards: tigre at: (self november: 25 at: 12 minutes: 30).
	self assert: 300 * peso equals: card lastTripChargedPrice.
	self assert: 8600 * peso equals: card balance! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test21TripAfterTwoHoursOfLastTripStartIsNotATransfer

	| card |
	
	card := self cardWithoutDiscount.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayReader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 12 minutes: 1).
	
	self assert: 1000 * peso equals: card lastTripChargedPrice! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test22StudentTransferDiscountIsNotCumulativeFromMondayToFriday

	| card |
	
	card := self studentCard.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 25 at: 10 minutes: 0).
	subwayReader charge: card boardingAt: tribunales towards: palermo at: (self november: 25 at: 10 minutes: 30).
	
	self assert: 500 * peso equals: card lastTripChargedPrice! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test23StudentGetsTransferDiscountOnWeekends

	| card |
	
	card := self studentCard.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	self assert: 600 * peso equals: card lastTripChargedPrice.
	
	subwayReader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 30).
	self assert: 500 * peso equals: card lastTripChargedPrice! !

!PublicTransportTest methodsFor: 'tests - transfers' stamp: 'HAW 17/Sep/2026, 4:25:53 am (UTC)'!
test24RetireeFreeTripIsNotAffectedByTransfer

	| card |
	
	card := self retireeCard.
	busReader charge: card from: constitucion to: plazaDeMayo at: (self november: 22 at: 10 minutes: 0).
	subwayReader charge: card boardingAt: tribunales towards: palermo at: (self november: 22 at: 10 minutes: 30).
	self assert: 0 * peso equals: card lastTripChargedPrice.
	
	subwayReader charge: card boardingAt: palermo towards: congreso at: (self november: 22 at: 11 minutes: 0).
	self assert: 500 * peso equals: card lastTripChargedPrice! !
