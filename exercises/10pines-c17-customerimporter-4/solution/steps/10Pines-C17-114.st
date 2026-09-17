!classDefinition: #CustomerImportTest category: '10Pines-C17'!
TestCase subclass: #CustomerImportTest
	instanceVariableNames: 'system erpSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 6/1/2022 09:36:40'!
test01ValidDataIsImportedCorrectly

	CustomerImporter valueFrom: self validImportData into: system.

	self assertImportedRightNumberOfCustomers.
	self assertPepeSanchezWasImportedCorrecty.
	self assertJuanPerezWasImportedCorrectly ! !

!CustomerImportTest methodsFor: 'tests' stamp: 'HAW 6/1/2022 19:09:20'!
test02CanNotImportAddressWithoutCustomer

	self
		should: [ CustomerImporter valueFrom: self addressWithoutCustomerData into: system. ]
		raise: Error - MessageNotUnderstood
		withMessageText: CustomerImporter canNotImportAddressWithoutPartyErrorDescription

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

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 6/2/2022 14:54:48'!
assertCustomerWithIdentificationType: anIdType number: anIdNumber hasFirstName: aFirstName lastName: aLastName

	| importedCustomer |

	importedCustomer := system customerIdentifiedAs: anIdType number: anIdNumber.

	self assert: aFirstName equals: importedCustomer firstName.
	self assert: aLastName equals: importedCustomer lastName.
	self assert: anIdType equals: importedCustomer identificationType.
	self assert: anIdNumber equals: importedCustomer identificationNumber.

	^importedCustomer

	! !

!CustomerImportTest methodsFor: 'assertions' stamp: 'HAW 6/2/2022 14:54:48'!
assertImportedOneCustomerWithoutAddress

	| importedCustomer |

	self assert: 1 equals: system numberOfCustomers.
	importedCustomer := system customerIdentifiedAs: 'D' number: '22333444'.
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


!CustomerImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 6/2/2022 14:49:32'!
setUp

	erpSystem := Environment current createErpSystem.
	system := erpSystem customerSystem.
	erpSystem start.
	erpSystem beginTransaction.
! !

!CustomerImportTest methodsFor: 'setUp/tearDown' stamp: 'HAW 6/2/2022 14:49:43'!
tearDown

	erpSystem commit.
	erpSystem stop
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
	instanceVariableNames: 'system erpSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:01:09'!
addressRecordWithLessThanSixFields

	^ReadStream on: 'S,Supplier1,D,123
A,San Martin,3322,Olivos,1636'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:02:14'!
addressRecordWithMoreThanSixFields

	^ReadStream on: 'S,Supplier1,D,123
A,San Martin,3322,Olivos,1636,BsAs,x'! !

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

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:54:48'!
assertCustomerWithIdentificationType: anIdType number: anIdNumber hasFirstName: aFirstName lastName: aLastName

	| importedCustomer |

	importedCustomer := system customerIdentifiedAs: anIdType number: anIdNumber.

	self assert: aFirstName equals: importedCustomer firstName.
	self assert: aLastName equals: importedCustomer lastName.
	self assert: anIdType equals: importedCustomer identificationType.
	self assert: anIdNumber equals: importedCustomer identificationNumber.

	^importedCustomer

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 18:59:07'!
assertImportedOneSupplierWithoutAddress

	| importedSupplier |

	self assert: 1 equals: system numberOfSuppliers.
	importedSupplier := system supplierIdentifiedAs: 'D' number: '123'.
	self assert: importedSupplier isAddressesEmpty
	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:51:26'!
assertNoNewCustomerWasImported
	
	| importedSupplier |

	self assert: 1 equals: system numberOfSuppliers.
	importedSupplier := system supplierIdentifiedAs: 'D' number: '123'.
	
	self assert: importedSupplier isCustomersEmpty.
	self assert: 0 equals: system customerSystem numberOfCustomers 
	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 18:57:11'!
invalidAddressRecordStartData

	^ReadStream on: 'S,Supplier1,D,123
AA,San Martin,3322,Olivos,1636,BsAs'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:03:57'!
invalidSupplierRecordType

	^ReadStream on: 'SA,Supplier1,D,123'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:47:06'!
newCustomerRecordWithLessThanFiveFields
	
	^ReadStream on: 'S,Supplier1,D,123
NC,Pepe,Sanchez,D'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:55:07'!
newCustomerRecordWithMoreThanFiveFields
	
	
	^ReadStream on: 'S,Supplier1,D,123
NC,Pepe,Sanchez,D,1212,x'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 09:40:57'!
oneSuplier
	
	^ReadStream on: 'S,Supplier1,D,123'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:36:40'!
setUp

	erpSystem := Environment current createErpSystem.
	erpSystem start; beginTransaction.
	
	system := erpSystem supplierSystem! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 18:58:32'!
shouldFailImporting: aReadStream messageText: anErrorMessageText asserting: anAssertionBlock

	self
		should: [ SupplierImporter valueFrom: aReadStream into: system. ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anErrorMessageText equals: anError messageText.
			anAssertionBlock value ]

	! !

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

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:23:57'!
supplierWithNewCustomer
	
	^ReadStream on: 'S,Supplier1,D,123
NC,Pepe,Sanchez,D,22333444'! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:31:02'!
tearDown

	erpSystem commit; stop! !

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

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 18:57:44'!
test09DoesNotImportRecordsStartingWithAButMoreCharacters

	self
		shouldFailImporting: self invalidAddressRecordStartData
		messageText: SupplierImporter invalidRecordTypeErrorDescription
		asserting: [ self assertImportedOneSupplierWithoutAddress ]

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:00:46'!
test10CanNotImportAddressRecordWithLessThanSixFields

	self
		shouldFailImporting: self addressRecordWithLessThanSixFields
		messageText: SupplierImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneSupplierWithoutAddress ]

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:01:50'!
test11CanNotImportAddressRecordWithMoreThanSixFields

	self
		shouldFailImporting: self addressRecordWithMoreThanSixFields
		messageText: SupplierImporter invalidAddressRecordErrorDescription
		asserting: [ self assertImportedOneSupplierWithoutAddress ]

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:54:48'!
test12CanImportNewCustomer

	| importedSupplier importedCustomer supplierCustomer |
	
	SupplierImporter valueFrom: self supplierWithNewCustomer into: system.
	
	importedSupplier := system supplierIdentifiedAs: 'D' number: '123'.
	supplierCustomer := importedSupplier customerIdentifiedAs: 'D' number: '22333444'.
	importedCustomer := self assertCustomerWithIdentificationType: 'D' number: '22333444' hasFirstName: 'Pepe' lastName: 'Sanchez'.
	
	self assert: supplierCustomer equals: importedCustomer.
	
	 
	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:47:33'!
test13CanNotImportNewCustomerRecordWithLessThanFiveFields

	self
		shouldFailImporting: self newCustomerRecordWithLessThanFiveFields
		messageText: SupplierImporter invalidNewCustomerRecordErrorDescription
		asserting: [ self assertNoNewCustomerWasImported ]

	! !

!SupplierTest methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:54:37'!
test14CanNotImportNewCustomerRecordWithMoreThanFiveFields

	self
		shouldFailImporting: self newCustomerRecordWithMoreThanFiveFields
		messageText: SupplierImporter invalidNewCustomerRecordErrorDescription
		asserting: [ self assertNoNewCustomerWasImported ]

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

!Environment methodsFor: 'system creation' stamp: 'HAW 6/2/2022 14:58:03'!
createErpSystem

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

!DevelopmentEnvironment methodsFor: 'system creation' stamp: 'HAW 6/2/2022 14:31:36'!
createErpSystem
	
	^TransientErpSystem new! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'DevelopmentEnvironment class' category: '10Pines-C17'!
DevelopmentEnvironment class
	instanceVariableNames: ''!

!DevelopmentEnvironment class methodsFor: 'current' stamp: 'HAW 6/3/2022 09:53:49'!
isCurrent

	^true! !


!classDefinition: #IntegrationEnvironment category: '10Pines-C17'!
Environment subclass: #IntegrationEnvironment
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!IntegrationEnvironment methodsFor: 'system creation' stamp: 'HAW 6/2/2022 14:40:46'!
createErpSystem
	
	^PersistentErpSystem new! !

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

!Party methodsFor: 'identification' stamp: 'HAW 6/1/2022 12:47:58'!
isIdentifiedAs: anIdentificationType number: anIdentificationNumber 
	
	^identificationType = anIdentificationType and: [ identificationNumber = anIdentificationNumber ]! !


!Party methodsFor: 'initialization' stamp: 'HAW 6/1/2022 12:46:19'!
initialize

	super initialize.
	addresses := OrderedCollection new.! !


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
	instanceVariableNames: 'name customers'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!Supplier methodsFor: 'initialization' stamp: 'HAW 6/2/2022 14:19:21'!
initializedNamed: aName identifiedWithType: anIdentificationType number: anIdentificationNumber 
	
	name := aName.
	identificationType := anIdentificationType.
	identificationNumber := anIdentificationNumber.
	
	customers := OrderedCollection new
	! !


!Supplier methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:19:03'!
addCustomer: aCustomer 
	
	customers add: aCustomer ! !

!Supplier methodsFor: 'as yet unclassified' stamp: 'HAW 6/2/2022 14:54:48'!
customerIdentifiedAs: anIdType number: anIdNumber 
	
	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]! !

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


!classDefinition: #PartyImporter category: '10Pines-C17'!
Object subclass: #PartyImporter
	instanceVariableNames: 'readStream importedParty line record system'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!PartyImporter methodsFor: 'initialization' stamp: 'HAW 6/1/2022 19:09:34'!
initializeFrom: aReadStream into: aSystem

	readStream := aReadStream.
	system := aSystem ! !


!PartyImporter methodsFor: 'evaluating' stamp: 'HAW 6/1/2022 19:04:12'!
value

	[ self hasLineToImport ] whileTrue: [
		self createRecord.
		self importRecord ].

	! !


!PartyImporter methodsFor: 'address' stamp: 'HAW 6/1/2022 19:09:55'!
assertPartyWasImported

	^ importedParty ifNil: [ self error: self class canNotImportAddressWithoutPartyErrorDescription ]! !

!PartyImporter methodsFor: 'address' stamp: 'HAW 6/1/2022 19:04:30'!
assertValidAddressRecord

	^ record size ~= 6 ifTrue: [ self error: self class invalidAddressRecordErrorDescription ]! !

!PartyImporter methodsFor: 'address' stamp: 'HAW 6/1/2022 19:10:19'!
importAddress

	| newAddress |

	self assertPartyWasImported.
	self assertValidAddressRecord.

	newAddress := Address new.
	newAddress streetName: record second.
	newAddress streetNumber: record third asNumber .
	newAddress town: record fourth.
	newAddress zipCode: record fifth asNumber .
	newAddress province: record sixth.
	
	importedParty addAddress: newAddress.
! !

!PartyImporter methodsFor: 'address' stamp: 'HAW 6/1/2022 19:04:38'!
isAddressRecord

	^ record first = 'A'! !


!PartyImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:04:46'!
assertRecordNotEmpty

	record isEmpty ifTrue: [ self error: self class invalidRecordTypeErrorDescription ]! !

!PartyImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:04:51'!
createRecord

	^ record := line findTokens: $,! !

!PartyImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:04:55'!
hasLineToImport

	line := readStream nextLine.
	^line notNil! !

!PartyImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:07:00'!
importNotEmptyRecord

	self subclassResponsibility ! !

!PartyImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:06:49'!
importRecord

	self assertRecordNotEmpty.

	self importNotEmptyRecord! !


!PartyImporter methodsFor: 'customer' stamp: 'HAW 6/3/2022 09:48:48'!
assertValidCustomerRecord

	^ record size ~= 5 ifTrue: [ self signalInvalidCustomerRecord ]! !

!PartyImporter methodsFor: 'customer' stamp: 'HAW 6/1/2022 19:27:14'!
createCustomer

	| customer |
	
	self assertValidCustomerRecord.
	
	customer := Customer new.
	customer firstName: record second.
	customer lastName: record third.
	customer identificationType: record fourth.
	customer identificationNumber: record fifth.
	
	^customer ! !

!PartyImporter methodsFor: 'customer' stamp: 'HAW 6/3/2022 09:53:19'!
signalInvalidCustomerRecord

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PartyImporter class' category: '10Pines-C17'!
PartyImporter class
	instanceVariableNames: ''!

!PartyImporter class methodsFor: 'instance creation' stamp: 'HAW 6/1/2022 19:08:55'!
from: aReadStream into: aSystem

	^self new initializeFrom: aReadStream into: aSystem! !


!PartyImporter class methodsFor: 'importing' stamp: 'HAW 6/1/2022 19:09:04'!
valueFrom: aReadStream into: aSystem

	^(self from: aReadStream into: aSystem) value! !


!PartyImporter class methodsFor: 'error messages' stamp: 'HAW 6/1/2022 19:09:20'!
canNotImportAddressWithoutPartyErrorDescription

	^'Cannot import address without customer'! !

!PartyImporter class methodsFor: 'error messages' stamp: 'HAW 6/1/2022 19:03:49'!
invalidAddressRecordErrorDescription

	^'Address record has to have six fields'! !

!PartyImporter class methodsFor: 'error messages' stamp: 'HAW 6/1/2022 19:03:54'!
invalidRecordTypeErrorDescription

	^'Invalid record type'! !


!classDefinition: #CustomerImporter category: '10Pines-C17'!
PartyImporter subclass: #CustomerImporter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 6/1/2022 19:27:08'!
importCustomer

	importedParty := self createCustomer.
	system add: importedParty! !

!CustomerImporter methodsFor: 'customer' stamp: 'HAW 5/22/2022 19:23:55'!
isCustomerRecord

	^ record first = 'C'! !


!CustomerImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:07:16'!
importNotEmptyRecord

	self isCustomerRecord ifTrue: [ ^self importCustomer ].
	self isAddressRecord ifTrue: [ ^self importAddress ].

	self error: self class invalidRecordTypeErrorDescription! !


!CustomerImporter methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:53:03'!
signalInvalidCustomerRecord

	^ self error: self class invalidCustomerRecordErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerImporter class' category: '10Pines-C17'!
CustomerImporter class
	instanceVariableNames: ''!

!CustomerImporter class methodsFor: 'error messages' stamp: 'HAW 5/22/2022 19:53:56'!
invalidCustomerRecordErrorDescription

	^'Invalid Customer record'! !


!classDefinition: #SupplierImporter category: '10Pines-C17'!
PartyImporter subclass: #SupplierImporter
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SupplierImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:12:29'!
assertValidSupplierRecord

	^ record size ~= 4 ifTrue: [ self error: self class invalidSupplierRecordErrorDescription ]! !

!SupplierImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:24:30'!
importNotEmptyRecord
	
	self isSupplierRecord ifTrue: [ ^self importSupplierRecord ].
	self isAddressRecord ifTrue: [ ^self importAddress ].
	self isNewCustomerRecord ifTrue: [ ^self importNewCustomerRecord ].
	
	self error: self class invalidRecordTypeErrorDescription	
! !

!SupplierImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/2/2022 15:34:11'!
importSupplierRecord

	self assertValidSupplierRecord.
	
	importedParty := Supplier named: record second identifiedWithType: record third number: record fourth.
	system add: importedParty! !

!SupplierImporter methodsFor: 'evaluating - private' stamp: 'HAW 6/1/2022 19:11:11'!
isSupplierRecord

	^ record first = 'S'! !


!SupplierImporter methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:27:48'!
importNewCustomerRecord
	
	| customer |
	
	customer := self createCustomer.
	
	importedParty addCustomer: customer.
	system customerSystem add: customer.! !

!SupplierImporter methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 19:24:43'!
isNewCustomerRecord
	
	^record first = 'NC'! !

!SupplierImporter methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:52:35'!
signalInvalidCustomerRecord

	^ self error: self class invalidNewCustomerRecordErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SupplierImporter class' category: '10Pines-C17'!
SupplierImporter class
	instanceVariableNames: ''!

!SupplierImporter class methodsFor: 'as yet unclassified' stamp: 'HAW 6/3/2022 09:47:46'!
invalidNewCustomerRecordErrorDescription
	
	^'Invalid new customer record'! !

!SupplierImporter class methodsFor: 'as yet unclassified' stamp: 'HAW 6/1/2022 10:27:03'!
invalidSupplierRecordErrorDescription
	
	^'Supplier record must have four fields'! !


!classDefinition: #System category: '10Pines-C17'!
Object subclass: #System
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!System methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:41:11'!
start
	
	self subclassResponsibility ! !

!System methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:41:15'!
stop
	
	self subclassResponsibility ! !


!classDefinition: #RootSystem category: '10Pines-C17'!
System subclass: #RootSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!RootSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 15:41:43'!
beginTransaction

	self subclassResponsibility ! !

!RootSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 15:41:47'!
commit

	self subclassResponsibility ! !


!classDefinition: #ErpSystem category: '10Pines-C17'!
RootSystem subclass: #ErpSystem
	instanceVariableNames: 'customerSystem supplierSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!ErpSystem methodsFor: 'subsystems' stamp: 'HAW 6/2/2022 15:13:09'!
customerSystem
	
	^customerSystem! !

!ErpSystem methodsFor: 'subsystems' stamp: 'HAW 6/2/2022 15:13:13'!
supplierSystem
	
	^supplierSystem! !


!ErpSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:13:26'!
start

	customerSystem start.
	supplierSystem start! !

!ErpSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:13:30'!
stop

	customerSystem stop .
	supplierSystem stop! !


!classDefinition: #PersistentErpSystem category: '10Pines-C17'!
ErpSystem subclass: #PersistentErpSystem
	instanceVariableNames: 'session'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!PersistentErpSystem methodsFor: 'session' stamp: 'HAW 6/2/2022 14:50:21'!
session
	
	^session! !


!PersistentErpSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 14:48:09'!
beginTransaction
	
	session beginTransaction ! !

!PersistentErpSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 14:48:32'!
commit
	
	session commit ! !


!PersistentErpSystem methodsFor: 'initialization' stamp: 'HAW 6/2/2022 14:41:40'!
initialize

	customerSystem := PersistentCustomerSystem asSubsystemOf: self.
	supplierSystem := PersistentSupplierSystem asSubsystemOf: self.! !


!PersistentErpSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:42:31'!
start
	
	session := DataBaseSession for: (Array with: Address with: Customer with: Supplier).
	super start! !

!PersistentErpSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:24:49'!
stop
	
	super stop.
	session close.
	! !


!classDefinition: #TransientErpSystem category: '10Pines-C17'!
ErpSystem subclass: #TransientErpSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!TransientErpSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 14:55:43'!
beginTransaction

	! !

!TransientErpSystem methodsFor: 'transactions' stamp: 'HAW 6/2/2022 14:55:55'!
commit

	! !


!TransientErpSystem methodsFor: 'initialization' stamp: 'HAW 6/2/2022 14:33:13'!
initialize

	customerSystem := TransientCustomerSystem asSubsystemOf: self.
	supplierSystem := TransientSupplierSystem asSubsystemOf: self.! !


!classDefinition: #SubSystem category: '10Pines-C17'!
System subclass: #SubSystem
	instanceVariableNames: 'parentSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SubSystem methodsFor: 'initialization' stamp: 'HAW 6/2/2022 15:38:26'!
initializeAsSubsystemOf: aParentSystem 
	
	parentSystem := aParentSystem.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'SubSystem class' category: '10Pines-C17'!
SubSystem class
	instanceVariableNames: ''!

!SubSystem class methodsFor: 'instance creation' stamp: 'HAW 6/2/2022 15:38:35'!
asSubsystemOf: aParentSystem 
	
	^self new initializeAsSubsystemOf: aParentSystem ! !


!classDefinition: #CustomerSystem category: '10Pines-C17'!
SubSystem subclass: #CustomerSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:17:57'!
add: aCustomer

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 14:54:48'!
customerIdentifiedAs: anIdType number: anIdNumber

	self subclassResponsibility ! !

!CustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:18:51'!
numberOfCustomers

	self subclassResponsibility ! !


!classDefinition: #PersistentCustomerSystem category: '10Pines-C17'!
CustomerSystem subclass: #PersistentCustomerSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 14:46:21'!
add: aCustomer

	^self session persist: aCustomer ! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 14:54:48'!
customerIdentifiedAs: anIdType number: anIdNumber

	^(self session
		select: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]
		ofType: Customer) anyOne! !

!PersistentCustomerSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 14:46:41'!
numberOfCustomers

	^(self session selectAllOfType: Customer) size! !


!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 14:44:00'!
start

	! !

!PersistentCustomerSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 14:46:51'!
stop

	! !


!PersistentCustomerSystem methodsFor: 'session' stamp: 'HAW 6/2/2022 14:50:14'!
session
	
	^parentSystem session! !


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


!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:21:32'!
add: aCustomer

	customers add: aCustomer ! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 14:54:48'!
customerIdentifiedAs: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]! !

!TransientCustomerSystem methodsFor: 'customers' stamp: 'HAW 5/22/2022 21:21:43'!
numberOfCustomers

	^customers size! !


!classDefinition: #SupplierSystem category: '10Pines-C17'!
SubSystem subclass: #SupplierSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!SupplierSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 15:30:21'!
customerIdentifiedAs: anIdType number: anIdNumber 
	
	^self customerSystem customerIdentifiedAs: anIdType number: anIdNumber ! !

!SupplierSystem methodsFor: 'customers' stamp: 'HAW 6/2/2022 15:30:25'!
customerSystem
	
	^parentSystem customerSystem ! !


!SupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 15:34:21'!
add: aSupplier

	self subclassResponsibility ! !

!SupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 15:34:28'!
numberOfSuppliers

	self subclassResponsibility ! !

!SupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 15:34:44'!
supplierIdentifiedAs: anIdType number: anIdNumber 

	self subclassResponsibility ! !


!classDefinition: #PersistentSupplierSystem category: '10Pines-C17'!
SupplierSystem subclass: #PersistentSupplierSystem
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!


!PersistentSupplierSystem methodsFor: 'session' stamp: 'HAW 6/2/2022 14:51:05'!
session
	
	^parentSystem session! !


!PersistentSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 15:34:11'!
add: aSupplier 
	
	self session persist: aSupplier ! !

!PersistentSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 14:51:40'!
numberOfSuppliers
	
	^(self session selectAllOfType: Supplier) size  ! !

!PersistentSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 14:52:44'!
supplierIdentifiedAs: anIdType number: anIdNumber 
	
	^(self session select: [ :aSupplier | aSupplier isIdentifiedAs: anIdType number: anIdNumber ] ofType: Supplier) anyOne ! !


!PersistentSupplierSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:31:50'!
start! !

!PersistentSupplierSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 15:31:52'!
stop! !


!classDefinition: #TransientSupplierSystem category: '10Pines-C17'!
SupplierSystem subclass: #TransientSupplierSystem
	instanceVariableNames: 'suppliers'
	classVariableNames: ''
	poolDictionaries: ''
	category: '10Pines-C17'!

!TransientSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/2/2022 15:34:11'!
add: aSupplier

	suppliers add: aSupplier ! !

!TransientSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/1/2022 10:00:25'!
numberOfSuppliers
	
	^suppliers size! !

!TransientSupplierSystem methodsFor: 'suppliers' stamp: 'HAW 6/1/2022 09:45:40'!
supplierIdentifiedAs: idType number: idNumber 
	
	^suppliers detect: [ :aSupplier | aSupplier isIdentifiedAs: idType number: idNumber ]! !


!TransientSupplierSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 14:34:37'!
start
	
	suppliers := OrderedCollection new! !

!TransientSupplierSystem methodsFor: 'system lifecycle' stamp: 'HAW 6/2/2022 14:34:59'!
stop
	
	suppliers := nil! !
