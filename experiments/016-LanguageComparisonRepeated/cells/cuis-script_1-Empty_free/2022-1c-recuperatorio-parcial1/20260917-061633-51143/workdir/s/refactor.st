| cat |
cat := 'CustomerImporter-Recu-1er-Parcial'.

SystemOrganization classify: #ImportTest under: 'CustomerImporter-Recu-1er-Parcial-Tests'.

"String helpers"
String compile: 'isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]' classified: '*', cat.
String compile: 'isAllLetters

	^self allSatisfy: [ :aCharacter | aCharacter isLetter ]' classified: '*', cat.

"Identification hierarchy"
Object subclass: #Identification instanceVariableNames: 'number' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
Identification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

Identification class compile: 'for: aTypeCode number: aNumber

	^(self subclassFor: aTypeCode) newFor: aNumber' classified: 'instance creation'.
Identification class compile: 'subclassFor: aTypeCode

	^self subclasses
		detect: [ :anIdentificationClass | anIdentificationClass typeCode = aTypeCode ]
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ]' classified: 'instance creation - private'.
Identification class compile: 'newFor: aNumber

	self assertIsValid: aNumber.
	^self new initializeNumber: aNumber' classified: 'instance creation - private'.
Identification class compile: 'assertIsValid: aNumber

	(self isValid: aNumber) ifFalse: [ self error: self invalidNumberErrorDescription ]' classified: 'assertions'.
Identification class compile: 'isValid: aNumber

	self subclassResponsibility' classified: 'assertions'.
Identification class compile: 'typeCode

	self subclassResponsibility' classified: 'type code'.
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
Identification compile: 'isDNI

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'isCUIT

	self subclassResponsibility' classified: 'testing'.
Identification compile: 'dniNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
Identification compile: 'cuitNumberIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.

DNI class compile: 'typeCode

	^''D''' classified: 'type code'.
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

	^''C''' classified: 'type code'.
CUIT class compile: 'validHeaders

	^#(''20'' ''23'' ''24'' ''25'' ''26'' ''27'' ''30'' ''33'' ''34'')' classified: 'assertions'.
CUIT class compile: 'isValid: aNumber

	"''23-25666777-9'' size 13"
	^(aNumber size between: 12 and: 13)
		and: [ aNumber third = $-
		and: [ aNumber penultimate = $-
		and: [ (self validHeaders includes: (aNumber first: 2))
		and: [ aNumber last isDigit
		and: [ (aNumber copyFrom: 4 to: aNumber size - 2) isAllDigits ]]]]]' classified: 'assertions'.
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

"ZipCode hierarchy"
Object subclass: #ZipCode instanceVariableNames: 'value' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

ZipCode class compile: 'for: aZipCode

	^(self subclassFor: aZipCode) newFor: aZipCode' classified: 'instance creation'.
ZipCode class compile: 'subclassFor: aZipCode

	^self subclasses
		detect: [ :aZipCodeClass | aZipCodeClass canHandle: aZipCode ]
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ]' classified: 'instance creation - private'.
ZipCode class compile: 'newFor: aZipCode

	self assertIsValid: aZipCode.
	^self new initializeValue: (self valueOf: aZipCode)' classified: 'instance creation - private'.
ZipCode class compile: 'assertIsValid: aZipCode

	(self isValid: aZipCode) ifFalse: [ self error: self invalidZipCodeErrorDescription ]' classified: 'assertions'.
ZipCode class compile: 'isValid: aZipCode

	self subclassResponsibility' classified: 'assertions'.
ZipCode class compile: 'canHandle: aZipCode

	self subclassResponsibility' classified: 'instance creation - private'.
ZipCode class compile: 'valueOf: aZipCode

	self subclassResponsibility' classified: 'instance creation - private'.
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
ZipCode compile: 'oldValueIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.
ZipCode compile: 'newValueIfNone: aNoneBlock

	self subclassResponsibility' classified: 'accessing'.

OldZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isDigit' classified: 'instance creation - private'.
OldZipCode class compile: 'isValid: aZipCode

	^aZipCode isAllDigits and: [ aZipCode asNumber between: 1000 and: 9999 ]' classified: 'assertions'.
OldZipCode class compile: 'valueOf: aZipCode

	^aZipCode asNumber' classified: 'instance creation - private'.
OldZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid old zipcode''' classified: 'error messages'.
OldZipCode compile: 'isOld

	^true' classified: 'testing'.
OldZipCode compile: 'isNew

	^false' classified: 'testing'.
OldZipCode compile: 'oldValueIfNone: aNoneBlock

	^value' classified: 'accessing'.
OldZipCode compile: 'newValueIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

NewZipCode class compile: 'canHandle: aZipCode

	^aZipCode first isLetter' classified: 'instance creation - private'.
NewZipCode class compile: 'isValid: aZipCode

	| oldZipCodePart |

	aZipCode size = 8 ifFalse: [ ^false ].
	oldZipCodePart := aZipCode copyFrom: 2 to: 5.
	^oldZipCodePart isAllDigits
		and: [ oldZipCodePart asNumber > 999
		and: [ (aZipCode last: 3) isAllLetters ]]' classified: 'assertions'.
NewZipCode class compile: 'valueOf: aZipCode

	^aZipCode' classified: 'instance creation - private'.
NewZipCode class compile: 'invalidZipCodeErrorDescription

	^''Invalid new zipcode''' classified: 'error messages'.
NewZipCode compile: 'isOld

	^false' classified: 'testing'.
NewZipCode compile: 'isNew

	^true' classified: 'testing'.
NewZipCode compile: 'oldValueIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.
NewZipCode compile: 'newValueIfNone: aNoneBlock

	^value' classified: 'accessing'.

"Customer"
#(cuitNumberIfNone: dniNumberIfNone: hasCUITAsIdentification hasDNIAsIdentification identificationNumber identificationNumber: identificationType identificationType:)
	do: [ :aSelector | Customer removeSelector: aSelector ].
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: cat.
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

"Address"
Address compile: 'zipCode

	^zipCode value' classified: 'zip code'.
Address compile: 'hasOldZipCode

	^zipCode isOld' classified: 'zip code'.
Address compile: 'hasNewZipCode

	^zipCode isNew' classified: 'zip code'.
Address compile: 'oldZipCodeIfNone: aNoneBlock

	^zipCode oldValueIfNone: aNoneBlock' classified: 'zip code'.
Address compile: 'newZipCodeIfNone: aNoneBlock

	^zipCode newValueIfNone: aNoneBlock' classified: 'zip code'.

"CustomerImporter"
CustomerImporter compile: 'importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identification: (Identification for: record fourth number: record fifth).

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
'ok'
