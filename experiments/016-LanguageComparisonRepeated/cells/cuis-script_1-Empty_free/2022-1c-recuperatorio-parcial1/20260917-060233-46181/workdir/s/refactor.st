| cat |
cat := 'CustomerImporter-Recu-1er-Parcial'.

"String extensions to remove repeated allSatisfy: blocks"
String compile: 'isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]' classified: '*', cat.
String compile: 'isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]' classified: '*', cat.

"===== Identification hierarchy ====="
Object subclass: #Identification instanceVariableNames: 'number' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

Identification class compile: 'type: anIdentificationType number: anIdentificationNumber

	^(self subclasses
		detect: [ :anIdentificationClass | anIdentificationClass type = anIdentificationType ]
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ])
			number: anIdentificationNumber' classified: 'instance creation'.
Identification class compile: 'number: anIdentificationNumber

	self assertIsValidNumber: anIdentificationNumber.
	^self new initializeNumber: anIdentificationNumber' classified: 'instance creation'.
Identification class compile: 'assertIsValidNumber: anIdentificationNumber

	(self isValidNumber: anIdentificationNumber) ifFalse: [ self error: self invalidNumberErrorDescription ]' classified: 'assertions'.
Identification class compile: 'isValidNumber: anIdentificationNumber

	self subclassResponsibility' classified: 'assertions'.
Identification class compile: 'type

	self subclassResponsibility' classified: 'type'.
Identification class compile: 'invalidNumberErrorDescription

	self subclassResponsibility' classified: 'error messages'.
Identification class compile: 'invalidIdentificationTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.

Identification compile: 'initializeNumber: anIdentificationNumber

	number := anIdentificationNumber' classified: 'initialization'.
Identification compile: 'number

	^number' classified: 'accessing'.
Identification compile: 'type

	^self class type' classified: 'accessing'.
Identification compile: 'isDNI

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'isCUIT

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'dniNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
Identification compile: 'cuitNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.

DNI class compile: 'type

	^''D''' classified: 'type'.
DNI class compile: 'invalidNumberErrorDescription

	^''Invalid DNI number''' classified: 'error messages'.
DNI class compile: 'isValidNumber: aDNINumber

	^aDNINumber isAllDigits and: [ (Integer readFrom: aDNINumber readStream) between: 1 and: 99999999 ]' classified: 'assertions'.
DNI compile: 'isDNI

	^true' classified: 'testing'.
DNI compile: 'isCUIT

	^false' classified: 'testing'.
DNI compile: 'dniNumberIfNone: aNoneBlock

	^Integer readFrom: number readStream' classified: 'accessing'.
DNI compile: 'cuitNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

CUIT class compile: 'type

	^''C''' classified: 'type'.
CUIT class compile: 'invalidNumberErrorDescription

	^''Invalid CUIT number''' classified: 'error messages'.
CUIT class compile: 'validHeaders

	^#(''20'' ''23'' ''24'' ''25'' ''26'' ''27'' ''30'' ''33'' ''34'')' classified: 'assertions'.
CUIT class compile: 'isValidNumber: aCUITNumber

	"''23-25666777-9'' size 13"
	^(aCUITNumber size between: 12 and: 13)
		and: [ aCUITNumber third = $- 
		and: [ aCUITNumber penultimate = $-
		and: [ (self validHeaders includes: (aCUITNumber first: 2))
		and: [ aCUITNumber last isDigit
		and: [ (aCUITNumber copyFrom: 4 to: aCUITNumber size - 2) isAllDigits ]]]]]' classified: 'assertions'.
CUIT compile: 'isDNI

	^false' classified: 'testing'.
CUIT compile: 'isCUIT

	^true' classified: 'testing'.
CUIT compile: 'dniNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
CUIT compile: 'cuitNumberIfNone: aNoneBlock

	^number' classified: 'accessing'.

"===== ZipCode hierarchy ====="
Object subclass: #ZipCode instanceVariableNames: 'value' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

ZipCode class compile: 'from: aZipCodeString

	^(self subclasses
		detect: [ :aZipCodeClass | aZipCodeClass canHandle: aZipCodeString ]
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ])
			fromValid: aZipCodeString' classified: 'instance creation'.
ZipCode class compile: 'fromValid: aZipCodeString

	(self isValid: aZipCodeString) ifFalse: [ self error: self invalidZipCodeErrorDescription ].
	^self new initializeValue: (self valueFrom: aZipCodeString)' classified: 'instance creation'.
ZipCode class compile: 'canHandle: aZipCodeString

	self subclassResponsibility' classified: 'type'.
ZipCode class compile: 'isValid: aZipCodeString

	self subclassResponsibility' classified: 'assertions'.
ZipCode class compile: 'valueFrom: aZipCodeString

	self subclassResponsibility' classified: 'instance creation'.
ZipCode class compile: 'invalidZipCodeErrorDescription

	self subclassResponsibility' classified: 'error messages'.
ZipCode class compile: 'invalidZipCodeTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.

ZipCode compile: 'initializeValue: aValue

	value := aValue' classified: 'initialization'.
ZipCode compile: 'value

	^value' classified: 'accessing'.
ZipCode compile: 'isOld

	self subclassResponsibility' classified: 'testing'.
ZipCode compile: 'isNew

	self subclassResponsibility' classified: 'testing'.
ZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
ZipCode compile: 'newZipCodeIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.

OldZipCode class compile: 'canHandle: aZipCodeString

	^aZipCodeString first isDigit' classified: 'type'.
OldZipCode class compile: 'isValid: aZipCodeString

	^aZipCodeString isAllDigits and: [ aZipCodeString asNumber between: 1000 and: 9999 ]' classified: 'assertions'.
OldZipCode class compile: 'valueFrom: aZipCodeString

	^aZipCodeString asNumber' classified: 'instance creation'.
OldZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid old zipcode''' classified: 'error messages'.
OldZipCode compile: 'isOld

	^true' classified: 'testing'.
OldZipCode compile: 'isNew

	^false' classified: 'testing'.
OldZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^value' classified: 'accessing'.
OldZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

NewZipCode class compile: 'canHandle: aZipCodeString

	^aZipCodeString first isLetter' classified: 'type'.
NewZipCode class compile: 'isValid: aZipCodeString

	| oldZipCodePart |
	
	aZipCodeString size = 8 ifFalse: [ ^false ].
	oldZipCodePart := aZipCodeString copyFrom: 2 to: 5.
	
	^oldZipCodePart isAllDigits 
		and: [ oldZipCodePart asNumber > 999
		and: [ (aZipCodeString last: 3) isAllLetters ]]' classified: 'assertions'.
NewZipCode class compile: 'valueFrom: aZipCodeString

	^aZipCodeString' classified: 'instance creation'.
NewZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid new zipcode''' classified: 'error messages'.
NewZipCode compile: 'isOld

	^false' classified: 'testing'.
NewZipCode compile: 'isNew

	^true' classified: 'testing'.
NewZipCode compile: 'oldZipCodeIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
NewZipCode compile: 'newZipCodeIfNone: aNoneBlock

	^value' classified: 'accessing'.

"===== Customer ====="
#(#identificationType: #identificationNumber:) do: [ :s | Customer removeSelector: s ].
Customer compile: 'identification: anIdentification

	identification := anIdentification' classified: 'identification'.
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: cat.
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

"===== Address ====="
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

"===== CustomerImporter ====="
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
	newAddress streetNumber: record third asNumber .
	newAddress town: record fourth.
	newAddress zipCode: (ZipCode from: record fifth).
	newAddress province: record sixth.
	
	newCustomer addAddress: newAddress' classified: 'address'.

ImportTest category: cat, '-Tests'.
nil
