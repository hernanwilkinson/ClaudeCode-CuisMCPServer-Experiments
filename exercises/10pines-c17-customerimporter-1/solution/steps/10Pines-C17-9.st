!classDefinition: #ImportTest category: '10Pines-C17'!
TestCase subclass: #ImportTest
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!ImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 17:56:05'!
importCustomers

	"
	self importCustomers
	"
	| inputStream  newCustomer line |
	
	inputStream := StandardFileStream new open: 'input.txt' forWrite: false.
	
	line := inputStream nextLine.
	[ line notNil ] whileTrue: [ 
		(line beginsWith: 'C') ifTrue: [ | customerData |
			customerData := line findTokens: $,.
			newCustomer := Customer new.
			newCustomer firstName: customerData second.
			newCustomer lastName: customerData third.
			newCustomer identificationType: customerData fourth.
			newCustomer identificationNumber: customerData fifth.
			session persist: newCustomer ].
		
		(line beginsWith: 'A') ifTrue: [ | addressData newAddress |
			addressData := line findTokens: $,.
			newAddress := Address new.
			newCustomer addAddress: newAddress.
			newAddress streetName: addressData second.
			newAddress streetNumber: addressData third asNumber . 
			newAddress town: addressData fourth.
			newAddress zipCode: addressData fifth asNumber .
			newAddress province: addressData sixth ].
			
		line := inputStream nextLine. ].
			
	inputStream close.
	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 00:27:50'!
setUp

	session := DataBaseSession for: (Array with: Address with: Customer).
	session beginTransaction.
! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 00:28:23'!
tearDown

	session commit.
	session close.
	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 17:58:13'!
test01Import

	| importedCustomer importedAddress |
	
	self importCustomers.
	
	self assert: 2 equals: (session selectAllOfType: Customer) size.
	
	importedCustomer := (session 
		select: [ :aCustomer | aCustomer identificationType = 'D' and: [ aCustomer identificationNumber = '22333444' ]]
		ofType: Customer) anyOne.
		
	self assert: 'Pepe' equals: importedCustomer firstName.
	self assert: 'Sanchez' equals: importedCustomer lastName.
	self assert: 'D' equals: importedCustomer identificationType.
	self assert: '22333444' equals: importedCustomer identificationNumber.

	importedAddress := importedCustomer addressAt: 'San Martin' ifNone: [ self fail ].
	self assert: 'San Martin' equals: importedAddress streetName.
	self assert: 3322 equals: importedAddress streetNumber.
	self assert: 'Olivos' equals: importedAddress town.
	self assert: 1636 equals: importedAddress zipCode.
	self assert: 'BsAs' equals: importedAddress province.
	
	importedAddress := importedCustomer addressAt: 'Maipu' ifNone: [ self fail ].
	self assert: 'Maipu' equals: importedAddress streetName.
	self assert: 888 equals: importedAddress streetNumber.
	self assert: 'Florida' equals: importedAddress town.
	self assert: 1122 equals: importedAddress zipCode.
	self assert: 'Buenos Aires' equals: importedAddress province.
	
	importedCustomer := (session 
		select: [ :aCustomer | aCustomer identificationType = 'C' and: [ aCustomer identificationNumber = '23-25666777-9' ]]
		ofType: Customer) anyOne.
		
	self assert: 'Juan' equals: importedCustomer firstName.
	self assert: 'Perez' equals: importedCustomer lastName.
	self assert: 'C' equals: importedCustomer identificationType.
	self assert: '23-25666777-9' equals: importedCustomer identificationNumber.

	importedAddress := importedCustomer addressAt: 'Alem' ifNone: [ self fail ].
	self assert: 'Alem' equals: importedAddress streetName.
	self assert: 1122 equals: importedAddress streetNumber.
	self assert: 'CABA' equals: importedAddress town.
	self assert: 1001 equals: importedAddress zipCode.
	self assert: 'CABA' equals: importedAddress province.

	! !


!classDefinition: #Address category: '10Pines-C17'!
Object subclass: #Address
	instanceVariableNames: 'id streetName streetNumber town zipCode province'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Address methodsFor: 'province' stamp: 'HAW 5/22/2022 00:19:29'!
province

	^province! !

!Address methodsFor: 'province' stamp: 'HAW 5/22/2022 00:19:29'!
province: aProvince
 
	province := aProvince
	! !


!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 17:55:46'!
isAt: aStreetName

	^streetName = aStreetName ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetName

	^streetName ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetName: aStreetName
 
	streetName := aStreetName ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetNumber

	^streetNumber ! !

!Address methodsFor: 'street' stamp: 'HAW 5/22/2022 00:19:29'!
streetNumber: aStreetNumber
 
	streetNumber := aStreetNumber ! !


!Address methodsFor: 'twon' stamp: 'HAW 5/22/2022 00:19:29'!
town

	^town! !

!Address methodsFor: 'twon' stamp: 'HAW 5/22/2022 00:19:29'!
town: aTown
 
	town := aTown! !


!Address methodsFor: 'zip code' stamp: 'HAW 5/22/2022 00:19:29'!
zipCode

	^zipCode! !

!Address methodsFor: 'zip code' stamp: 'HAW 5/22/2022 00:19:29'!
zipCode: aZipCode
 
	zipCode := aZipCode! !


!classDefinition: #Customer category: '10Pines-C17'!
Object subclass: #Customer
	instanceVariableNames: 'id firstName lastName identificationType identificationNumber addresses'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Customer methodsFor: 'addresses' stamp: 'HAW 5/22/2022 00:19:29'!
addAddress: anAddress 

	addresses add: anAddress ! !

!Customer methodsFor: 'addresses' stamp: 'HAW 5/22/2022 17:55:17'!
addressAt: aStreetName ifNone: aNoneBlock

	^addresses detect: [ :address | address isAt: aStreetName ] ifNone: aNoneBlock ! !

!Customer methodsFor: 'addresses' stamp: 'HAW 5/22/2022 00:19:29'!
addresses

	^ addresses! !


!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
firstName
	
	^firstName ! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
firstName: aName
 
	firstName := aName! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
lastName

	^lastName ! !

!Customer methodsFor: 'name' stamp: 'HAW 5/22/2022 00:19:29'!
lastName: aLastName
 
	lastName := aLastName
! !


!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationNumber
	
	^identificationNumber ! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationNumber: anIdentificationNumber
 
	identificationNumber := anIdentificationNumber! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationType
	
	^identificationType ! !

!Customer methodsFor: 'identification' stamp: 'HAW 5/22/2022 00:19:29'!
identificationType: anIdentificationType 

	identificationType := anIdentificationType! !


!Customer methodsFor: 'initialization' stamp: 'HAW 5/22/2022 00:19:29'!
initialize

	super initialize.
	addresses := OrderedCollection new.! !


!classDefinition: #DataBaseSession category: '10Pines-C17'!
Object subclass: #DataBaseSession
	instanceVariableNames: 'configuration tables id'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 00:19:29'!
beginTransaction

	! !

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 00:19:29'!
commit
	
	(tables at: Customer) do: [ :aCustomer | self persistAddressesOf: aCustomer ]
	! !


!DataBaseSession methodsFor: 'closing' stamp: 'HAW 5/22/2022 00:19:29'!
close
	
	! !


!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 00:19:29'!
defineIdOf: anObject

	anObject instVarNamed: 'id' put: (self newIdFor: anObject).! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 00:19:29'!
delay

	(Delay forMilliseconds: 100) wait! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 00:19:29'!
persistAddressesOf: anObjectWithAddresses

	anObjectWithAddresses addresses do: [ :anAddress | self persist: anAddress ]
	! !


!DataBaseSession methodsFor: 'initialization' stamp: 'HAW 5/22/2022 00:19:29'!
initializeFor: aConfiguration

	configuration := aConfiguration.
	tables := Dictionary new.
	id := 0.! !


!DataBaseSession methodsFor: 'id' stamp: 'HAW 5/22/2022 00:19:29'!
newIdFor: anObject

	id := id + 1.
	^id! !


!DataBaseSession methodsFor: 'persistance' stamp: 'HAW 5/22/2022 00:19:29'!
persist: anObject

	| table |
	
	self delay.
	table := tables at: anObject class ifAbsentPut: [ Set new ].
	
	self defineIdOf: anObject.
	table add: anObject.
	
	(anObject isKindOf: Customer) ifTrue: [ self persistAddressesOf: anObject ].! !


!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 00:19:29'!
select: aCondition ofType: aType

	self delay.
	^(tables at: aType) select: aCondition ! !

!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 00:25:41'!
selectAllOfType: aType

	self delay.
	^(tables at: aType) copy ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DataBaseSession class' category: '10Pines-C17'!
DataBaseSession class
	instanceVariableNames: ''!

!DataBaseSession class methodsFor: 'instance creation' stamp: 'HAW 5/22/2022 00:19:29'!
for: aConfiguration

	^self new initializeFor: aConfiguration! !
