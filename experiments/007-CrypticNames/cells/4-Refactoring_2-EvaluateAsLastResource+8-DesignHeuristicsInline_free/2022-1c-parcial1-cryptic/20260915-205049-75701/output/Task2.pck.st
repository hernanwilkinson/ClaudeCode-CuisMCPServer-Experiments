'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 9:08:26 pm'!
'Description '!
!provides: 'Task2' 1 2!
SystemOrganization addCategory: #Task2!
SystemOrganization addCategory: #'Task2-Tests'!


!classDefinition: #Car category: #Task2!
Object subclass: #Car
	instanceVariableNames: 'driver maximumSpeed turbo distanceTraveled sector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Car class' category: #Task2!
Car class
	instanceVariableNames: ''!

!classDefinition: #Competition category: #Task2!
Object subclass: #Competition
	instanceVariableNames: 'track numberOfLaps'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Competition class' category: #Task2!
Competition class
	instanceVariableNames: ''!

!classDefinition: #NoSector category: #Task2!
Object subclass: #NoSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'NoSector class' category: #Task2!
NoSector class
	instanceVariableNames: ''!

!classDefinition: #Sector category: #Task2!
Object subclass: #Sector
	instanceVariableNames: 'length carPositions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Sector class' category: #Task2!
Sector class
	instanceVariableNames: ''!

!classDefinition: #TurboDisabledSector category: #Task2!
Sector subclass: #TurboDisabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboDisabledSector class' category: #Task2!
TurboDisabledSector class
	instanceVariableNames: ''!

!classDefinition: #TurboEnabledSector category: #Task2!
Sector subclass: #TurboEnabledSector
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboEnabledSector class' category: #Task2!
TurboEnabledSector class
	instanceVariableNames: ''!

!classDefinition: #Track category: #Task2!
Object subclass: #Track
	instanceVariableNames: 'sectors'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Track class' category: #Task2!
Track class
	instanceVariableNames: ''!

!classDefinition: #Turbo category: #Task2!
Object subclass: #Turbo
	instanceVariableNames: 'boost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'Turbo class' category: #Task2!
Turbo class
	instanceVariableNames: ''!

!classDefinition: #ActivatedTurbo category: #Task2!
Turbo subclass: #ActivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ActivatedTurbo class' category: #Task2!
ActivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #DeactivatedTurbo category: #Task2!
Turbo subclass: #DeactivatedTurbo
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'DeactivatedTurbo class' category: #Task2!
DeactivatedTurbo class
	instanceVariableNames: ''!

!classDefinition: #TurboBoost category: #Task2!
Object subclass: #TurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'TurboBoost class' category: #Task2!
TurboBoost class
	instanceVariableNames: ''!

!classDefinition: #ExhaustedTurboBoost category: #Task2!
TurboBoost subclass: #ExhaustedTurboBoost
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'ExhaustedTurboBoost class' category: #Task2!
ExhaustedTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #IncreasingTurboBoost category: #Task2!
TurboBoost subclass: #IncreasingTurboBoost
	instanceVariableNames: 'speedIncrease nextBoost'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2'!
!classDefinition: 'IncreasingTurboBoost class' category: #Task2!
IncreasingTurboBoost class
	instanceVariableNames: ''!

!classDefinition: #F1SimulatorTest category: #'Task2-Tests'!
TestCase subclass: #F1SimulatorTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Task2-Tests'!
!classDefinition: 'F1SimulatorTest class' category: #'Task2-Tests'!
F1SimulatorTest class
	instanceVariableNames: ''!


!Car commentStamp: '<historical>' prior: 0!
I am a race car driven by a driver. I know my maximum speed, the turbo that boosts it, the sector of the track I am in and the distance I have traveled in the competition.!

!Competition commentStamp: '<historical>' prior: 0!
I am a race. I know the track where I am run, the number of laps and I move the cars racing in me, giving them the illusion that the track is closed: a car that reaches the end of the track goes on from its beginning.!

!NoSector commentStamp: '<historical>' prior: 0!
I am the sector of a car that has not been put in a track yet. I let no car use its turbo.!

!Sector commentStamp: '<historical>' prior: 0!
I am a part of a track. I know my length and the position of each car running in me. My subclasses know whether the drivers can use the turbo of their cars in me.!

!TurboDisabledSector commentStamp: '<historical>' prior: 0!
I am a sector where the turbo can not be used.!

!TurboEnabledSector commentStamp: '<historical>' prior: 0!
I am a sector where the turbo can be used, provided the car using it overtakes another car that is less than one second ahead of it.!

!Track commentStamp: '<historical>' prior: 0!
I am the path where a competition takes place. I am made of sectors, and I know the position of a car as the distance from my beginning, no matter the sector the car is in.!

!Turbo commentStamp: '<historical>' prior: 0!
I am the turbo of a car. I know the boost that has to be applied to the maximum speed of the car. My subclasses know whether I am activated or not, and answer the turbo the car has after being activated or deactivated. I am immutable: instead of changing my state I answer the turbo that replaces me.!

!ActivatedTurbo commentStamp: '<historical>' prior: 0!
I am a turbo that is activated. I increase the maximum speed of the car with my boost, and when I am deactivated I answer a deactivated turbo holding the next boost of the sequence.!

!DeactivatedTurbo commentStamp: '<historical>' prior: 0!
I am a turbo that is not activated. I do not change the maximum speed of the car. I know the boost to apply when I am activated, which happens only if the car can overtake another one using turbo.!

!TurboBoost commentStamp: '<historical>' prior: 0!
I am the increase a turbo applies to the maximum speed of a car in one use. I know the boost that follows me, so my subclasses form the sequence of boosts a turbo gives: 20%, 10%, 5% and then nothing.!

!ExhaustedTurboBoost commentStamp: '<historical>' prior: 0!
I am the boost of a turbo that has been used three times: I do not increase the maximum speed of a car and I am followed by myself, because an exhausted turbo never boosts again.!

!IncreasingTurboBoost commentStamp: '<historical>' prior: 0!
I increase the maximum speed of a car by a percentage of it.!

!F1SimulatorTest commentStamp: '<historical>' prior: 0!
I test the model of the F1 simulator: cars, their turbos, the sectors and tracks they run on and the competitions they take part in.!

!Car methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
initializeDrivenBy: aDriver maximumSpeed: aMaximumSpeed

	driver _ aDriver.
	maximumSpeed _ aMaximumSpeed.
	distanceTraveled _ 0 * kilometer.
	turbo _ DeactivatedTurbo unused.
	sector _ NoSector new! !

!Car methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
distanceTraveled

	^distanceTraveled! !

!Car methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
speed

	^turbo speedFrom: maximumSpeed! !

!Car methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
advance: aDistance

	distanceTraveled _ distanceTraveled + aDistance! !

!Car methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
enters: aSector

	sector _ aSector! !

!Car methodsFor: 'moving' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
placeAt: aDistance

	distanceTraveled _ aDistance! !

!Car methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
activateTurbo

	turbo _ turbo activatedFor: self! !

!Car methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
deactivateTurbo

	turbo _ turbo deactivated! !

!Car methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
isTurboActivated

	^turbo isActivated! !

!Car methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
validateTurboUse

	sector validateTurboUseBy: self! !

!Car methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
printOn: aStream

	aStream nextPutAll: 'Car driven by '; print: driver! !

!Car class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:03:03 am (UTC)'!
drivenBy: aDriver maximumSpeed: aMaximumSpeed

	^self new initializeDrivenBy: aDriver maximumSpeed: aMaximumSpeed! !

!Competition methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
initializeRunningOn: aTrack laps: aNumberOfLaps

	track _ aTrack.
	numberOfLaps _ aNumberOfLaps! !

!Competition methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
distance

	^track length * numberOfLaps! !

!Competition methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
distanceTraveledBy: aCar

	^aCar distanceTraveled! !

!Competition methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
sectorOf: aCar

	^track sectorOf: aCar! !

!Competition methodsFor: 'racing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
advance: aDuration

	track cars do: [ :aCar | self advance: aCar during: aDuration ]! !

!Competition methodsFor: 'racing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
advance: aCar during: aDuration

	aCar advance: aCar speed * aDuration.
	self updatePositionInTrackOf: aCar! !

!Competition methodsFor: 'racing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
place: aCar at: aDistance

	aCar placeAt: aDistance.
	self updatePositionInTrackOf: aCar! !

!Competition methodsFor: 'racing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
placeAtStartingLine: someCars

	someCars do: [ :aCar | self place: aCar at: 0 * kilometer ]! !

!Competition methodsFor: 'racing' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
updatePositionInTrackOf: aCar

	track put: aCar at: aCar distanceTraveled \\ track length! !

!Competition class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
runningOn: aTrack laps: aNumberOfLaps

	^self runningOn: aTrack laps: aNumberOfLaps cars: #()! !

!Competition class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:04:00 am (UTC)'!
runningOn: aTrack laps: aNumberOfLaps cars: someCars

	| aCompetition |

	aCompetition _ self new initializeRunningOn: aTrack laps: aNumberOfLaps.
	aCompetition placeAtStartingLine: someCars.

	^aCompetition! !

!NoSector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
validateTurboUseBy: aCar

	self error: self class carIsNotInATrackErrorDescription! !

!NoSector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
carIsNotInATrackErrorDescription

	^'The car is not in a track'! !

!Sector methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
initializeOfLength: aLength

	length _ aLength.
	carPositions _ Dictionary new! !

!Sector methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
length

	^length! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
cars

	^carPositions keys! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
carsSortedByPosition

	^self cars asSortedCollection: [ :aCar :anotherCar | (self positionOf: aCar) <= (self positionOf: anotherCar) ]! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
includes: aCar

	^carPositions includesKey: aCar! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
positionOf: aCar

	^carPositions at: aCar! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
put: aCar at: aPosition

	self assertIsInside: aPosition.

	carPositions at: aCar put: aPosition.
	aCar enters: self! !

!Sector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
remove: aCar

	carPositions removeKey: aCar ifAbsent: [ ]! !

!Sector methodsFor: 'preconditions' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
assertIsInside: aPosition

	aPosition > length ifTrue: [ self error: self class invalidPositionErrorDescription ]! !

!Sector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
validateTurboUseBy: aCar

	self subclassResponsibility! !

!Sector class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
ofLength: aLength

	self assertIsStrictlyPositive: aLength.

	^self new initializeOfLength: aLength! !

!Sector class methodsFor: 'preconditions' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
assertIsStrictlyPositive: aLength

	aLength strictlyPositive ifFalse: [ self error: self invalidLengthErrorDescription ]! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
invalidLengthErrorDescription

	^'Sector length must be strictly positive'! !

!Sector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:39 am (UTC)'!
invalidPositionErrorDescription

	^'Position must be within the sector length'! !

!TurboDisabledSector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
validateTurboUseBy: aCar

	self error: self class turboCanNotBeUsedErrorDescription! !

!TurboDisabledSector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
turboCanNotBeUsedErrorDescription

	^'Turbo can not be used in this sector'! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
validate: aCar canOvertake: aCarAhead

	(self timeBetween: aCar and: aCarAhead) >= self class maximumTimeAheadToOvertake
		ifTrue: [ self error: self class carToOvertakeIsTooFarErrorDescription ]! !

!TurboEnabledSector methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
validateTurboUseBy: aCar

	| carAhead |

	carAhead _ self
		carAheadOf: aCar
		ifNone: [ ^self error: self class noCarToOvertakeErrorDescription ].

	self validate: aCar canOvertake: carAhead! !

!TurboEnabledSector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
carAheadOf: aCar ifNone: aNoneBlock

	| aCarPosition |

	aCarPosition _ self positionOf: aCar.

	^self carsSortedByPosition
		detect: [ :anotherCar | (self positionOf: anotherCar) > aCarPosition ]
		ifNone: aNoneBlock! !

!TurboEnabledSector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
timeBetween: aCar and: aCarAhead

	^(self timeSpentBy: aCarAhead) - (self timeSpentBy: aCar)! !

!TurboEnabledSector methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
timeSpentBy: aCar

	^(self positionOf: aCar) / aCar speed! !

!TurboEnabledSector class methodsFor: 'turbo' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
maximumTimeAheadToOvertake

	^1 * second! !

!TurboEnabledSector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
carToOvertakeIsTooFarErrorDescription

	^'The car to overtake is one second or more ahead'! !

!TurboEnabledSector class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:02:50 am (UTC)'!
noCarToOvertakeErrorDescription

	^'There is no car ahead to overtake'! !

!Track methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
initializeMadeOf: someSectors

	sectors _ someSectors asOrderedCollection! !

!Track methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
length

	^sectors sum: [ :aSector | aSector length ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
lengthBefore: aSector

	^(sectors copyUpTo: aSector)
		sum: [ :eachSector | eachSector length ]
		ifEmpty: [ 0 * kilometer ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
sectorAt: aPosition

	^sectors detect: [ :aSector | aPosition <= ((self lengthBefore: aSector) + aSector length) ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
sectorOf: aCar

	^self sectorOf: aCar ifNone: [ self error: self class carIsNotInTheTrackErrorDescription ]! !

!Track methodsFor: 'sectors' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
sectorOf: aCar ifNone: aNoneBlock

	^sectors detect: [ :aSector | aSector includes: aCar ] ifNone: aNoneBlock! !

!Track methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
cars

	^sectors inject: Set new into: [ :allCars :aSector | allCars addAll: aSector cars; yourself ]! !

!Track methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
includes: aCar

	^sectors anySatisfy: [ :aSector | aSector includes: aCar ]! !

!Track methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
positionOf: aCar

	| aSector |

	aSector _ self sectorOf: aCar.

	^(self lengthBefore: aSector) + (aSector positionOf: aCar)! !

!Track methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
put: aCar at: aPosition

	| aSector |

	self assertIsInside: aPosition.

	aSector _ self sectorAt: aPosition.
	self remove: aCar.
	aSector put: aCar at: aPosition - (self lengthBefore: aSector)! !

!Track methodsFor: 'cars' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
remove: aCar

	(self sectorOf: aCar ifNone: [ ^self ]) remove: aCar! !

!Track methodsFor: 'preconditions' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
assertIsInside: aPosition

	aPosition > self length ifTrue: [ self error: self class invalidPositionErrorDescription ]! !

!Track class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
madeOf: someSectors

	self assertIsNotEmpty: someSectors.

	^self new initializeMadeOf: someSectors! !

!Track class methodsFor: 'preconditions' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
assertIsNotEmpty: someSectors

	someSectors ifEmpty: [ self error: self noSectorsErrorDescription ]! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
carIsNotInTheTrackErrorDescription

	^'The car is not in the track'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
invalidPositionErrorDescription

	^'Position must be within the track length'! !

!Track class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:03:39 am (UTC)'!
noSectorsErrorDescription

	^'A track must be made of at least one sector'! !

!Turbo methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:01:56 am (UTC)'!
initializeBoosting: aTurboBoost

	boost _ aTurboBoost! !

!Turbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:01:56 am (UTC)'!
isActivated

	^self subclassResponsibility! !

!Turbo methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:01:56 am (UTC)'!
speedFrom: aMaximumSpeed

	^self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
activatedFor: aCar

	^self subclassResponsibility! !

!Turbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
deactivated

	^self subclassResponsibility! !

!Turbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:01:56 am (UTC)'!
boosting: aTurboBoost

	^self new initializeBoosting: aTurboBoost! !

!ActivatedTurbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
isActivated

	^true! !

!ActivatedTurbo methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
speedFrom: aMaximumSpeed

	^boost applyTo: aMaximumSpeed! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
activatedFor: aCar

	^self error: self class turboIsAlreadyActivatedErrorDescription! !

!ActivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
deactivated

	^DeactivatedTurbo boosting: boost next! !

!ActivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
turboIsAlreadyActivatedErrorDescription

	^'Turbo is already activated'! !

!DeactivatedTurbo methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
isActivated

	^false! !

!DeactivatedTurbo methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
speedFrom: aMaximumSpeed

	^aMaximumSpeed! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
activatedFor: aCar

	aCar validateTurboUse.

	^ActivatedTurbo boosting: boost! !

!DeactivatedTurbo methodsFor: 'activation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
deactivated

	^self error: self class turboIsNotActivatedErrorDescription! !

!DeactivatedTurbo class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
unused

	^self boosting: TurboBoost initial! !

!DeactivatedTurbo class methodsFor: 'error descriptions' stamp: 'HAW 16/Sep/2026, 12:01:57 am (UTC)'!
turboIsNotActivatedErrorDescription

	^'Turbo is not activated'! !

!TurboBoost methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
applyTo: aMaximumSpeed

	^self subclassResponsibility! !

!TurboBoost methodsFor: 'sequence' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
next

	^self subclassResponsibility! !

!TurboBoost class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
initial

	^IncreasingTurboBoost
		increasing: 20 / 100
		followedBy: (IncreasingTurboBoost
			increasing: 10 / 100
			followedBy: (IncreasingTurboBoost
				increasing: 5 / 100
				followedBy: ExhaustedTurboBoost new))! !

!ExhaustedTurboBoost methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
applyTo: aMaximumSpeed

	^aMaximumSpeed! !

!ExhaustedTurboBoost methodsFor: 'sequence' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
next

	^self! !

!IncreasingTurboBoost methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
initializeIncreasing: aSpeedIncrease followedBy: aTurboBoost

	speedIncrease _ aSpeedIncrease.
	nextBoost _ aTurboBoost! !

!IncreasingTurboBoost methodsFor: 'speed' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
applyTo: aMaximumSpeed

	^aMaximumSpeed * (1 + speedIncrease)! !

!IncreasingTurboBoost methodsFor: 'sequence' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
next

	^nextBoost! !

!IncreasingTurboBoost class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 12:02:07 am (UTC)'!
increasing: aSpeedIncrease followedBy: aTurboBoost

	^self new initializeIncreasing: aSpeedIncrease followedBy: aTurboBoost! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
carAt: aPosition withAnotherCarAt: anotherPosition

	| aTurboEnabledSector aCar |

	aTurboEnabledSector _ TurboEnabledSector ofLength: 24 * kilometer.
	aCar _ self carDrivenBy: 'Senna'.

	aTurboEnabledSector put: aCar at: aPosition.
	aTurboEnabledSector put: (self carDrivenBy: 'Prost') at: anotherPosition.

	^aCar! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
carDrivenBy: aDriver

	^Car drivenBy: aDriver maximumSpeed: 100 * kilometer / hour! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
carReadyToOvertake

	^self carAt: 12.99 * kilometer withAnotherCarAt: 13 * kilometer! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
carTooFarBehindTheCarAhead

	^self carAt: 12.9 * kilometer withAnotherCarAt: 13 * kilometer! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
carWithNoCarAhead

	^self carAt: 13 * kilometer withAnotherCarAt: 12 * kilometer! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
sectorsOfTenAndTwentyKilometers

	^OrderedCollection
		with: (TurboEnabledSector ofLength: 10 * kilometer)
		with: (TurboDisabledSector ofLength: 20 * kilometer)! !

!F1SimulatorTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 12:05:34 am (UTC)'!
trackOfTenKilometers

	^Track madeOf: (OrderedCollection with: (TurboEnabledSector ofLength: 10 * kilometer))! !

!F1SimulatorTest methodsFor: 'tests - sector' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test01CanNotCreateASectorWithNotStrictlyPositiveLength

	self
		should: [ TurboEnabledSector ofLength: 0 * kilometer ]
		raise: Error
		withMessageText: Sector invalidLengthErrorDescription! !

!F1SimulatorTest methodsFor: 'tests - sector' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test02CanNotPutACarBeyondTheSectorLength

	| aSector aCar |

	aSector _ TurboEnabledSector ofLength: 10 * kilometer.
	aCar _ self carDrivenBy: 'Senna'.

	self
		should: [ aSector put: aCar at: aSector length + (1 * millimeter) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Sector invalidPositionErrorDescription.
			self deny: (aSector includes: aCar) ]! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test03CanNotActivateTurboInASectorWhereTurboIsNotAllowed

	| aSector aCar |

	aSector _ TurboDisabledSector ofLength: 10 * kilometer.
	aCar _ self carDrivenBy: 'Senna'.
	aSector put: aCar at: 0 * kilometer.

	self
		should: [ aCar activateTurbo ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: TurboDisabledSector turboCanNotBeUsedErrorDescription.
			self deny: aCar isTurboActivated ]! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test04CanNotActivateTurboWhenThereIsNoCarAheadToOvertake

	| aCar |

	aCar _ self carWithNoCarAhead.

	self
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: TurboEnabledSector noCarToOvertakeErrorDescription.
			self deny: aCar isTurboActivated ]! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test05TurboIsActivatedWhenTheCarToOvertakeIsLessThanASecondAhead

	| aCar |

	aCar _ self carReadyToOvertake.

	aCar activateTurbo.

	self assert: aCar isTurboActivated! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:05:47 am (UTC)'!
test06CanNotActivateTurboWhenTheCarToOvertakeIsASecondOrMoreAhead

	| aCar |

	aCar _ self carTooFarBehindTheCarAhead.

	self
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: TurboEnabledSector carToOvertakeIsTooFarErrorDescription.
			self deny: aCar isTurboActivated ]! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test24CanNotActivateTheTurboWhenItIsAlreadyActivated

	| aCar |

	aCar _ self carReadyToOvertake.
	aCar activateTurbo.

	self
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: ActivatedTurbo turboIsAlreadyActivatedErrorDescription! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test25CanNotDeactivateTheTurboWhenItIsNotActivated

	| aCar |

	aCar _ self carDrivenBy: 'Senna'.

	self
		should: [ aCar deactivateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: DeactivatedTurbo turboIsNotActivatedErrorDescription! !

!F1SimulatorTest methodsFor: 'tests - turbo activation' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test26CanNotActivateTheTurboOfACarThatIsNotInATrack

	| aCar |

	aCar _ self carDrivenBy: 'Senna'.

	self
		should: [ aCar activateTurbo ]
		raise: Error - MessageNotUnderstood
		withMessageText: NoSector carIsNotInATrackErrorDescription! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test07CanNotCreateATrackWithoutSectors

	self
		should: [ Track madeOf: #() ]
		raise: Error
		withMessageText: Track noSectorsErrorDescription! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test08TrackLengthIsTheSumOfTheLengthOfItsSectors

	| aTrack |

	aTrack _ Track madeOf: self sectorsOfTenAndTwentyKilometers.

	self assert: aTrack length equals: 30 * kilometer! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test09CanNotPutACarBeyondTheTrackLength

	| aTrack aCar |

	aTrack _ Track madeOf: self sectorsOfTenAndTwentyKilometers.
	aCar _ self carDrivenBy: 'Senna'.

	self
		should: [ aTrack put: aCar at: aTrack length + (1 * millimeter) ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: Track invalidPositionErrorDescription.
			self deny: (aTrack includes: aCar) ]! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test10PuttingACarInTheTrackPutsItInTheSectorContainingThatPosition

	| someSectors aTrack aCar aPosition |

	someSectors _ self sectorsOfTenAndTwentyKilometers.
	aTrack _ Track madeOf: someSectors.
	aCar _ self carDrivenBy: 'Senna'.
	aPosition _ someSectors first length + (5 * kilometer).

	aTrack put: aCar at: aPosition.

	self assert: (aTrack sectorOf: aCar) equals: someSectors second.
	self assert: (aTrack positionOf: aCar) equals: aPosition.
	self deny: (someSectors first includes: aCar)! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test11EachCarIsPutInTheSectorThatContainsItsPosition

	| someSectors aTrack aCar anotherCar |

	someSectors _ self sectorsOfTenAndTwentyKilometers.
	aTrack _ Track madeOf: someSectors.
	aCar _ self carDrivenBy: 'Senna'.
	anotherCar _ self carDrivenBy: 'Prost'.

	aTrack put: aCar at: 10 * kilometer.
	aTrack put: anotherCar at: 30 * kilometer.

	self assert: (aTrack sectorOf: aCar) equals: someSectors first.
	self assert: (aTrack sectorOf: anotherCar) equals: someSectors second! !

!F1SimulatorTest methodsFor: 'tests - track' stamp: 'HAW 16/Sep/2026, 12:06:00 am (UTC)'!
test12PuttingACarAgainInTheTrackMovesItToItsNewSector

	| someSectors aTrack aCar |

	someSectors _ self sectorsOfTenAndTwentyKilometers.
	aTrack _ Track madeOf: someSectors.
	aCar _ self carDrivenBy: 'Senna'.

	aTrack put: aCar at: 5 * kilometer.
	aTrack put: aCar at: 15 * kilometer.

	self assert: (aTrack sectorOf: aCar) equals: someSectors second.
	self deny: (someSectors first includes: aCar)! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test13CompetitionDistanceIsTheTrackLengthTimesTheNumberOfLaps

	| aCompetition |

	aCompetition _ Competition
		runningOn: (Track madeOf: self sectorsOfTenAndTwentyKilometers)
		laps: 100.

	self assert: aCompetition distance equals: 3000 * kilometer! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test14PlacingACarInTheCompetitionSetsTheDistanceItTraveled

	| aCompetition aCar anotherCar |

	aCompetition _ Competition runningOn: self trackOfTenKilometers laps: 100.
	aCar _ self carDrivenBy: 'Senna'.
	anotherCar _ self carDrivenBy: 'Prost'.

	aCompetition place: aCar at: 5 * kilometer.
	aCompetition place: anotherCar at: 5 * kilometer.

	self assert: (aCompetition distanceTraveledBy: aCar) equals: 5 * kilometer.
	self assert: (aCompetition distanceTraveledBy: anotherCar) equals: 5 * kilometer! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test15ACarWithoutSpeedDoesNotAdvance

	| aCompetition aCar |

	aCar _ Car drivenBy: 'Senna' maximumSpeed: 0 * kilometer / hour.
	aCompetition _ Competition
		runningOn: self trackOfTenKilometers
		laps: 100
		cars: (Array with: aCar).

	aCompetition place: aCar at: 5 * kilometer.
	aCompetition advance: 10 * minute.

	self assert: (aCompetition distanceTraveledBy: aCar) equals: 5 * kilometer! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test16ACarAdvancesTheDistanceItsSpeedAllowsInTheElapsedTime

	| aCompetition aCar |

	aCar _ Car drivenBy: 'Senna' maximumSpeed: 300 * kilometer / hour.
	aCompetition _ Competition
		runningOn: (Track madeOf: self sectorsOfTenAndTwentyKilometers)
		laps: 100
		cars: (Array with: aCar).

	aCompetition place: aCar at: 0 * kilometer.
	aCompetition advance: 1 * hour.

	self assert: (aCompetition distanceTraveledBy: aCar) equals: 300 * kilometer! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test17ACarPlacedInTheCompetitionIsInTheSectorContainingItsPosition

	| someSectors aCompetition aCar |

	someSectors _ self sectorsOfTenAndTwentyKilometers.
	aCar _ self carDrivenBy: 'Senna'.
	aCompetition _ Competition
		runningOn: (Track madeOf: someSectors)
		laps: 100
		cars: (Array with: aCar).

	aCompetition place: aCar at: 5 * kilometer.

	self assert: (aCompetition sectorOf: aCar) equals: someSectors first! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test18ACarStaysInItsSectorWhenItDoesNotAdvancePastIt

	| someSectors aCompetition aCar |

	someSectors _ self sectorsOfTenAndTwentyKilometers.
	aCar _ Car drivenBy: 'Senna' maximumSpeed: 5 * kilometer / hour.
	aCompetition _ Competition
		runningOn: (Track madeOf: someSectors)
		laps: 100
		cars: (Array with: aCar).

	aCompetition place: aCar at: 0 * kilometer.
	aCompetition advance: 1 * hour.

	self assert: (aCompetition sectorOf: aCar) equals: someSectors first! !

!F1SimulatorTest methodsFor: 'tests - competition' stamp: 'HAW 16/Sep/2026, 12:06:17 am (UTC)'!
test19ACarMovesToTheNextSectorWhenItAdvancesPastTheCurrentOne

	| someSectors aCompetition aCar |

	someSectors _ OrderedCollection
		with: (TurboEnabledSector ofLength: 10 * kilometer)
		with: (TurboEnabledSector ofLength: 30 * kilometer).
	aCar _ Car drivenBy: 'Senna' maximumSpeed: 15 * kilometer / hour.
	aCompetition _ Competition
		runningOn: (Track madeOf: someSectors)
		laps: 100
		cars: (Array with: aCar).

	aCompetition place: aCar at: 5 * kilometer.
	aCompetition advance: 1 * hour.

	self assert: (aCompetition sectorOf: aCar) equals: someSectors second! !

!F1SimulatorTest methodsFor: 'tests - turbo boost' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test20TurboIncreasesTheMaximumSpeedByTwentyPercentTheFirstTimeItIsUsed

	| aCar |

	aCar _ self carReadyToOvertake.

	aCar activateTurbo.

	self assert: aCar speed equals: 120 * kilometer / hour! !

!F1SimulatorTest methodsFor: 'tests - turbo boost' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test21TurboIncreasesTheMaximumSpeedByTenPercentTheSecondTimeItIsUsed

	| aCar |

	aCar _ self carReadyToOvertake.

	aCar activateTurbo; deactivateTurbo; activateTurbo.

	self assert: aCar speed equals: 110 * kilometer / hour! !

!F1SimulatorTest methodsFor: 'tests - turbo boost' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test22TurboIncreasesTheMaximumSpeedByFivePercentTheThirdTimeItIsUsed

	| aCar |

	aCar _ self carReadyToOvertake.

	aCar activateTurbo; deactivateTurbo; activateTurbo; deactivateTurbo; activateTurbo.

	self assert: aCar speed equals: 105 * kilometer / hour! !

!F1SimulatorTest methodsFor: 'tests - turbo boost' stamp: 'HAW 16/Sep/2026, 12:06:30 am (UTC)'!
test23ExhaustedTurboDoesNotIncreaseTheMaximumSpeed

	| aCar |

	aCar _ self carReadyToOvertake.

	aCar
		activateTurbo; deactivateTurbo;
		activateTurbo; deactivateTurbo;
		activateTurbo; deactivateTurbo;
		activateTurbo.

	self assert: aCar isTurboActivated.
	self assert: aCar speed equals: 100 * kilometer / hour! !
