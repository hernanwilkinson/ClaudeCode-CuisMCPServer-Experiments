String compile: 'isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]' classified: '*CustomerImporter-Recu-1er-Parcial'.
String compile: 'isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]' classified: '*CustomerImporter-Recu-1er-Parcial'.
Object subclass: #Identification instanceVariableNames: 'number' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
Identification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
Identification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
Identification class compile: 'typeCode: aTypeCode number: aNumber

	^(self subclassForTypeCode: aTypeCode) number: aNumber' classified: 'instance creation'.
Identification class compile: 'number: aNumber

	self assertIsValid: aNumber.
	^self new initializeNumber: aNumber' classified: 'instance creation'.
Identification class compile: 'subclassForTypeCode: aTypeCode

	^self subclasses
		detect: [ :anIdentificationClass | anIdentificationClass typeCode = aTypeCode ]
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ]' classified: 'instance creation - private'.
Identification class compile: 'assertIsValid: aNumber

	(self isValid: aNumber) ifFalse: [ self error: self invalidNumberErrorDescription ]' classified: 'assertions'.
Identification class compile: 'isValid: aNumber

	self subclassResponsibility' classified: 'assertions'.
Identification class compile: 'typeCode

	self subclassResponsibility' classified: 'type'.
Identification class compile: 'invalidNumberErrorDescription

	self subclassResponsibility' classified: 'error messages'.
Identification class compile: 'invalidIdentificationTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.
Identification compile: 'initializeNumber: aNumber

	number := aNumber' classified: 'initialization'.
Identification compile: 'number

	^number' classified: 'accessing'.
Identification compile: 'typeCode

	^self class typeCode' classified: 'accessing'.
Identification compile: 'isOfType: aTypeCode number: aNumber

	^self typeCode = aTypeCode and: [ number = aNumber ]' classified: 'testing'.
Identification compile: 'isDNI

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'isCUIT

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'dniNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
Identification compile: 'cuitNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
DNI class compile: 'typeCode

	^''D''' classified: 'type'.
DNI class compile: 'isValid: aNumber

	^aNumber isAllDigits and: [ aNumber asNumber between: 1 and: 99999999 ]' classified: 'assertions'.
DNI class compile: 'invalidNumberErrorDescription

	^''Invalid DNI number''' classified: 'error messages'.
DNI compile: 'isDNI

	^true' classified: 'testing'.
DNI compile: 'isCUIT

	^false' classified: 'testing'.
DNI compile: 'dniNumberIfNone: aNoneBlock

	^number asNumber' classified: 'accessing'.
DNI compile: 'cuitNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
CUIT class compile: 'typeCode

	^''C''' classified: 'type'.
CUIT class compile: 'isValid: aNumber
	"''23-25666777-9'' size 13 "

	^(aNumber size between: 12 and: 13)
		and: [ (aNumber third = $- and: [ aNumber penultimate = $- ])
		and: [ (self validPrefixes includes: (aNumber first: 2))
		and: [ aNumber last isDigit
		and: [ (aNumber copyFrom: 4 to: aNumber size - 2) isAllDigits ]]]]' classified: 'assertions'.
CUIT class compile: 'validPrefixes

	^#(''20'' ''23'' ''24'' ''25'' ''26'' ''27'' ''30'' ''33'' ''34'')' classified: 'assertions'.
CUIT class compile: 'invalidNumberErrorDescription

	^''Invalid CUIT number''' classified: 'error messages'.
CUIT compile: 'isDNI

	^false' classified: 'testing'.
CUIT compile: 'isCUIT

	^true' classified: 'testing'.
CUIT compile: 'dniNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
CUIT compile: 'cuitNumberIfNone: aNoneBlock

	^number' classified: 'accessing'.
Object subclass: #ZipCode instanceVariableNames: 'code' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
ZipCode class compile: 'from: aZipCode

	^(self subclassFor: aZipCode) code: aZipCode' classified: 'instance creation'.
ZipCode class compile: 'code: aZipCode

	self assertIsValid: aZipCode.
	^self new initializeCode: aZipCode' classified: 'instance creation'.
ZipCode class compile: 'subclassFor: aZipCode

	^self subclasses
		detect: [ :aZipCodeClass | aZipCodeClass canRepresent: aZipCode ]
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ]' classified: 'instance creation - private'.
ZipCode class compile: 'assertIsValid: aZipCode

	(self isValid: aZipCode) ifFalse: [ self error: self invalidZipCodeErrorDescription ]' classified: 'assertions'.
ZipCode class compile: 'isValid: aZipCode

	self subclassResponsibility' classified: 'assertions'.
ZipCode class compile: 'canRepresent: aZipCode

	self subclassResponsibility' classified: 'type'.
ZipCode class compile: 'invalidZipCodeErrorDescription

	self subclassResponsibility' classified: 'error messages'.
ZipCode class compile: 'invalidZipCodeTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.
ZipCode compile: 'initializeCode: aZipCode

	code := aZipCode' classified: 'initialization'.
ZipCode compile: 'value

	self subclassResponsibility' classified: 'accessing'.
ZipCode compile: 'isOld

	self subclassResponsibility' classified: 'testing'.
ZipCode compile: 'isNew

	self subclassResponsibility' classified: 'testing'.
ZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
ZipCode compile: 'newZipCodeIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
OldZipCode class compile: 'canRepresent: aZipCode

	^aZipCode first isDigit' classified: 'type'.
OldZipCode class compile: 'isValid: aZipCode

	^aZipCode isAllDigits and: [ aZipCode asNumber between: 1000 and: 9999 ]' classified: 'assertions'.
OldZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid old zipcode''' classified: 'error messages'.
OldZipCode compile: 'value

	^code asNumber' classified: 'accessing'.
OldZipCode compile: 'isOld

	^true' classified: 'testing'.
OldZipCode compile: 'isNew

	^false' classified: 'testing'.
OldZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^self value' classified: 'accessing'.
OldZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
NewZipCode class compile: 'canRepresent: aZipCode

	^aZipCode first isLetter' classified: 'type'.
NewZipCode class compile: 'isValid: aZipCode
	"The four digits after the first letter are an old zip code, e.g. B1636BBE"

	^aZipCode size = 8
		and: [ (OldZipCode isValid: (aZipCode copyFrom: 2 to: 5))
		and: [ (aZipCode last: 3) isAllLetters ]]' classified: 'assertions'.
NewZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid new zipcode''' classified: 'error messages'.
NewZipCode compile: 'value

	^code' classified: 'accessing'.
NewZipCode compile: 'isOld

	^false' classified: 'testing'.
NewZipCode compile: 'isNew

	^true' classified: 'testing'.
NewZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
NewZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^self value' classified: 'accessing'.
#(#identificationType: #identificationNumber:) do: [ :aSelector | Customer removeSelector: aSelector ].
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: 'CustomerImporter-Recu-1er-Parcial'.
Customer compile: 'identification: anIdentification

	identification := anIdentification' classified: 'identification'.
Customer compile: 'identificationType

	^identification typeCode' classified: 'identification'.
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

	^identification isOfType: anIdType number: anIdNumber' classified: 'identification'.
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
CustomerImporter compile: 'importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identification: (Identification typeCode: record fourth number: record fifth).

	system add: newCustomer' classified: 'customer'.
CustomerImporter compile: 'importAddress

	| newAddress |

	self assertCustomerWasImported.
	self assertValidAddressRecord.

	newAddress := Address new.
	newAddress streetName: record second.
	newAddress streetNumber: record third asNumber.
	newAddress town: record fourth.
	newAddress zipCode: (ZipCode from: record fifth).
	newAddress province: record sixth.

	newCustomer addAddress: newAddress' classified: 'address'.
TransientCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]' classified: 'customers'.
PersistentCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]
		ofType: Customer) anyOne' classified: 'customers'.
SystemOrganization classify: #ImportTest under: 'CustomerImporter-Recu-1er-Parcial-Tests'.
'done'
