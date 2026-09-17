| cat |
cat := 'CustomerImporter-Recu-1er-Parcial'.

"--- ValidatedValue ---"
Object subclass: #ValidatedValue instanceVariableNames: 'representation' classVariableNames: '' poolDictionaries: '' category: cat.
ValidatedValue compile: 'initializeFrom: aString

	representation := aString' classified: 'initialization'.
ValidatedValue class compile: 'from: aString

	(self isValid: aString) ifFalse: [ ^self error: self invalidErrorDescription ].
	^self new initializeFrom: aString' classified: 'instance creation'.
ValidatedValue class compile: 'isValid: aString

	self subclassResponsibility' classified: 'validation'.
ValidatedValue class compile: 'invalidErrorDescription

	self subclassResponsibility' classified: 'error messages'.
ValidatedValue class compile: 'isAllDigits: aString

	^aString allSatisfy: [ :aChar | aChar isDigit ]' classified: 'validation'.

"--- Identification ---"
ValidatedValue subclass: #Identification instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
Identification class compile: 'type: anIdType number: anIdNumber

	^(self subclassFor: anIdType) from: anIdNumber' classified: 'instance creation'.
Identification class compile: 'subclassFor: anIdType

	^self subclasses
		detect: [ :anIdentificationClass | anIdentificationClass isFor: anIdType ]
		ifNone: [ self error: self invalidTypeErrorDescription ]' classified: 'instance creation'.
Identification class compile: 'isFor: anIdType

	^self typeCode = anIdType' classified: 'type'.
Identification class compile: 'typeCode

	self subclassResponsibility' classified: 'type'.
Identification class compile: 'invalidTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.
Identification compile: 'type

	^self class typeCode' classified: 'accessing'.
Identification compile: 'number

	^representation' classified: 'accessing'.
Identification compile: 'isDNI

	^false' classified: 'testing'.
Identification compile: 'isCUIT

	^false' classified: 'testing'.
Identification compile: 'dniNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
Identification compile: 'cuitNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
Identification compile: 'isType: anIdType number: anIdNumber

	^self type = anIdType and: [ self number = anIdNumber ]' classified: 'testing'.

Identification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
DNI class compile: 'typeCode

	^''D''' classified: 'type'.
DNI class compile: 'invalidErrorDescription

	^''Invalid DNI number''' classified: 'error messages'.
DNI class compile: 'isValid: aNumber

	^(self isAllDigits: aNumber) and: [ aNumber asNumber between: 1 and: 99999999 ]' classified: 'validation'.
DNI compile: 'isDNI

	^true' classified: 'testing'.
DNI compile: 'dniNumberIfNone: aNoneBlock

	^representation asNumber' classified: 'accessing'.

Identification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
CUIT class compile: 'typeCode

	^''C''' classified: 'type'.
CUIT class compile: 'invalidErrorDescription

	^''Invalid CUIT number''' classified: 'error messages'.
CUIT class compile: 'validHeaders

	^#(''20'' ''23'' ''24'' ''25'' ''26'' ''27'' ''30'' ''33'' ''34'')' classified: 'validation'.
CUIT class compile: 'isValid: aNumber

	"''23-25666777-9'' size 13"
	^(aNumber size between: 12 and: 13)
		and: [ aNumber third = $- and: [ aNumber penultimate = $-
		and: [ (self validHeaders includes: (aNumber first: 2))
		and: [ aNumber last isDigit
		and: [ self isAllDigits: (aNumber copyFrom: 4 to: aNumber size - 2) ]]]]]' classified: 'validation'.
CUIT compile: 'isCUIT

	^true' classified: 'testing'.
CUIT compile: 'cuitNumberIfNone: aNoneBlock

	^representation' classified: 'accessing'.

"--- ZipCode ---"
ValidatedValue subclass: #ZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode class compile: 'for: aZipCode

	^(self subclassFor: aZipCode) from: aZipCode' classified: 'instance creation'.
ZipCode class compile: 'subclassFor: aZipCode

	^self subclasses
		detect: [ :aZipCodeClass | aZipCodeClass canHandle: aZipCode ]
		ifNone: [ self error: self invalidTypeErrorDescription ]' classified: 'instance creation'.
ZipCode class compile: 'canHandle: aZipCode

	self subclassResponsibility' classified: 'type'.
ZipCode class compile: 'invalidTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.
ZipCode compile: 'value

	self subclassResponsibility' classified: 'accessing'.
ZipCode compile: 'isOld

	^false' classified: 'testing'.
ZipCode compile: 'isNew

	^false' classified: 'testing'.
ZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
ZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
OldZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isDigit' classified: 'type'.
OldZipCode class compile: 'invalidErrorDescription

	^''Invalid old zipcode''' classified: 'error messages'.
OldZipCode class compile: 'isValid: aZipCode

	^(self isAllDigits: aZipCode) and: [ aZipCode asNumber between: 1000 and: 9999 ]' classified: 'validation'.
OldZipCode compile: 'value

	^representation asNumber' classified: 'accessing'.
OldZipCode compile: 'isOld

	^true' classified: 'testing'.
OldZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^self value' classified: 'accessing'.

ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
NewZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isLetter' classified: 'type'.
NewZipCode class compile: 'invalidErrorDescription

	^''Invalid new zipcode''' classified: 'error messages'.
NewZipCode class compile: 'isValid: aZipCode

	"The four digits after the province letter are an old zip code, e.g. B1636BBE"
	^aZipCode size = 8
		and: [ (OldZipCode isValid: (aZipCode copyFrom: 2 to: 5))
		and: [ (aZipCode last: 3) allSatisfy: [ :aChar | aChar isLetter ]]]' classified: 'validation'.
NewZipCode compile: 'value

	^representation' classified: 'accessing'.
NewZipCode compile: 'isNew

	^true' classified: 'testing'.
NewZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^self value' classified: 'accessing'.

"--- Address ---"
Address compile: 'zipCode

	^zipCode value' classified: 'zip code'.
Address compile: 'hasOldZipCode

	^zipCode isOld' classified: 'zip code'.
Address compile: 'hasNewZipCode

	^zipCode isNew' classified: 'zip code'.
Address compile: 'oldZipCodeIfNone: aNoneBlock

	^zipCode oldZipCodeIfNone: aNoneBlock' classified: 'zip code'.
Address compile: 'newZipCodeIfNone: aNoneBlock

	^zipCode newZipCodeIfNone: aNoneBlock' classified: 'zip code'.

"--- Customer ---"
#(#identificationType: #identificationNumber:) do: [ :sel | Customer removeSelector: sel ].
Customer compile: 'identificationType

	^nil' classified: 'identification'.
Customer compile: 'identificationNumber

	^nil' classified: 'identification'.
#(#cuitNumberIfNone: #dniNumberIfNone: #hasCUITAsIdentification #hasDNIAsIdentification) do: [ :sel | Customer removeSelector: sel ].
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: cat.
Customer compile: 'identification: anIdentification

	identification := anIdentification' classified: 'identification'.
Customer compile: 'identificationType

	^identification type' classified: 'identification'.
Customer compile: 'identificationNumber

	^identification number' classified: 'identification'.
Customer compile: 'hasDNIAsIdentification

	^identification isDNI' classified: 'identification'.
Customer compile: 'hasCUITAsIdentification

	^identification isCUIT' classified: 'identification'.
Customer compile: 'dniNumberIfNone: aNoneBlock

	^identification dniNumberIfNone: aNoneBlock' classified: 'identification'.
Customer compile: 'cuitNumberIfNone: aNoneBlock

	^identification cuitNumberIfNone: aNoneBlock' classified: 'identification'.
Customer compile: 'isIdentifiedAs: anIdType number: anIdNumber

	^identification isType: anIdType number: anIdNumber' classified: 'identification'.

"--- Customer systems ---"
TransientCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]' classified: 'customers'.
PersistentCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]
		ofType: Customer) anyOne' classified: 'customers'.

"--- CustomerImporter ---"
CustomerImporter compile: 'importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identification: (Identification type: record fourth number: record fifth).

	system add: newCustomer' classified: 'customer'.
CustomerImporter compile: 'importAddress

	| newAddress |

	self assertCustomerWasImported.
	self assertValidAddressRecord.

	newAddress := Address new.
	newAddress streetName: record second.
	newAddress streetNumber: record third asNumber.
	newAddress town: record fourth.
	newAddress zipCode: (ZipCode for: record fifth).
	newAddress province: record sixth.

	newCustomer addAddress: newAddress' classified: 'address'.

ImportTest category: 'CustomerImporter-Recu-1er-Parcial-Tests'.
(Smalltalk allClasses select: [:c | (c category ifNil: ['']) beginsWith: cat]) collect: [:c | c name, ' ', c category]
