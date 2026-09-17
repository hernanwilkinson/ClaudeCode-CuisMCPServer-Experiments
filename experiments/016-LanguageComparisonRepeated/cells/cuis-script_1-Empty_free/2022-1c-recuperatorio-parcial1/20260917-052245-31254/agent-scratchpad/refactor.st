| cat |
cat := 'CustomerImporter-Recu-1er-Parcial'.

"--- String helpers shared by all validations ---"
String compile: 'isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]' classified: '*', cat.
String compile: 'isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]' classified: '*', cat.

"--- Identification hierarchy ---"
Object subclass: #Identification instanceVariableNames: 'number' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

Identification class compile: 'type: aType number: aNumber

	^(self subclassForType: aType) number: aNumber' classified: 'instance creation'.
Identification class compile: 'number: aNumber

	(self isValidNumber: aNumber) ifFalse: [ self error: self invalidNumberErrorDescription ].
	^self new initializeNumber: aNumber' classified: 'instance creation'.
Identification class compile: 'subclassForType: aType

	^self subclasses 
		detect: [ :anIdentificationClass | anIdentificationClass typeCode = aType ] 
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ]' classified: 'instance creation - private'.
Identification class compile: 'isValidNumber: aNumber

	self subclassResponsibility' classified: 'validation'.
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
Identification compile: 'type

	^self class typeCode' classified: 'accessing'.
Identification compile: 'isDNI

	^false' classified: 'testing'.
Identification compile: 'isCUIT

	^false' classified: 'testing'.
Identification compile: 'dniNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
Identification compile: 'cuitNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

DNI class compile: 'typeCode

	^''D''' classified: 'type'.
DNI class compile: 'invalidNumberErrorDescription

	^''Invalid DNI number''' classified: 'error messages'.
DNI class compile: 'isValidNumber: aNumber

	^aNumber isAllDigits and: [ aNumber asNumber between: 1 and: 99999999 ]' classified: 'validation'.
DNI compile: 'isDNI

	^true' classified: 'testing'.
DNI compile: 'dniNumberIfNone: aNoneBlock

	^number asNumber' classified: 'accessing'.

CUIT class compile: 'typeCode

	^''C''' classified: 'type'.
CUIT class compile: 'invalidNumberErrorDescription

	^''Invalid CUIT number''' classified: 'error messages'.
CUIT class compile: 'validHeaders

	^#(''20'' ''23'' ''24'' ''25'' ''26'' ''27'' ''30'' ''33'' ''34'')' classified: 'validation'.
CUIT class compile: 'isValidNumber: aNumber

	"''23-25666777-9'' size 13"
	^(aNumber size between: 12 and: 13)
		and: [ aNumber third = $- 
		and: [ aNumber penultimate = $- 
		and: [ (self validHeaders includes: (aNumber first: 2))
		and: [ aNumber last isDigit
		and: [ (aNumber copyFrom: 4 to: aNumber size - 2) isAllDigits ]]]]]' classified: 'validation'.
CUIT compile: 'isCUIT

	^true' classified: 'testing'.
CUIT compile: 'cuitNumberIfNone: aNoneBlock

	^number' classified: 'accessing'.

"--- ZipCode hierarchy ---"
Object subclass: #ZipCode instanceVariableNames: 'value' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

ZipCode class compile: 'from: aZipCode

	^(self subclassFor: aZipCode) validFrom: aZipCode' classified: 'instance creation'.
ZipCode class compile: 'validFrom: aZipCode

	(self isValid: aZipCode) ifFalse: [ self error: self invalidZipCodeErrorDescription ].
	^self new initializeValue: (self valueFrom: aZipCode)' classified: 'instance creation'.
ZipCode class compile: 'subclassFor: aZipCode

	^self subclasses 
		detect: [ :aZipCodeClass | aZipCodeClass canHandle: aZipCode ] 
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ]' classified: 'instance creation - private'.
ZipCode class compile: 'canHandle: aZipCode

	self subclassResponsibility' classified: 'instance creation - private'.
ZipCode class compile: 'valueFrom: aZipCode

	self subclassResponsibility' classified: 'instance creation - private'.
ZipCode class compile: 'isValid: aZipCode

	self subclassResponsibility' classified: 'validation'.
ZipCode class compile: 'invalidZipCodeErrorDescription

	self subclassResponsibility' classified: 'error messages'.
ZipCode class compile: 'invalidZipCodeTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.

ZipCode compile: 'initializeValue: aValue

	value := aValue' classified: 'initialization'.
ZipCode compile: 'value

	^value' classified: 'accessing'.
ZipCode compile: 'isOld

	^false' classified: 'testing'.
ZipCode compile: 'isNew

	^false' classified: 'testing'.
ZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
ZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

OldZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isDigit' classified: 'instance creation - private'.
OldZipCode class compile: 'valueFrom: aZipCode

	^aZipCode asNumber' classified: 'instance creation - private'.
OldZipCode class compile: 'isValid: aZipCode

	^aZipCode isAllDigits and: [ aZipCode asNumber between: 1000 and: 9999 ]' classified: 'validation'.
OldZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid old zipcode''' classified: 'error messages'.
OldZipCode compile: 'isOld

	^true' classified: 'testing'.
OldZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^value' classified: 'accessing'.

NewZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isLetter' classified: 'instance creation - private'.
NewZipCode class compile: 'valueFrom: aZipCode

	^aZipCode' classified: 'instance creation - private'.
NewZipCode class compile: 'isValid: aZipCode

	| oldZipCodePart |
	
	aZipCode size = 8 ifFalse: [ ^false ].
	oldZipCodePart := aZipCode copyFrom: 2 to: 5.
	^oldZipCodePart isAllDigits 
		and: [ oldZipCodePart asNumber > 999 
		and: [ (aZipCode last: 3) isAllLetters ]]' classified: 'validation'.
NewZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid new zipcode''' classified: 'error messages'.
NewZipCode compile: 'isNew

	^true' classified: 'testing'.
NewZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^value' classified: 'accessing'.

"--- Customer ---"
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: cat.
#(identificationType: identificationNumber:) do: [ :s | Customer removeSelector: s ].
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
Address organization renameCategory: #twon to: #town.

"--- Importer ---"
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
	newAddress zipCode: (ZipCode from: record fifth).
	newAddress province: record sixth.

	newCustomer addAddress: newAddress' classified: 'address'.

"Tests belong in the tests category"
ImportTest category: cat, '-Tests'.
'ok'
