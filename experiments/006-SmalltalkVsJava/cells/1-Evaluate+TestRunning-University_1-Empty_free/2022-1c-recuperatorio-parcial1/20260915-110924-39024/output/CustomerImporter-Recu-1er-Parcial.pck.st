'From Cuis7.9 [latest update: #8182] on 15 September 2026 at 11:17:28 am'!
'Description '!
!provides: 'CustomerImporter-Recu-1er-Parcial' 1 0!
SystemOrganization addCategory: #'CustomerImporter-Recu-1er-Parcial'!
SystemOrganization addCategory: #'CustomerImporter-Recu-1er-Parcial-Tests'!


!classDefinition: #Address category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #Address
	instanceVariableNames: 'id streetName streetNumber town zipCode province'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'Address class' category: #'CustomerImporter-Recu-1er-Parcial'!
Address class
	instanceVariableNames: ''!

!classDefinition: #Customer category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #Customer
	instanceVariableNames: 'id firstName lastName identification addresses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'Customer class' category: #'CustomerImporter-Recu-1er-Parcial'!
Customer class
	instanceVariableNames: ''!

!classDefinition: #CustomerImporter category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #CustomerImporter
	instanceVariableNames: 'readStream newCustomer line record system'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'CustomerImporter class' category: #'CustomerImporter-Recu-1er-Parcial'!
CustomerImporter class
	instanceVariableNames: ''!

!classDefinition: #CustomerSystem category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #CustomerSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'CustomerSystem class' category: #'CustomerImporter-Recu-1er-Parcial'!
CustomerSystem class
	instanceVariableNames: ''!

!classDefinition: #PersistentCustomerSystem category: #'CustomerImporter-Recu-1er-Parcial'!
CustomerSystem subclass: #PersistentCustomerSystem
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'PersistentCustomerSystem class' category: #'CustomerImporter-Recu-1er-Parcial'!
PersistentCustomerSystem class
	instanceVariableNames: ''!

!classDefinition: #TransientCustomerSystem category: #'CustomerImporter-Recu-1er-Parcial'!
CustomerSystem subclass: #TransientCustomerSystem
	instanceVariableNames: 'customers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'TransientCustomerSystem class' category: #'CustomerImporter-Recu-1er-Parcial'!
TransientCustomerSystem class
	instanceVariableNames: ''!

!classDefinition: #DataBaseSession category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #DataBaseSession
	instanceVariableNames: 'configuration tables id'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'DataBaseSession class' category: #'CustomerImporter-Recu-1er-Parcial'!
DataBaseSession class
	instanceVariableNames: ''!

!classDefinition: #Environment category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #Environment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'Environment class' category: #'CustomerImporter-Recu-1er-Parcial'!
Environment class
	instanceVariableNames: ''!

!classDefinition: #DevelopmentEnvironment category: #'CustomerImporter-Recu-1er-Parcial'!
Environment subclass: #DevelopmentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'DevelopmentEnvironment class' category: #'CustomerImporter-Recu-1er-Parcial'!
DevelopmentEnvironment class
	instanceVariableNames: ''!

!classDefinition: #IntegrationEnvironment category: #'CustomerImporter-Recu-1er-Parcial'!
Environment subclass: #IntegrationEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'IntegrationEnvironment class' category: #'CustomerImporter-Recu-1er-Parcial'!
IntegrationEnvironment class
	instanceVariableNames: ''!

!classDefinition: #ImportedValue category: #'CustomerImporter-Recu-1er-Parcial'!
Object subclass: #ImportedValue
	instanceVariableNames: 'importedString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'ImportedValue class' category: #'CustomerImporter-Recu-1er-Parcial'!
ImportedValue class
	instanceVariableNames: ''!

!classDefinition: #Identification category: #'CustomerImporter-Recu-1er-Parcial'!
ImportedValue subclass: #Identification
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'Identification class' category: #'CustomerImporter-Recu-1er-Parcial'!
Identification class
	instanceVariableNames: ''!

!classDefinition: #CUIT category: #'CustomerImporter-Recu-1er-Parcial'!
Identification subclass: #CUIT
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'CUIT class' category: #'CustomerImporter-Recu-1er-Parcial'!
CUIT class
	instanceVariableNames: ''!

!classDefinition: #DNI category: #'CustomerImporter-Recu-1er-Parcial'!
Identification subclass: #DNI
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'DNI class' category: #'CustomerImporter-Recu-1er-Parcial'!
DNI class
	instanceVariableNames: ''!

!classDefinition: #ZipCode category: #'CustomerImporter-Recu-1er-Parcial'!
ImportedValue subclass: #ZipCode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'ZipCode class' category: #'CustomerImporter-Recu-1er-Parcial'!
ZipCode class
	instanceVariableNames: ''!

!classDefinition: #NewZipCode category: #'CustomerImporter-Recu-1er-Parcial'!
ZipCode subclass: #NewZipCode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'NewZipCode class' category: #'CustomerImporter-Recu-1er-Parcial'!
NewZipCode class
	instanceVariableNames: ''!

!classDefinition: #OldZipCode category: #'CustomerImporter-Recu-1er-Parcial'!
ZipCode subclass: #OldZipCode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial'!
!classDefinition: 'OldZipCode class' category: #'CustomerImporter-Recu-1er-Parcial'!
OldZipCode class
	instanceVariableNames: ''!

!classDefinition: #ImportTest category: #'CustomerImporter-Recu-1er-Parcial-Tests'!
TestCase subclass: #ImportTest
	instanceVariableNames: 'system'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CustomerImporter-Recu-1er-Parcial-Tests'!
!classDefinition: 'ImportTest class' category: #'CustomerImporter-Recu-1er-Parcial-Tests'!
ImportTest class
	instanceVariableNames: ''!


!ImportedValue commentStamp: '<historical>' prior: 0!
I represent a value read from an import file whose concrete type is decided by looking at the imported data.
My subclasses know how to tell whether they can handle a given type (#canHandle:), whether an imported string is a valid value of that type (#isValid:) and how to describe the error when it is not (#invalidValueErrorDescription).
Because I validate on creation, an instance of mine is always a valid value.!

!Identification commentStamp: '<historical>' prior: 0!
I represent the identification of a customer. My subclasses are the different identification types, each one knowing its code in the import file (#code), its validation rules and the number it answers.!

!CUIT commentStamp: '<historical>' prior: 0!
I represent a CUIT, an identification whose number is written as a prefix, a separator, the number, a separator and the verification digit, for example 23-25666777-9. My value is the number as it was imported.!

!DNI commentStamp: '<historical>' prior: 0!
I represent a DNI, an identification whose number is a natural number of at most eight digits. My value is that number as an Integer.!

!ZipCode commentStamp: '<historical>' prior: 0!
I represent the zip code of an address. My subclasses are the different zip code types, each one knowing how to recognize itself in the imported data, its validation rules and the value it answers.!

!NewZipCode commentStamp: '<historical>' prior: 0!
I represent a new zip code, for example B1636BBE: a province letter, an old zip code and three letters identifying the block. My value is the zip code as it was imported.!

!OldZipCode commentStamp: '<historical>' prior: 0!
I represent an old zip code, four digits between 1000 and 9999, for example 1636. My value is that number as an Integer.!

!Address methodsFor: 'province' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
province

	^province! !

!Address methodsFor: 'street' stamp: 'HAW 22/May/2022, 8:55:46 pm (UTC)'!
isAt: aStreetName

	^streetName = aStreetName ! !

!Address methodsFor: 'street' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
streetName

	^streetName ! !

!Address methodsFor: 'street' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
streetNumber

	^streetNumber ! !

!Address methodsFor: 'twon' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
town

	^town! !

!Address methodsFor: 'zip code' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
hasNewZipCode

	^zipCode isNew! !

!Address methodsFor: 'zip code' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
hasOldZipCode

	^zipCode isOld! !

!Address methodsFor: 'zip code' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
newZipCodeIfNone: aNoneBlock

	^zipCode newValueIfNone: aNoneBlock! !

!Address methodsFor: 'zip code' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
oldZipCodeIfNone: aNoneBlock

	^zipCode oldValueIfNone: aNoneBlock! !

!Address methodsFor: 'zip code' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
zipCode

	^zipCode value! !

!Address methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
initializeAt: aStreetName number: aStreetNumber town: aTown zipCode: aZipCode province: aProvince

	streetName := aStreetName.
	streetNumber := aStreetNumber.
	town := aTown.
	zipCode := aZipCode.
	province := aProvince! !

!Address class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:15:58 pm (UTC)'!
at: aStreetName number: aStreetNumber town: aTown zipCode: aZipCode province: aProvince

	^self new initializeAt: aStreetName number: aStreetNumber town: aTown zipCode: aZipCode province: aProvince! !

!Customer methodsFor: 'addresses' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
addAddress: anAddress

	addresses add: anAddress ! !

!Customer methodsFor: 'addresses' stamp: 'HAW 22/May/2022, 8:55:17 pm (UTC)'!
addressAt: aStreetName ifNone: aNoneBlock

	^addresses detect: [ :address | address isAt: aStreetName ] ifNone: aNoneBlock ! !

!Customer methodsFor: 'addresses' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
addresses

	^ addresses! !

!Customer methodsFor: 'addresses' stamp: 'HAW 22/May/2022, 10:38:32 pm (UTC)'!
isAddressesEmpty

	^addresses isEmpty ! !

!Customer methodsFor: 'name' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
firstName

	^firstName ! !

!Customer methodsFor: 'name' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
lastName

	^lastName ! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
cuitNumberIfNone: aNoneBlock

	^identification cuitNumberIfNone: aNoneBlock! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
dniNumberIfNone: aNoneBlock

	^identification dniNumberIfNone: aNoneBlock! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
hasCUITAsIdentification

	^identification isCUIT! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
hasDNIAsIdentification

	^identification isDNI! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
hasIdentificationOfType: anIdentificationTypeCode number: anIdentificationNumber

	^identification isOfType: anIdentificationTypeCode number: anIdentificationNumber! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
identificationNumber

	^identification number! !

!Customer methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
identificationType

	^identification type! !

!Customer methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
initializeNamed: aFirstName lastNamed: aLastName identifiedBy: anIdentification

	firstName := aFirstName.
	lastName := aLastName.
	identification := anIdentification.
	addresses := OrderedCollection new! !

!Customer class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:15:51 pm (UTC)'!
named: aFirstName lastNamed: aLastName identifiedBy: anIdentification

	^self new initializeNamed: aFirstName lastNamed: aLastName identifiedBy: anIdentification! !

!CustomerImporter methodsFor: 'initialization' stamp: 'HAW 23/May/2022, 12:15:17 am (UTC)'!
initializeFrom: aReadStream into: aCustomerSystem

	readStream := aReadStream.
	system := aCustomerSystem ! !

!CustomerImporter methodsFor: 'evaluating' stamp: 'HAW 22/May/2022, 9:48:58 pm (UTC)'!
value

	[ self hasLineToImport ] whileTrue: [
		self createRecord.
		self importRecord ].

	! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 22/May/2022, 10:59:39 pm (UTC)'!
assertValidCustomerRecord

	^ record size ~= 5 ifTrue: [ self error: self class invalidCustomerRecordErrorDescription ]! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 15/Sep/2026, 2:16:04 pm (UTC)'!
importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer
		named: record second
		lastNamed: record third
		identifiedBy: (Identification ofType: record fourth number: record fifth).

	system add: newCustomer! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 22/May/2022, 10:23:55 pm (UTC)'!
isCustomerRecord

	^ record first = 'C'! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 22/May/2022, 10:58:41 pm (UTC)'!
assertCustomerWasImported

	^ newCustomer ifNil: [ self error: self class canNotImportAddressWithoutCustomerErrorDescription ]! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 22/May/2022, 10:59:12 pm (UTC)'!
assertValidAddressRecord

	^ record size ~= 6 ifTrue: [ self error: self class invalidAddressRecordErrorDescription ]! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 15/Sep/2026, 2:16:04 pm (UTC)'!
importAddress

	self assertCustomerWasImported.
	self assertValidAddressRecord.

	newCustomer addAddress: (Address
		at: record second
		number: record third asNumber
		town: record fourth
		zipCode: (ZipCode for: record fifth)
		province: record sixth)! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 22/May/2022, 10:37:45 pm (UTC)'!
isAddressRecord

	^ record first = 'A'! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 22/May/2022, 11:04:35 pm (UTC)'!
assertRecordNotEmpty

	record isEmpty ifTrue: [ self error: self class invalidRecordTypeErrorDescription ]! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 22/May/2022, 9:47:26 pm (UTC)'!
createRecord

	^ record := line findTokens: $,! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 22/May/2022, 9:49:33 pm (UTC)'!
hasLineToImport

	line := readStream nextLine.
	^line notNil! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 22/May/2022, 11:04:06 pm (UTC)'!
importRecord

	self assertRecordNotEmpty.

	self isCustomerRecord ifTrue: [ ^self importCustomer ].
	self isAddressRecord ifTrue: [ ^self importAddress ].

	self error: self class invalidRecordTypeErrorDescription! !

!CustomerImporter class methodsFor: 'instance creation' stamp: 'HAW 23/May/2022, 12:15:35 am (UTC)'!
from: aReadStream into: aCustomerSystem

	^self new initializeFrom: aReadStream into: aCustomerSystem! !

!CustomerImporter class methodsFor: 'importing' stamp: 'HAW 23/May/2022, 12:15:52 am (UTC)'!
valueFrom: aReadStream into: aCustomerSystem

	^(self from: aReadStream into: aCustomerSystem) value! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 22/May/2022, 10:13:48 pm (UTC)'!
canNotImportAddressWithoutCustomerErrorDescription

	^'Cannot import address without customer'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 22/May/2022, 10:41:39 pm (UTC)'!
invalidAddressRecordErrorDescription

	^'Address record has to have six fields'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 22/May/2022, 10:53:56 pm (UTC)'!
invalidCustomerRecordErrorDescription

	^'Invalid Customer record'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 22/May/2022, 10:24:11 pm (UTC)'!
invalidRecordTypeErrorDescription

	^'Invalid record type'! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:17:57 am (UTC)'!
add: aCustomer

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:18:38 am (UTC)'!
customerWithIdentificationType: anIdType number: anIdNumber

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:18:51 am (UTC)'!
numberOfCustomers

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'transactions' stamp: 'HAW 23/May/2022, 12:18:04 am (UTC)'!
beginTransaction

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'transactions' stamp: 'HAW 23/May/2022, 12:18:16 am (UTC)'!
commit

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 23/May/2022, 12:18:10 am (UTC)'!
start

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 23/May/2022, 12:18:13 am (UTC)'!
stop

	self subclassResponsibility ! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:14:14 am (UTC)'!
add: aCustomer

	^session persist: aCustomer ! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 15/Sep/2026, 2:16:04 pm (UTC)'!
customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer hasIdentificationOfType: anIdType number: anIdNumber ]
		ofType: Customer) anyOne! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:08:47 am (UTC)'!
numberOfCustomers

	^(session selectAllOfType: Customer) size! !

!PersistentCustomerSystem methodsFor: 'transactions' stamp: 'HAW 22/May/2022, 11:12:39 pm (UTC)'!
beginTransaction

	session beginTransaction.
! !

!PersistentCustomerSystem methodsFor: 'transactions' stamp: 'HAW 22/May/2022, 11:13:00 pm (UTC)'!
commit

	session commit ! !

!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 22/May/2022, 11:12:29 pm (UTC)'!
start

	session := DataBaseSession for: (Array with: Address with: Customer).
	! !

!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 22/May/2022, 11:13:10 pm (UTC)'!
stop

	session close! !

!TransientCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 23/May/2022, 12:21:06 am (UTC)'!
start

	customers := OrderedCollection new! !

!TransientCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 23/May/2022, 12:23:17 am (UTC)'!
stop

	customers := nil! !

!TransientCustomerSystem methodsFor: 'transactions' stamp: 'HAW 23/May/2022, 12:21:20 am (UTC)'!
beginTransaction

	! !

!TransientCustomerSystem methodsFor: 'transactions' stamp: 'HAW 23/May/2022, 12:23:01 am (UTC)'!
commit

	! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:21:32 am (UTC)'!
add: aCustomer

	customers add: aCustomer ! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 15/Sep/2026, 2:16:04 pm (UTC)'!
customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer hasIdentificationOfType: anIdType number: anIdNumber ]! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 23/May/2022, 12:21:43 am (UTC)'!
numberOfCustomers

	^customers size! !

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
beginTransaction

	! !

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 22/May/2022, 10:17:36 pm (UTC)'!
commit

	(tables at: Customer ifAbsent: [#()]) do: [ :aCustomer | self persistAddressesOf: aCustomer ]
	! !

!DataBaseSession methodsFor: 'closing' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
close

	! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
defineIdOf: anObject

	anObject instVarNamed: 'id' put: (self newIdFor: anObject).! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
delay

	(Delay forMilliseconds: 100) wait! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 22/May/2022, 10:29:06 pm (UTC)'!
objectsOfType: aType

	^ tables at: aType ifAbsent: [ #() ]! !

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
persistAddressesOf: anObjectWithAddresses

	anObjectWithAddresses addresses do: [ :anAddress | self persist: anAddress ]
	! !

!DataBaseSession methodsFor: 'initialization' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
initializeFor: aConfiguration

	configuration := aConfiguration.
	tables := Dictionary new.
	id := 0.! !

!DataBaseSession methodsFor: 'id' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
newIdFor: anObject

	id := id + 1.
	^id! !

!DataBaseSession methodsFor: 'persistance' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
persist: anObject

	| table |

	self delay.
	table := tables at: anObject class ifAbsentPut: [ Set new ].

	self defineIdOf: anObject.
	table add: anObject.

	(anObject isKindOf: Customer) ifTrue: [ self persistAddressesOf: anObject ].! !

!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 22/May/2022, 10:29:06 pm (UTC)'!
select: aCondition ofType: aType

	self delay.
	^(self objectsOfType: aType) select: aCondition ! !

!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 22/May/2022, 10:29:06 pm (UTC)'!
selectAllOfType: aType

	self delay.
	^(self objectsOfType: aType) copy ! !

!DataBaseSession class methodsFor: 'instance creation' stamp: 'HAW 22/May/2022, 3:19:29 am (UTC)'!
for: aConfiguration

	^self new initializeFor: aConfiguration! !

!Environment methodsFor: 'customer system' stamp: 'HAW 23/May/2022, 12:41:06 am (UTC)'!
createCustomerSystem

	self subclassResponsibility ! !

!Environment class methodsFor: 'current' stamp: 'HAW 23/May/2022, 12:37:10 am (UTC)'!
current

	^(self subclasses detect: [ :anEnvironmentClass | anEnvironmentClass isCurrent ]) new! !

!Environment class methodsFor: 'current' stamp: 'HAW 23/May/2022, 12:41:36 am (UTC)'!
isCurrent

	self subclassResponsibility ! !

!DevelopmentEnvironment methodsFor: 'customer system' stamp: 'HAW 23/May/2022, 12:38:39 am (UTC)'!
createCustomerSystem

	^TransientCustomerSystem new! !

!DevelopmentEnvironment class methodsFor: 'current' stamp: 'HAW 23/May/2022, 12:37:58 am (UTC)'!
isCurrent

	^true! !

!IntegrationEnvironment methodsFor: 'customer system' stamp: 'HAW 23/May/2022, 12:40:48 am (UTC)'!
createCustomerSystem

	^PersistentCustomerSystem new! !

!IntegrationEnvironment class methodsFor: 'current' stamp: 'HAW 23/May/2022, 12:40:36 am (UTC)'!
isCurrent

	^DevelopmentEnvironment isCurrent not! !

!ImportedValue methodsFor: 'initialization' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
initializeWith: anImportedString

	self class assertIsValid: anImportedString.
	importedString := anImportedString! !

!ImportedValue methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
value

	^importedString! !

!ImportedValue methodsFor: 'value - private' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
numberValue

	^self class numberFrom: importedString! !

!ImportedValue methodsFor: 'printing' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: self class name; nextPut: $(; nextPutAll: importedString; nextPut: $)! !

!ImportedValue class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
typeHandling: anImportedType

	^self subclasses
		detect: [ :anImportedValueClass | anImportedValueClass canHandle: anImportedType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]! !

!ImportedValue class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
with: anImportedString

	^self new initializeWith: anImportedString! !

!ImportedValue class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
canHandle: anImportedType

	self subclassResponsibility! !

!ImportedValue class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
assertIsValid: anImportedString

	(self isValid: anImportedString) ifFalse: [ self error: self invalidValueErrorDescription ]! !

!ImportedValue class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
isValid: anImportedString

	self subclassResponsibility! !

!ImportedValue class methodsFor: 'validation - private' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
is: anImportedString numberBetween: aMinimumNumber and: aMaximumNumber

	^(self isAllDigits: anImportedString) and: [ (self numberFrom: anImportedString) between: aMinimumNumber and: aMaximumNumber ]! !

!ImportedValue class methodsFor: 'validation - private' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
isAllDigits: anImportedString

	^anImportedString notEmpty and: [ anImportedString allSatisfy: [ :aChar | aChar isDigit ]]! !

!ImportedValue class methodsFor: 'validation - private' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
isAllLetters: anImportedString

	^anImportedString notEmpty and: [ anImportedString allSatisfy: [ :aChar | aChar isLetter ]]! !

!ImportedValue class methodsFor: 'converting' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
numberFrom: anImportedString

	^Integer readFrom: anImportedString readStream! !

!ImportedValue class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
invalidTypeErrorDescription

	^'Invalid identification type'! !

!ImportedValue class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:14:55 pm (UTC)'!
invalidValueErrorDescription

	self subclassResponsibility! !

!Identification methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isOfType: anIdentificationTypeCode number: anIdentificationNumber

	^(self class canHandle: anIdentificationTypeCode) and: [ self number = anIdentificationNumber ]! !

!Identification methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
number

	^importedString! !

!Identification methodsFor: 'identification' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
type

	^self class code! !

!Identification methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isCUIT

	^false! !

!Identification methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isDNI

	^false! !

!Identification methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
cuitNumberIfNone: aNoneBlock

	^aNoneBlock value! !

!Identification methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
dniNumberIfNone: aNoneBlock

	^aNoneBlock value! !

!Identification class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
ofType: anIdentificationTypeCode number: anIdentificationNumber

	^(self typeHandling: anIdentificationTypeCode) with: anIdentificationNumber! !

!Identification class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
canHandle: anIdentificationTypeCode

	^self code = anIdentificationTypeCode! !

!Identification class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
code

	self subclassResponsibility! !

!CUIT methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isCUIT

	^true! !

!CUIT methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
cuitNumberIfNone: aNoneBlock

	^self value! !

!CUIT class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
code

	^'C'! !

!CUIT class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isValid: anIdentificationNumber

	^(anIdentificationNumber size between: self minimumSize and: self maximumSize)
		and: [ (self hasSeparatorsIn: anIdentificationNumber)
		and: [ (self validPrefixes includes: (self prefixOf: anIdentificationNumber))
		and: [ (self isAllDigits: (self numberPartOf: anIdentificationNumber))
		and: [ (self verificationDigitOf: anIdentificationNumber) isDigit ]]]]! !

!CUIT class methodsFor: 'validation - private' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
hasSeparatorsIn: anIdentificationNumber

	^(self prefixSeparatorOf: anIdentificationNumber) = self separator
		and: [ (self verificationSeparatorOf: anIdentificationNumber) = self separator ]! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
maximumSize

	"23-25666777-9"
	^13! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
minimumSize

	"20-1234567-3 - the number part can have less digits than the usual eight"
	^12! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
numberPartOf: anIdentificationNumber

	^anIdentificationNumber copyFrom: 4 to: anIdentificationNumber size - 2! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
prefixOf: anIdentificationNumber

	^anIdentificationNumber first: 2! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
prefixSeparatorOf: anIdentificationNumber

	^anIdentificationNumber third! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
separator

	^$-! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
validPrefixes

	^#( '20' '23' '24' '25' '26' '27' '30' '33' '34' )! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
verificationDigitOf: anIdentificationNumber

	^anIdentificationNumber last! !

!CUIT class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
verificationSeparatorOf: anIdentificationNumber

	^anIdentificationNumber penultimate! !

!CUIT class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
invalidValueErrorDescription

	^'Invalid CUIT number'! !

!DNI methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isDNI

	^true! !

!DNI methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
dniNumberIfNone: aNoneBlock

	^self value! !

!DNI methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
value

	^self numberValue! !

!DNI class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
code

	^'D'! !

!DNI class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
isValid: anIdentificationNumber

	^self is: anIdentificationNumber numberBetween: 1 and: 99999999! !

!DNI class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:15:14 pm (UTC)'!
invalidValueErrorDescription

	^'Invalid DNI number'! !

!ZipCode methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isNew

	^false! !

!ZipCode methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isOld

	^false! !

!ZipCode methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
newValueIfNone: aNoneBlock

	^aNoneBlock value! !

!ZipCode methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
oldValueIfNone: aNoneBlock

	^aNoneBlock value! !

!ZipCode class methodsFor: 'instance creation' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
for: aZipCodeString

	^(self typeHandling: aZipCodeString) with: aZipCodeString! !

!NewZipCode methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isNew

	^true! !

!NewZipCode methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
newValueIfNone: aNoneBlock

	^self value! !

!NewZipCode class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
canHandle: aZipCodeString

	^aZipCodeString first isLetter! !

!NewZipCode class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isValid: aZipCodeString

	"B1636BBE - a province letter, the old zip code and three letters that identify the block"
	^aZipCodeString size = self zipCodeSize
		and: [ (OldZipCode isValid: (self oldZipCodeOf: aZipCodeString))
		and: [ self isAllLetters: (self blockLettersOf: aZipCodeString) ]]! !

!NewZipCode class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
blockLettersOf: aZipCodeString

	^aZipCodeString last: 3! !

!NewZipCode class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
oldZipCodeOf: aZipCodeString

	^aZipCodeString copyFrom: 2 to: 5! !

!NewZipCode class methodsFor: 'format' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
zipCodeSize

	^8! !

!NewZipCode class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
invalidValueErrorDescription

	^'Invalid new zipcode'! !

!OldZipCode methodsFor: 'testing' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isOld

	^true! !

!OldZipCode methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
oldValueIfNone: aNoneBlock

	^self value! !

!OldZipCode methodsFor: 'value' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
value

	^self numberValue! !

!OldZipCode class methodsFor: 'type' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
canHandle: aZipCodeString

	^aZipCodeString first isDigit! !

!OldZipCode class methodsFor: 'validation' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
isValid: aZipCodeString

	^self is: aZipCodeString numberBetween: 1000 and: 9999! !

!OldZipCode class methodsFor: 'error messages' stamp: 'HAW 15/Sep/2026, 2:15:29 pm (UTC)'!
invalidValueErrorDescription

	^'Invalid old zipcode'! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 1:00:20 pm (UTC)'!
cuitWithInvalidHeader
	^ ReadStream on:
'C,Pepe,Sanchez,C,19-25666777-9'! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 23/May/2022, 12:15:52 am (UTC)'!
test01ValidDataIsImportedCorrectly

	CustomerImporter valueFrom: self validImportData into: system..

	self assertImportedRightNumberOfCustomers.
	self assertPepeSanchezWasImportedCorrecty.
	self assertJuanPerezWasImportedCorrectly ! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 23/May/2022, 12:15:52 am (UTC)'!
test02CanNotImportAddressWithoutCustomer

	self
		should: [ CustomerImporter valueFrom: self addressWithoutCustomerData into: system. ]
		raise: Error - MessageNotUnderstood
		withMessageText: CustomerImporter canNotImportAddressWithoutCustomerErrorDescription

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:56:58 pm (UTC)'!
test03DoesNotImportRecordsStartingWithCButMoreCharacters

	self
		shouldFailImporting: self invalidCustomerRecordStartData
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:49:03 pm (UTC)'!
test04DoesNotImportRecordsStartingWithAButMoreCharacters

	self
		shouldFailImporting: self invalidAddressRecordStartData
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:49:36 pm (UTC)'!
test05CanNotImportAddressRecordWithLessThanSixFields

	self
		shouldFailImporting: self addressRecordWithLessThanSixFields
		messageText: CustomerImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:51:14 pm (UTC)'!
test06CanNotImportAddressRecordWithMoreThanSixFields

	self
		shouldFailImporting: self addressRecordWithMoreThanSixFields
		messageText: CustomerImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:56:58 pm (UTC)'!
test07CanNotImportCustomerRecordWithLessThanFiveFields

	self
		shouldFailImporting: self customerRecordWithLessThanFiveFields
		messageText: CustomerImporter invalidCustomerRecordErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 10:56:58 pm (UTC)'!
test08CanNotImportCustomerRecordWithMoreThanFiveFields

	self
		shouldFailImporting: self customerRecordWithMoreThanFiveFields
		messageText: CustomerImporter invalidCustomerRecordErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 22/May/2022, 11:01:43 pm (UTC)'!
test09CannotImportEmptyLine

	self
		shouldFailImporting: self emptyLine
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:47:11 pm (UTC)'!
test10DNICannotBeLessThanOne

	self
		shouldFailImporting: self lessThanOneDNI
		messageText: 'Invalid DNI number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:49:46 pm (UTC)'!
test11DNICannotBeBiggerThan99999999

	self
		shouldFailImporting: self biggerThanValidDNINumber
		messageText: 'Invalid DNI number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:53:14 pm (UTC)'!
test12DNIMustBeAllDigits

	self
		shouldFailImporting: self dniWithoutDigit
		messageText: 'Invalid DNI number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:56:36 pm (UTC)'!
test13CuitSizeCannotBeLessThan12

	self
		shouldFailImporting: self lessThan12CuitSize
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:56:12 pm (UTC)'!
test14CuitSizeCannotBeBiggerThan13

	self
		shouldFailImporting: self biggerThan13CuitSize
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:57:23 pm (UTC)'!
test15CuitMustHaveDashAtThridPosition

	self
		shouldFailImporting: self cuitWithoutDashInThirdPosition
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 12:58:59 pm (UTC)'!
test16CuitMustHaveDashAtPenultimatePosition

	self
		shouldFailImporting: self cuitWithoutDashAnPenultimatePosition
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 1:00:09 pm (UTC)'!
test17CuitMustHaveValidHeader

	self
		shouldFailImporting: self cuitWithInvalidHeader
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 1:00:39 pm (UTC)'!
test18CuitMustHaveDigitAtEnd

	self
		shouldFailImporting: self cuitWithoutDigitAtEnd
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 1:02:02 pm (UTC)'!
test19CuitMustHaveAllDigits

	self
		shouldFailImporting: self cuitWithoutAllDigits
		messageText: 'Invalid CUIT number' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:09:46 pm (UTC)'!
test20OldZipCodeMustBeAllDigits

	self
		shouldFailImporting: self oldZipCodeWithLetters
		messageText: 'Invalid old zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:12:31 pm (UTC)'!
test21OldZipMustBeBiggerThan999

	self
		shouldFailImporting: self oldZipSmallerThan1000
		messageText: 'Invalid old zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:14:47 pm (UTC)'!
test22OldZipMustBeLessThan10000

	self
		shouldFailImporting: self oldZipBiggerThan9999
		messageText: 'Invalid old zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:18:36 pm (UTC)'!
test23NewZipCodeSizeCannotBeLessThan8

	self
		shouldFailImporting: self newZipCodeWithSizeLessThan8
		messageText: 'Invalid new zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:17:56 pm (UTC)'!
test24NewZipCodeSizeCannotBeBiggerThan8

	self
		shouldFailImporting: self newZipCodeWithSizeBiggerThan8
		messageText: 'Invalid new zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:19:36 pm (UTC)'!
test25NewZipCode4DigitsAfterFirstLetter

	self
		shouldFailImporting: self newZipCodeWithoutFourDigits
		messageText: 'Invalid new zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:21:38 pm (UTC)'!
test26NewZipCode4DigitsMustBeBiggerThan999

	self
		shouldFailImporting: self newZipCodeFourDigitsLessThan1000
		messageText: 'Invalid new zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:23:36 pm (UTC)'!
test27NewZipCodeMustEndWith3Letters

	self
		shouldFailImporting: self newZipCodeWithoutEnding3Letters
		messageText: 'Invalid new zipcode' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:28:33 pm (UTC)'!
test28IdTypeMustBeDNIOrCuit

	self
		shouldFailImporting: self invalidIdType
		messageText: 'Invalid identification type' 
		asserting: [ self assertNoCustomerWasImported ]

	! !

!ImportTest methodsFor: 'tests' stamp: 'HAW 13/Jul/2022, 3:30:23 pm (UTC)'!
test29ZipCodeMustBeOldOrNew

	self
		shouldFailImporting: self invalidIdZipCode
		messageText: 'Invalid identification type' 
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 13/Jul/2022, 1:24:17 pm (UTC)'!
assertAddressOf: importedCustomer at: aStreetName hasNumber: aNumber town: aTown zipCode: aZipCode province: aProvince

	| importedAddress |

	importedAddress := importedCustomer addressAt: aStreetName ifNone: [ self fail ].
	self assert: aStreetName equals: importedAddress streetName.
	self assert: aNumber equals: importedAddress streetNumber.
	self assert: aTown equals: importedAddress town.
	self assert: aZipCode equals: importedAddress zipCode.
	self assert: aProvince equals: importedAddress province.
	
	^importedAddress 

	! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 23/May/2022, 12:34:30 am (UTC)'!
assertCustomerWithIdentificationType: anIdType number: anIdNumber hasFirstName: aFirstName lastName: aLastName

	| importedCustomer |

	importedCustomer := system customerWithIdentificationType: anIdType number: anIdNumber.

	self assert: aFirstName equals: importedCustomer firstName.
	self assert: aLastName equals: importedCustomer lastName.
	self assert: anIdType equals: importedCustomer identificationType.
	self assert: anIdNumber equals: importedCustomer identificationNumber.

	^importedCustomer

	! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 23/May/2022, 12:34:37 am (UTC)'!
assertImportedOneCustomerWithoutAddress

	| importedCustomer |

	self assert: 1 equals: system numberOfCustomers.
	importedCustomer := system customerWithIdentificationType: 'D' number: '22333444'.
	self assert: importedCustomer isAddressesEmpty
	! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 23/May/2022, 12:33:18 am (UTC)'!
assertImportedRightNumberOfCustomers

	^ self assert: 2 equals: system numberOfCustomers! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 13/Jul/2022, 1:26:42 pm (UTC)'!
assertJuanPerezWasImportedCorrectly

	| importedCustomer address |

	importedCustomer := self assertCustomerWithIdentificationType: 'C' number: '23-25666777-9' hasFirstName: 'Juan' lastName: 'Perez'.
	
	self deny: importedCustomer hasDNIAsIdentification.
	self assert: 'No dni' equals: (importedCustomer dniNumberIfNone: [ 'No dni' ]).
	self assert: importedCustomer hasCUITAsIdentification.
	self assert: '23-25666777-9' equals: (importedCustomer cuitNumberIfNone: [self fail ]).
	
	address := self assertAddressOf: importedCustomer at: 'Alem' hasNumber: 1122 town: 'CABA' zipCode: 1001 province: 'CABA'.
	
	self assert: address hasOldZipCode.
	self assert: 1001 equals: (address oldZipCodeIfNone: [ self fail ]).
	self deny: address hasNewZipCode.
	self assert: 'has old zipcode' equals: (address newZipCodeIfNone: [ 'has old zipcode' ]).
	! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 23/May/2022, 12:33:24 am (UTC)'!
assertNoCustomerWasImported

	^ self assert: 0 equals: system numberOfCustomers! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 13/Jul/2022, 3:06:54 pm (UTC)'!
assertPepeSanchezWasImportedCorrecty

	| importedCustomer address |

	importedCustomer := self assertCustomerWithIdentificationType: 'D' number: '22333444' hasFirstName: 'Pepe' lastName: 'Sanchez'.
	
	self assert: importedCustomer hasDNIAsIdentification.
	self assert: 22333444 equals: (importedCustomer dniNumberIfNone: [ self fail ]).
	self deny: importedCustomer hasCUITAsIdentification.
	self assert: 'No cuit' equals: (importedCustomer cuitNumberIfNone: [ 'No cuit' ]).
	
	address := self assertAddressOf: importedCustomer at: 'San Martin' hasNumber: 3322 town: 'Olivos' zipCode: 'B1636BBE' province: 'BsAs'.
	self deny: address hasOldZipCode.
	self assert: 'has new zipcode' equals: (address oldZipCodeIfNone: [ 'has new zipcode' ]).
	self assert: address hasNewZipCode.
	self assert: 'B1636BBE' equals: (address newZipCodeIfNone: [ self fail ]).
		
	self assertAddressOf: importedCustomer at: 'Maipu' hasNumber: 888 town: 'Florida' zipCode: 1122 province: 'Buenos Aires'.
! !

!ImportTest methodsFor: 'assertions' stamp: 'HAW 23/May/2022, 12:15:52 am (UTC)'!
shouldFailImporting: aReadStream messageText: anErrorMessageText asserting: anAssertionBlock

	self
		should: [ CustomerImporter valueFrom: aReadStream into: system. ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorMessageText equals: anError messageText.
			anAssertionBlock value ]

	! !

!ImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 23/May/2022, 12:36:16 am (UTC)'!
setUp

	system := Environment current createCustomerSystem.
	system start.
	system beginTransaction.
! !

!ImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 22/May/2022, 11:12:16 pm (UTC)'!
tearDown

	system commit.
	system stop
	! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:41:20 pm (UTC)'!
addressRecordWithLessThanSixFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:51:35 pm (UTC)'!
addressRecordWithMoreThanSixFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs,x'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:14:13 pm (UTC)'!
addressWithoutCustomerData

	^ReadStream on: 'A,San Martin,3322,Olivos,1636,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:56:45 pm (UTC)'!
biggerThan13CuitSize

	^ ReadStream on:
'C,Pepe,Sanchez,C,23-25666777-99'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:52:47 pm (UTC)'!
biggerThanValidDNINumber

	^ ReadStream on:
'C,Pepe,Sanchez,D,1000000000'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 1:08:54 pm (UTC)'!
cuitWithoutAllDigits

	^ ReadStream on:
'C,Pepe,Sanchez,C,23-a5666777-9'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:59:13 pm (UTC)'!
cuitWithoutDashAnPenultimatePosition

	^ ReadStream on:
'C,Pepe,Sanchez,C,23-2566677799'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:57:38 pm (UTC)'!
cuitWithoutDashInThirdPosition

	^ ReadStream on:
'C,Pepe,Sanchez,C,2325666777-99'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 1:00:49 pm (UTC)'!
cuitWithoutDigitAtEnd

	^ ReadStream on:
'C,Pepe,Sanchez,C,23-25666777-a'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:53:41 pm (UTC)'!
customerRecordWithLessThanFiveFields

	^ReadStream on: 'C,Pepe,Sanchez,D'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:55:59 pm (UTC)'!
customerRecordWithMoreThanFiveFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444,x'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:53:53 pm (UTC)'!
dniWithoutDigit

	^ ReadStream on:
'C,Pepe,Sanchez,D,2233344a'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 11:02:57 pm (UTC)'!
emptyLine

	^ReadStream on: '
'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:34:25 pm (UTC)'!
invalidAddressRecordStartData

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
AA,San Martin,3322,Olivos,1636,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 22/May/2022, 10:22:55 pm (UTC)'!
invalidCustomerRecordStartData

	^ReadStream on: 'CC,Pepe,Sanchez,D,22333444'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:28:09 pm (UTC)'!
invalidIdType
	^ ReadStream on:
'C,Pepe,Sanchez,A,22333444'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:29:25 pm (UTC)'!
invalidIdZipCode
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,+1636BBE,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:56:36 pm (UTC)'!
lessThan12CuitSize
	
	^ ReadStream on:
'C,Pepe,Sanchez,C,23-25666777-'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 12:49:05 pm (UTC)'!
lessThanOneDNI
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,0'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:22:04 pm (UTC)'!
newZipCodeFourDigitsLessThan1000
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B0999BBE,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:18:08 pm (UTC)'!
newZipCodeWithSizeBiggerThan8

	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B1636BBEE,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:17:04 pm (UTC)'!
newZipCodeWithSizeLessThan8
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B1636BB,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:26:12 pm (UTC)'!
newZipCodeWithoutEnding3Letters
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B1636B2E,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:19:51 pm (UTC)'!
newZipCodeWithoutFourDigits
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B1a36BBE,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:15:13 pm (UTC)'!
oldZipBiggerThan9999
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,10000,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:08:43 pm (UTC)'!
oldZipCodeWithLetters
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1a00,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:12:56 pm (UTC)'!
oldZipSmallerThan1000
	
	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,999,BsAs'! !

!ImportTest methodsFor: 'test data' stamp: 'HAW 13/Jul/2022, 3:02:30 pm (UTC)'!
validImportData

	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,B1636BBE,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
C,Juan,Perez,C,23-25666777-9
A,Alem,1122,CABA,1001,CABA'! !
