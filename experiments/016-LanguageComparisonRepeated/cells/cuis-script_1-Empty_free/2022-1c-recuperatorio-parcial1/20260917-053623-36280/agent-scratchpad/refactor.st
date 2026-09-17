| cat |
cat := 'CustomerImporter-Recu-1er-Parcial'.

"---- String extension to avoid repeating digit checks ----"
String compile: 'isAllDigits

	^self allSatisfy: [ :aCharacter | aCharacter isDigit ]' classified: '*', cat.

"---- Identifications ----"
Object subclass: #CustomerIdentification instanceVariableNames: 'number' classVariableNames: '' poolDictionaries: '' category: cat.
CustomerIdentification subclass: #DNI instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
CustomerIdentification subclass: #CUIT instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

CustomerIdentification class compile: 'for: aType number: aNumber

	^(self subclassFor: aType) withNumber: aNumber' classified: 'instance creation'.
CustomerIdentification class compile: 'withNumber: aNumber

	(self isValidNumber: aNumber) ifFalse: [ self error: self invalidNumberErrorDescription ].
	^self new initializeWithNumber: aNumber' classified: 'instance creation'.
CustomerIdentification class compile: 'subclassFor: aType

	^self subclasses 
		detect: [ :anIdentificationClass | anIdentificationClass type = aType ] 
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ]' classified: 'instance creation - private'.
CustomerIdentification class compile: 'type

	self subclassResponsibility' classified: 'type'.
CustomerIdentification class compile: 'isValidNumber: aNumber

	self subclassResponsibility' classified: 'validation'.
CustomerIdentification class compile: 'invalidNumberErrorDescription

	self subclassResponsibility' classified: 'error messages'.
CustomerIdentification class compile: 'invalidIdentificationTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.

CustomerIdentification compile: 'initializeWithNumber: aNumber

	number := aNumber' classified: 'initialization'.
CustomerIdentification compile: 'number

	^number' classified: 'accessing'.
CustomerIdentification compile: 'type

	^self class type' classified: 'accessing'.
CustomerIdentification compile: 'isOfType: aType number: aNumber

	^self type = aType and: [ number = aNumber ]' classified: 'testing'.
#(isDNI isCUIT) do: [ :sel |
	CustomerIdentification compile: sel, '

	self subclassResponsibility' classified: 'testing' ].
#(dniNumberIfNone: cuitNumberIfNone:) do: [ :sel |
	CustomerIdentification compile: sel, ' aNoneBlock

	self subclassResponsibility' classified: 'accessing' ].

DNI class compile: 'type

	^''D''' classified: 'type'.
DNI class compile: 'isValidNumber: aNumber

	^aNumber isAllDigits and: [ (self numberFrom: aNumber) between: 1 and: 99999999 ]' classified: 'validation'.
DNI class compile: 'numberFrom: aNumber

	^Integer readFrom: aNumber readStream' classified: 'converting'.
DNI class compile: 'invalidNumberErrorDescription

	^''Invalid DNI number''' classified: 'error messages'.
DNI compile: 'isDNI

	^true' classified: 'testing'.
DNI compile: 'isCUIT

	^false' classified: 'testing'.
DNI compile: 'dniNumberIfNone: aNoneBlock

	^self class numberFrom: number' classified: 'accessing'.
DNI compile: 'cuitNumberIfNone: aNoneBlock

	^aNoneBlock value' classified: 'accessing'.

CUIT class compile: 'type

	^''C''' classified: 'type'.
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

"---- Zip codes ----"
Object subclass: #ZipCode instanceVariableNames: 'value' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #OldZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.
ZipCode subclass: #NewZipCode instanceVariableNames: '' classVariableNames: '' poolDictionaries: '' category: cat.

ZipCode class compile: 'from: aZipCodeString

	^(self subclassFor: aZipCodeString) newFrom: aZipCodeString' classified: 'instance creation'.
ZipCode class compile: 'newFrom: aZipCodeString

	(self isValid: aZipCodeString) ifFalse: [ self error: self invalidZipCodeErrorDescription ].
	^self new initializeWith: (self valueFrom: aZipCodeString)' classified: 'instance creation'.
ZipCode class compile: 'subclassFor: aZipCodeString

	^self subclasses 
		detect: [ :aZipCodeClass | aZipCodeClass canHandle: aZipCodeString ] 
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ]' classified: 'instance creation - private'.
#(canHandle: isValid: valueFrom:) do: [ :sel |
	ZipCode class compile: sel, ' aZipCodeString

	self subclassResponsibility' classified: 'validation' ].
ZipCode class compile: 'invalidZipCodeErrorDescription

	self subclassResponsibility' classified: 'error messages'.
ZipCode class compile: 'invalidZipCodeTypeErrorDescription

	^''Invalid identification type''' classified: 'error messages'.
ZipCode compile: 'initializeWith: aValue

	value := aValue' classified: 'initialization'.
ZipCode compile: 'value

	^value' classified: 'accessing'.
#(isOld isNew) do: [ :sel |
	ZipCode compile: sel, '

	self subclassResponsibility' classified: 'testing' ].
#(oldZipCodeIfNone: newZipCodeIfNone:) do: [ :sel |
	ZipCode compile: sel, ' aNoneBlock

	self subclassResponsibility' classified: 'accessing' ].

OldZipCode class compile: 'canHandle: aZipCodeString

	^aZipCodeString first isDigit' classified: 'validation'.
OldZipCode class compile: 'isValid: aZipCodeString

	^aZipCodeString isAllDigits and: [ (self valueFrom: aZipCodeString) between: 1000 and: 9999 ]' classified: 'validation'.
OldZipCode class compile: 'valueFrom: aZipCodeString

	^aZipCodeString asNumber' classified: 'validation'.
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

	^aZipCodeString first isLetter' classified: 'validation'.
NewZipCode class compile: 'isValid: aZipCodeString

	| oldZipCodePart |
	
	aZipCodeString size = 8 ifFalse: [ ^false ].
	oldZipCodePart := aZipCodeString copyFrom: 2 to: 5.
	
	^oldZipCodePart isAllDigits
		and: [ oldZipCodePart asNumber > 999
		and: [ (aZipCodeString last: 3) allSatisfy: [ :aCharacter | aCharacter isLetter ]]]' classified: 'validation'.
NewZipCode class compile: 'valueFrom: aZipCodeString

	^aZipCodeString' classified: 'validation'.
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

"---- Address ----"
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

"---- Customer ----"
#(identificationType identificationNumber identificationType: identificationNumber: hasCUITAsIdentification hasDNIAsIdentification cuitNumberIfNone: dniNumberIfNone:)
	do: [ :sel | Customer removeSelector: sel ].
Object subclass: #Customer instanceVariableNames: 'id firstName lastName identification addresses' classVariableNames: '' poolDictionaries: '' category: cat.
Customer compile: 'identification: anIdentification

	identification := anIdentification' classified: 'identification'.
Customer compile: 'identificationType

	^identification type' classified: 'identification'.
Customer compile: 'identificationNumber

	^identification number' classified: 'identification'.
Customer compile: 'isIdentifiedAs: anIdType number: anIdNumber

	^identification isOfType: anIdType number: anIdNumber' classified: 'identification'.
Customer compile: 'hasDNIAsIdentification

	^identification isDNI' classified: 'identification'.
Customer compile: 'hasCUITAsIdentification

	^identification isCUIT' classified: 'identification'.
Customer compile: 'dniNumberIfNone: aNoneBlock

	^identification dniNumberIfNone: aNoneBlock' classified: 'identification'.
Customer compile: 'cuitNumberIfNone: aNoneBlock

	^identification cuitNumberIfNone: aNoneBlock' classified: 'identification'.

"---- Systems ----"
TransientCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]' classified: 'customers'.
PersistentCustomerSystem compile: 'customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]
		ofType: Customer) anyOne' classified: 'customers'.

"---- Importer ----"
CustomerImporter compile: 'importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identification: (CustomerIdentification for: record fourth number: record fifth).
	
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

"---- Tests go to their own category (unchanged) ----"
ImportTest category: cat, '-Tests'.
nil
