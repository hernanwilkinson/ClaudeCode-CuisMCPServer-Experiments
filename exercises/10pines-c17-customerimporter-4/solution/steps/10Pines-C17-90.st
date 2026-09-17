!classDefinition: #CustomerImportTest category: '10Pines-C17'!
TestCase subclass: #CustomerImportTest
	instanceVariableNames: 'system'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 6/1/2022 09:36:40'!
test01ValidDataIsImportedCorrectly

	CustomerImporter valueFrom: self validImportData into: system.

	self assertImportedRightNumberOfCustomers.
	self assertPepeSanchezWasImportedCorrecty.
	self assertJuanPerezWasImportedCorrectly ! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 21:15:52'!
test02CanNotImportAddressWithoutCustomer

	self
		should: [ CustomerImporter valueFrom: self addressWithoutCustomerData into: system. ]
		raise: Error - MessageNotUnderstood
		withMessageText: CustomerImporter canNotImportAddressWithoutCustomerErrorDescription

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:56:58'!
test03DoesNotImportRecordsStartingWithCButMoreCharacters

	self
		shouldFailImporting: self invalidCustomerRecordStartData
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:49:03'!
test04DoesNotImportRecordsStartingWithAButMoreCharacters

	self
		shouldFailImporting: self invalidAddressRecordStartData
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:49:36'!
test05CanNotImportAddressRecordWithLessThanSixFields

	self
		shouldFailImporting: self addressRecordWithLessThanSixFields
		messageText: CustomerImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:51:14'!
test06CanNotImportAddressRecordWithMoreThanSixFields

	self
		shouldFailImporting: self addressRecordWithMoreThanSixFields
		messageText: CustomerImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneCustomerWithoutAddress ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:56:58'!
test07CanNotImportCustomerRecordWithLessThanFiveFields

	self
		shouldFailImporting: self customerRecordWithLessThanFiveFields
		messageText: CustomerImporter invalidCustomerRecordErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 19:56:58'!
test08CanNotImportCustomerRecordWithMoreThanFiveFields

	self
		shouldFailImporting: self customerRecordWithMoreThanFiveFields
		messageText: CustomerImporter invalidCustomerRecordErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 5/22/2022 20:01:43'!
test09CannotImportEmptyLine

	self
		shouldFailImporting: self emptyLine
		messageText: CustomerImporter invalidRecordTypeErrorDescription
		asserting: [ self assertNoCustomerWasImported ]

	! !


!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 18:22:05'!
assertAddressOf: importedCustomer at: aStreetName hasNumber: aNumber town: aTown zipCode: aZipCode province: aProvince

	| importedAddress |

	importedAddress := importedCustomer addressAt: aStreetName ifNone: [ self fail ].
	self assert: aStreetName equals: importedAddress streetName.
	self assert: aNumber equals: importedAddress streetNumber.
	self assert: aTown equals: importedAddress town.
	self assert: aZipCode equals: importedAddress zipCode.
	self assert: aProvince equals: importedAddress province.

	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 21:34:30'!
assertCustomerWithIdentificationType: anIdType number: anIdNumber hasFirstName: aFirstName lastName: aLastName

	| importedCustomer |

	importedCustomer := system customerWithIdentificationType: anIdType number: anIdNumber.

	self assert: aFirstName equals: importedCustomer firstName.
	self assert: aLastName equals: importedCustomer lastName.
	self assert: anIdType equals: importedCustomer identificationType.
	self assert: anIdNumber equals: importedCustomer identificationNumber.

	^importedCustomer

	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 21:34:37'!
assertImportedOneCustomerWithoutAddress

	| importedCustomer |

	self assert: 1 equals: system numberOfCustomers.
	importedCustomer := system customerWithIdentificationType: 'D' number: '22333444'.
	self assert: importedCustomer isAddressesEmpty
	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 21:33:18'!
assertImportedRightNumberOfCustomers

	^ self assert: 2 equals: system numberOfCustomers! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 18:28:45'!
assertJuanPerezWasImportedCorrectly

	| importedCustomer |

	importedCustomer := self assertCustomerWithIdentificationType: 'C' number: '23-25666777-9' hasFirstName: 'Juan' lastName: 'Perez'.
	self assertAddressOf: importedCustomer at: 'Alem' hasNumber: 1122 town: 'CABA' zipCode: 1001 province: 'CABA'
	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 21:33:24'!
assertNoCustomerWasImported

	^ self assert: 0 equals: system numberOfCustomers! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 18:28:05'!
assertPepeSanchezWasImportedCorrecty

	| importedCustomer |

	importedCustomer := self assertCustomerWithIdentificationType: 'D' number: '22333444' hasFirstName: 'Pepe' lastName: 'Sanchez'.
	self assertAddressOf: importedCustomer at: 'San Martin' hasNumber: 3322 town: 'Olivos' zipCode: 1636 province: 'BsAs'.
	self assertAddressOf: importedCustomer at: 'Maipu' hasNumber: 888 town: 'Florida' zipCode: 1122 province: 'Buenos Aires'.


	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 5/22/2022 21:15:52'!
shouldFailImporting: aReadStream messageText: anErrorMessageText asserting: anAssertionBlock

	self
		should: [ CustomerImporter valueFrom: aReadStream into: system. ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorMessageText equals: anError messageText.
			anAssertionBlock value ]

	! !


!CustomerImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 5/22/2022 21:36:16'!
setUp

	system := Environment current createCustomerSystem.
	system start.
	system beginTransaction.
! !

!CustomerImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 5/22/2022 20:12:16'!
tearDown

	system commit.
	system stop
	! !


!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:41:20'!
addressRecordWithLessThanSixFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:51:35'!
addressRecordWithMoreThanSixFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs,x'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:14:13'!
addressWithoutCustomerData

	^ReadStream on: 'A,San Martin,3322,Olivos,1636,BsAs'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:53:41'!
customerRecordWithLessThanFiveFields

	^ReadStream on: 'C,Pepe,Sanchez,D'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:55:59'!
customerRecordWithMoreThanFiveFields

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444,x'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 20:02:57'!
emptyLine

	^ReadStream on: '
'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:34:25'!
invalidAddressRecordStartData

	^ReadStream on: 'C,Pepe,Sanchez,D,22333444
AA,San Martin,3322,Olivos,1636,BsAs'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 19:22:55'!
invalidCustomerRecordStartData

	^ReadStream on: 'CC,Pepe,Sanchez,D,22333444'! !

!CustomerImportTest methodsFor: 'test data' stamp: 'HAW 5/22/2022 18:08:08'!
validImportData

	^ ReadStream on:
'C,Pepe,Sanchez,D,22333444
A,San Martin,3322,Olivos,1636,BsAs
A,Maipu,888,Florida,1122,Buenos Aires
C,Juan,Perez,C,23-25666777-9
A,Alem,1122,CABA,1001,CABA'! !


!classDefinition: #SupplierTest category: '10Pines-C17'!
TestCase subclass: #SupplierTest
	instanceVariableNames: 'system'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:39:38'!
assertAddressOf: importedSupplier at: aStreetName hasNumber: aNumber town: aTown zipCode: aZipCode province: aProvince

	| importedAddress |

	importedAddress := importedSupplier addressAt: aStreetName ifNone: [ self fail ].
	self assert: aStreetName equals: importedAddress streetName.
	self assert: aNumber equals: importedAddress streetNumber.
	self assert: aTown equals: importedAddress town.
	self assert: aZipCode equals: importedAddress zipCode.
	self assert: aProvince equals: importedAddress province.

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:03:57'!
invalidSupplierRecordType

	^ReadStream on: 'SA,Supplier1,D,123'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:40:57'!
oneSuplier
	
	^ReadStream on: 'S,Supplier1,D,123'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:39:53'!
setUp

	system := Environment current createSupplierSystem! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:28:33'!
supplierRecordWithFiveFields
	
	^ReadStream on: 'S,Supplier1,D,123,x'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:26:41'!
supplierRecordWithThreeFields
	
	^ReadStream on: 'S,Supplier1,D'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:40:15'!
supplierWithAddress
	
	^ReadStream on: 'S,Supplier1,D,123
A,San Martin,3322,Olivos,1636,BsAs'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:48:16'!
test00

	| provider |
	
	provider := Supplier named: 'Pepe' identifiedWithType: 'D' number: '1122'.
	
	self assert: (provider isNamed: 'Pepe')! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:52:10'!
test00b

	| provider |
	
	provider := Supplier named: 'Pepe' identifiedWithType: 'D' number: '1122'.
	
	self deny: (provider isNamed: 'Juan')! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:47:35'!
test01

	| provider |
	
	provider := Supplier named: 'Pepe' identifiedWithType: 'D' number: '1122'.
	
	self assert: (provider isIdentifiedAs: 'D' number: '1122')! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:47:35'!
test02

	| provider |
	
	provider := Supplier named: 'Pepe' identifiedWithType: 'D' number: '1122'.
	
	self deny: (provider isIdentifiedAs: '' number: '1122')! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:47:35'!
test03

	| provider |
	
	provider := Supplier named: 'Pepe' identifiedWithType: 'D' number: '1122'.
	
	self deny: (provider isIdentifiedAs: 'D' number: '112')! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:47:19'!
test04ImportsProviderRecordCorreclty

	| importedSupplier |
	
	SupplierImporter valueFrom: self oneSuplier into: system.
	
	self assert: 1 equals: system numberOfSuppliers.
	
	importedSupplier := system supplierIdentifiedAs: 'D' number: '123'.
	self assert: (importedSupplier isNamed: 'Supplier1').
	self assert: importedSupplier isCustomersEmpty.
	self assert: importedSupplier isAddressesEmpty.
! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:03:33'!
test05CannotImportRecordThatStartsWithSAndMore

	self 
		should: [ SupplierImporter valueFrom: self invalidSupplierRecordType into: system ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: SupplierImporter invalidRecordTypeErrorDescription equals: anError messageText.
			self assert: 0 equals: system numberOfSuppliers ]
! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:26:22'!
test06CannotImportSupplierWithLessThanFourFields

	self 
		should: [ SupplierImporter valueFrom: self supplierRecordWithThreeFields into: system ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: SupplierImporter invalidSupplierRecordErrorDescription equals: anError messageText.
			self assert: 0 equals: system numberOfSuppliers ]
! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:28:15'!
test07CannotImportSupplierWithMoreThanFourFields

	self 
		should: [ SupplierImporter valueFrom: self supplierRecordWithFiveFields into: system ]
		raise: Error - MessageNotUnderstood 
		withExceptionDo: [ :anError |
			self assert: SupplierImporter invalidSupplierRecordErrorDescription equals: anError messageText.
			self assert: 0 equals: system numberOfSuppliers ]
! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:39:23'!
test08CanImportSupplierAddress

	| importedSupplier |
	
	SupplierImporter valueFrom: self supplierWithAddress into: system.
	
	importedSupplier := system supplierIdentifiedAs: 'D' number: '123'.
	
	self assertAddressOf: importedSupplier at: 'San Martin' hasNumber: 3322 town: 'Olivos' zipCode: 1636 province: 'BsAs' ! !


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


!classDefinition: #CustomerImporter category: '10Pines-C17'!
Object subclass: #CustomerImporter
	instanceVariableNames: 'readStream newCustomer line record system'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerImporter methodsFor: 'initialization' stamp: 'HAW 5/22/2022 21:15:17'!
initializeFrom: aReadStream into: aCustomerSystem

	readStream := aReadStream.
	system := aCustomerSystem ! !


!CustomerImporter methodsFor: 'evaluating' stamp: 'HAW 5/22/2022 18:48:58'!
value

	[ self hasLineToImport ] whileTrue: [
		self createRecord.
		self importRecord ].

	! !


!CustomerImporter methodsFor: 'customer' stamp: 'HAW 5/22/2022 19:59:39'!
assertValidCustomerRecord

	^ record size ~= 5 ifTrue: [ self error: self class invalidCustomerRecordErrorDescription ]! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 5/22/2022 21:13:47'!
importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identificationType: record fourth.
	newCustomer identificationNumber: record fifth.
	system add: newCustomer! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 5/22/2022 19:23:55'!
isCustomerRecord

	^ record first = 'C'! !


!CustomerImporter methodsFor: 'address' stamp: 'HAW 5/22/2022 19:58:41'!
assertCustomerWasImported

	^ newCustomer ifNil: [ self error: self class canNotImportAddressWithoutCustomerErrorDescription ]! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 5/22/2022 19:59:12'!
assertValidAddressRecord

	^ record size ~= 6 ifTrue: [ self error: self class invalidAddressRecordErrorDescription ]! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 5/22/2022 19:59:12'!
importAddress

	| newAddress |

	self assertCustomerWasImported.
	self assertValidAddressRecord.

	newAddress := Address new.
	newCustomer addAddress: newAddress.
	newAddress streetName: record second.
	newAddress streetNumber: record third asNumber .
	newAddress town: record fourth.
	newAddress zipCode: record fifth asNumber .
	newAddress province: record sixth! !

!CustomerImporter methodsFor: 'address' stamp: 'HAW 5/22/2022 19:37:45'!
isAddressRecord

	^ record first = 'A'! !


!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 5/22/2022 20:04:35'!
assertRecordNotEmpty

	record isEmpty ifTrue: [ self error: self class invalidRecordTypeErrorDescription ]! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 5/22/2022 18:47:26'!
createRecord

	^ record := line findTokens: $,! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 5/22/2022 18:49:33'!
hasLineToImport

	line := readStream nextLine.
	^line notNil! !

!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 5/22/2022 20:04:06'!
importRecord

	self assertRecordNotEmpty.

	self isCustomerRecord ifTrue: [ ^self importCustomer ].
	self isAddressRecord ifTrue: [ ^self importAddress ].

	self error: self class invalidRecordTypeErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerImporter class' category: '10Pines-C17'!
CustomerImporter class
	instanceVariableNames: ''!

!CustomerImporter class methodsFor: 'instance creation' stamp: 'HAW 5/22/2022 21:15:35'!
from: aReadStream into: aCustomerSystem

	^self new initializeFrom: aReadStream into: aCustomerSystem! !


!CustomerImporter class methodsFor: 'importing' stamp: 'HAW 5/22/2022 21:15:52'!
valueFrom: aReadStream into: aCustomerSystem

	^(self from: aReadStream into: aCustomerSystem) value! !


!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 5/22/2022 19:13:48'!
canNotImportAddressWithoutCustomerErrorDescription

	^'Cannot import address without customer'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 5/22/2022 19:41:39'!
invalidAddressRecordErrorDescription

	^'Address record has to have six fields'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 5/22/2022 19:53:56'!
invalidCustomerRecordErrorDescription

	^'Invalid Customer record'! !

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 5/22/2022 19:24:11'!
invalidRecordTypeErrorDescription

	^'Invalid record type'! !


!classDefinition: #SupplierImporter category: '10Pines-C17'!
CustomerImporter subclass: #SupplierImporter
	instanceVariableNames: 'newSupplier'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SupplierImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 12:43:11'!
importRecord
	
	| idNumber idType name |
	
	record first = 'S' ifTrue: [
		record size ~= 4 ifTrue: [ self error: self class invalidSupplierRecordErrorDescription ].
		
		name := record second.
		idType := record third.
		idNumber := record fourth.
		
		newCustomer := Supplier named: name identifiedWithType: idType number: idNumber.
		^system addSupplier: newCustomer ].
	
	^super importRecord ! !


"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SupplierImporter class' category: '10Pines-C17'!
SupplierImporter class
	instanceVariableNames: ''!

!SupplierImporter class methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:27:03'!
invalidSupplierRecordErrorDescription
	
	^'Supplier record must have four fields'! !


!classDefinition: #CustomerSystem category: '10Pines-C17'!
Object subclass: #CustomerSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:17:57'!
add: aCustomer

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:18:38'!
customerWithIdentificationType: anIdType number: anIdNumber

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:18:51'!
numberOfCustomers

	self subclassResponsibility ! !


!CustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 21:18:04'!
beginTransaction

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 21:18:16'!
commit

	self subclassResponsibility ! !


!CustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 21:18:10'!
start

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 21:18:13'!
stop

	self subclassResponsibility ! !


!classDefinition: #PersistentCustomerSystem category: '10Pines-C17'!
CustomerSystem subclass: #PersistentCustomerSystem
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:14:14'!
add: aCustomer

	^session persist: aCustomer ! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:09:50'!
customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer identificationType = anIdType and: [ aCustomer identificationNumber = anIdNumber ]]
		ofType: Customer) anyOne! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:08:47'!
numberOfCustomers

	^(session selectAllOfType: Customer) size! !


!PersistentCustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 20:12:39'!
beginTransaction

	session beginTransaction.
! !

!PersistentCustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 20:13:00'!
commit

	session commit ! !


!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 20:12:29'!
start

	session := DataBaseSession for: (Array with: Address with: Customer).
	! !

!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 20:13:10'!
stop

	session close! !


!classDefinition: #TransientCustomerSystem category: '10Pines-C17'!
CustomerSystem subclass: #TransientCustomerSystem
	instanceVariableNames: 'customers'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!TransientCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 21:21:06'!
start

	customers := OrderedCollection new! !

!TransientCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 5/22/2022 21:23:17'!
stop

	customers := nil! !


!TransientCustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 21:21:20'!
beginTransaction

	! !

!TransientCustomerSystem methodsFor: 'transactions' stamp: 'HAW 5/22/2022 21:23:01'!
commit

	! !


!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:21:32'!
add: aCustomer

	customers add: aCustomer ! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:22:52'!
customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer identificationType = anIdType and: [ aCustomer identificationNumber = anIdNumber ]]! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:21:43'!
numberOfCustomers

	^customers size! !


!classDefinition: #DataBaseSession category: '10Pines-C17'!
Object subclass: #DataBaseSession
	instanceVariableNames: 'configuration tables id'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 00:19:29'!
beginTransaction

	! !

!DataBaseSession methodsFor: 'transaction management' stamp: 'HAW 5/22/2022 19:17:36'!
commit

	(tables at: Customer ifAbsent: [#()]) do: [ :aCustomer | self persistAddressesOf: aCustomer ]
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

!DataBaseSession methodsFor: 'persistence - private' stamp: 'HAW 5/22/2022 19:29:06'!
objectsOfType: aType

	^ tables at: aType ifAbsent: [ #() ]! !

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


!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 19:29:06'!
select: aCondition ofType: aType

	self delay.
	^(self objectsOfType: aType) select: aCondition ! !

!DataBaseSession methodsFor: 'selecting' stamp: 'HAW 5/22/2022 19:29:06'!
selectAllOfType: aType

	self delay.
	^(self objectsOfType: aType) copy ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DataBaseSession class' category: '10Pines-C17'!
DataBaseSession class
	instanceVariableNames: ''!

!DataBaseSession class methodsFor: 'instance creation' stamp: 'HAW 5/22/2022 00:19:29'!
for: aConfiguration

	^self new initializeFor: aConfiguration! !


!classDefinition: #Environment category: '10Pines-C17'!
Object subclass: #Environment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Environment methodsFor: 'customer system' stamp: 'HAW 5/22/2022 21:41:06'!
createCustomerSystem

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Environment class' category: '10Pines-C17'!
Environment class
	instanceVariableNames: ''!

!Environment class methodsFor: 'current' stamp: 'HAW 5/22/2022 21:37:10'!
current

	^(self subclasses detect: [ :anEnvironmentClass | anEnvironmentClass isCurrent ]) new! !

!Environment class methodsFor: 'current' stamp: 'HAW 5/22/2022 21:41:36'!
isCurrent

	self subclassResponsibility ! !


!classDefinition: #DevelopmentEnvironment category: '10Pines-C17'!
Environment subclass: #DevelopmentEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!DevelopmentEnvironment methodsFor: 'customer system' stamp: 'HAW 5/22/2022 21:38:39'!
createCustomerSystem

	^TransientCustomerSystem new! !


!DevelopmentEnvironment methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:40:22'!
createSupplierSystem
	
	^TransientSupplierSystem new! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DevelopmentEnvironment class' category: '10Pines-C17'!
DevelopmentEnvironment class
	instanceVariableNames: ''!

!DevelopmentEnvironment class methodsFor: 'current' stamp: 'HAW 5/22/2022 21:37:58'!
isCurrent

	^true! !


!classDefinition: #IntegrationEnvironment category: '10Pines-C17'!
Environment subclass: #IntegrationEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!IntegrationEnvironment methodsFor: 'customer system' stamp: 'HAW 5/22/2022 21:40:48'!
createCustomerSystem

	^PersistentCustomerSystem new! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'IntegrationEnvironment class' category: '10Pines-C17'!
IntegrationEnvironment class
	instanceVariableNames: ''!

!IntegrationEnvironment class methodsFor: 'current' stamp: 'HAW 5/22/2022 21:40:36'!
isCurrent

	^DevelopmentEnvironment isCurrent not! !


!classDefinition: #Party category: '10Pines-C17'!
Object subclass: #Party
	instanceVariableNames: 'addresses id identificationNumber identificationType'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Party methodsFor: 'addresses' stamp: 'HAW 6/1/2022 12:45:38'!
addAddress: anAddress

	addresses add: anAddress ! !

!Party methodsFor: 'addresses' stamp: 'HAW 6/1/2022 12:45:43'!
addressAt: aStreetName ifNone: aNoneBlock

	^addresses detect: [ :address | address isAt: aStreetName ] ifNone: aNoneBlock ! !

!Party methodsFor: 'addresses' stamp: 'HAW 6/1/2022 12:45:28'!
addresses

	^ addresses! !

!Party methodsFor: 'addresses' stamp: 'HAW 6/1/2022 12:45:48'!
isAddressesEmpty

	^addresses isEmpty ! !


!Party methodsFor: 'identification' stamp: 'HAW 6/1/2022 12:45:58'!
identificationNumber

	^identificationNumber ! !

!Party methodsFor: 'identification' stamp: 'HAW 6/1/2022 12:46:03'!
identificationNumber: anIdentificationNumber

	identificationNumber := anIdentificationNumber! !

!Party methodsFor: 'identification' stamp: 'HAW 6/1/2022 12:46:06'!
identificationType

	^identificationType ! !

!Party methodsFor: 'identification' stamp: 'HAW 6/1/2022 12:46:10'!
identificationType: anIdentificationType

	identificationType := anIdentificationType! !


!Party methodsFor: 'initialization' stamp: 'HAW 6/1/2022 12:46:19'!
initialize

	super initialize.
	addresses := OrderedCollection new.! !


!Party methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:47:58'!
isIdentifiedAs: anIdentificationType number: anIdentificationNumber 
	
	^identificationType = anIdentificationType and: [ identificationNumber = anIdentificationNumber ]! !


!classDefinition: #Customer category: '10Pines-C17'!
Party subclass: #Customer
	instanceVariableNames: 'firstName lastName'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

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


!classDefinition: #Supplier category: '10Pines-C17'!
Party subclass: #Supplier
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Supplier methodsFor: 'initialization' stamp: 'HAW 6/1/2022 12:47:37'!
initializedNamed: aName identifiedWithType: anIdentificationType number: anIdentificationNumber 
	
	name := aName.
	identificationType := anIdentificationType.
	identificationNumber := anIdentificationNumber.
	! !


!Supplier methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 12:48:24'!
isCustomersEmpty
	
	^true! !

!Supplier methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:53:07'!
isNamed: aName

	^name = aName ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Supplier class' category: '10Pines-C17'!
Supplier class
	instanceVariableNames: ''!

!Supplier class methodsFor: 'instance creation' stamp: 'HAW 6/1/2022 09:52:50'!
named: aName identifiedWithType: anIdentificationType number: anIdentificationNumber 
	
	^self new initializedNamed: aName identifiedWithType: anIdentificationType number: anIdentificationNumber ! !


!classDefinition: #TransientSupplierSystem category: '10Pines-C17'!
Object subclass: #TransientSupplierSystem
	instanceVariableNames: 'suppliers'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!TransientSupplierSystem methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:44:18'!
addSupplier: aSupplier

	suppliers add: aSupplier ! !

!TransientSupplierSystem methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:44:33'!
initialize

	suppliers := OrderedCollection new! !

!TransientSupplierSystem methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:00:25'!
numberOfSuppliers
	
	^suppliers size! !

!TransientSupplierSystem methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:45:40'!
supplierIdentifiedAs: idType number: idNumber 
	
	^suppliers detect: [ :aSupplier | aSupplier isIdentifiedAs: idType number: idNumber ]! !
