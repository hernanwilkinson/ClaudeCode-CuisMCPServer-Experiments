CAT = 'CustomerImporter-Recu-1er-Parcial'
q = lambda s: "'" + s.replace("'", "''") + "'"
out = []
def cls(sup, name, ivars):
    out.append(f"{sup} subclass: #{name} instanceVariableNames: {q(ivars)} classVariableNames: '' poolDictionaries: '' category: {q(CAT)}.")
def m(target, category, src):
    out.append(f"{target} compile: {q(src.strip(chr(10)))} classified: {q(category)}.")

# String extensions
m('String', '*' + CAT, "isAllDigits\n\n\t^self allSatisfy: [ :aCharacter | aCharacter isDigit ]")
m('String', '*' + CAT, "isAllLetters\n\n\t^self allSatisfy: [ :aCharacter | aCharacter isLetter ]")

# ---------------- Identification
cls('Object', 'Identification', 'number')
cls('Identification', 'DNI', '')
cls('Identification', 'CUIT', '')
I, Ic = 'Identification', 'Identification class'
m(Ic, 'instance creation', """
typeCode: aTypeCode number: aNumber

	^(self subclassForTypeCode: aTypeCode) number: aNumber""")
m(Ic, 'instance creation', """
number: aNumber

	self assertIsValid: aNumber.
	^self new initializeNumber: aNumber""")
m(Ic, 'instance creation - private', """
subclassForTypeCode: aTypeCode

	^self subclasses
		detect: [ :anIdentificationClass | anIdentificationClass typeCode = aTypeCode ]
		ifNone: [ self error: self invalidIdentificationTypeErrorDescription ]""")
m(Ic, 'assertions', """
assertIsValid: aNumber

	(self isValid: aNumber) ifFalse: [ self error: self invalidNumberErrorDescription ]""")
m(Ic, 'assertions', "isValid: aNumber\n\n\tself subclassResponsibility")
m(Ic, 'type', "typeCode\n\n\tself subclassResponsibility")
m(Ic, 'error messages', "invalidNumberErrorDescription\n\n\tself subclassResponsibility")
m(Ic, 'error messages', "invalidIdentificationTypeErrorDescription\n\n\t^'Invalid identification type'")
m(I, 'initialization', "initializeNumber: aNumber\n\n\tnumber := aNumber")
m(I, 'accessing', "number\n\n\t^number")
m(I, 'accessing', "typeCode\n\n\t^self class typeCode")
m(I, 'testing', "isOfType: aTypeCode number: aNumber\n\n\t^self typeCode = aTypeCode and: [ number = aNumber ]")
for sel in ['isDNI', 'isCUIT']:
    m(I, 'testing', f"{sel}\n\n\tself subclassResponsibility")
for sel in ['dniNumberIfNone: aNoneBlock', 'cuitNumberIfNone: aNoneBlock']:
    m(I, 'accessing', f"{sel}\n\n\tself subclassResponsibility")

m('DNI class', 'type', "typeCode\n\n\t^'D'")
m('DNI class', 'assertions', "isValid: aNumber\n\n\t^aNumber isAllDigits and: [ aNumber asNumber between: 1 and: 99999999 ]")
m('DNI class', 'error messages', "invalidNumberErrorDescription\n\n\t^'Invalid DNI number'")
m('DNI', 'testing', "isDNI\n\n\t^true")
m('DNI', 'testing', "isCUIT\n\n\t^false")
m('DNI', 'accessing', "dniNumberIfNone: aNoneBlock\n\n\t^number asNumber")
m('DNI', 'accessing', "cuitNumberIfNone: aNoneBlock\n\n\t^aNoneBlock value")

m('CUIT class', 'type', "typeCode\n\n\t^'C'")
m('CUIT class', 'assertions', """
isValid: aNumber
	"'23-25666777-9' size 13 "

	^(aNumber size between: 12 and: 13)
		and: [ (aNumber third = $- and: [ aNumber penultimate = $- ])
		and: [ (self validPrefixes includes: (aNumber first: 2))
		and: [ aNumber last isDigit
		and: [ (aNumber copyFrom: 4 to: aNumber size - 2) isAllDigits ]]]]""")
m('CUIT class', 'assertions', "validPrefixes\n\n\t^#('20' '23' '24' '25' '26' '27' '30' '33' '34')")
m('CUIT class', 'error messages', "invalidNumberErrorDescription\n\n\t^'Invalid CUIT number'")
m('CUIT', 'testing', "isDNI\n\n\t^false")
m('CUIT', 'testing', "isCUIT\n\n\t^true")
m('CUIT', 'accessing', "dniNumberIfNone: aNoneBlock\n\n\t^aNoneBlock value")
m('CUIT', 'accessing', "cuitNumberIfNone: aNoneBlock\n\n\t^number")

# ---------------- ZipCode
cls('Object', 'ZipCode', 'code')
cls('ZipCode', 'OldZipCode', '')
cls('ZipCode', 'NewZipCode', '')
Z, Zc = 'ZipCode', 'ZipCode class'
m(Zc, 'instance creation', """
from: aZipCode

	^(self subclassFor: aZipCode) code: aZipCode""")
m(Zc, 'instance creation', """
code: aZipCode

	self assertIsValid: aZipCode.
	^self new initializeCode: aZipCode""")
m(Zc, 'instance creation - private', """
subclassFor: aZipCode

	^self subclasses
		detect: [ :aZipCodeClass | aZipCodeClass canRepresent: aZipCode ]
		ifNone: [ self error: self invalidZipCodeTypeErrorDescription ]""")
m(Zc, 'assertions', """
assertIsValid: aZipCode

	(self isValid: aZipCode) ifFalse: [ self error: self invalidZipCodeErrorDescription ]""")
m(Zc, 'assertions', "isValid: aZipCode\n\n\tself subclassResponsibility")
m(Zc, 'type', "canRepresent: aZipCode\n\n\tself subclassResponsibility")
m(Zc, 'error messages', "invalidZipCodeErrorDescription\n\n\tself subclassResponsibility")
m(Zc, 'error messages', "invalidZipCodeTypeErrorDescription\n\n\t^'Invalid identification type'")
m(Z, 'initialization', "initializeCode: aZipCode\n\n\tcode := aZipCode")
m(Z, 'accessing', "value\n\n\tself subclassResponsibility")
for sel in ['isOld', 'isNew']:
    m(Z, 'testing', f"{sel}\n\n\tself subclassResponsibility")
for sel in ['oldZipCodeIfNone: aNoneBlock', 'newZipCodeIfNone: aNoneBlock']:
    m(Z, 'accessing', f"{sel}\n\n\tself subclassResponsibility")

m('OldZipCode class', 'type', "canRepresent: aZipCode\n\n\t^aZipCode first isDigit")
m('OldZipCode class', 'assertions', "isValid: aZipCode\n\n\t^aZipCode isAllDigits and: [ aZipCode asNumber between: 1000 and: 9999 ]")
m('OldZipCode class', 'error messages', "invalidZipCodeErrorDescription\n\n\t^'Invalid old zipcode'")
m('OldZipCode', 'accessing', "value\n\n\t^code asNumber")
m('OldZipCode', 'testing', "isOld\n\n\t^true")
m('OldZipCode', 'testing', "isNew\n\n\t^false")
m('OldZipCode', 'accessing', "oldZipCodeIfNone: aNoneBlock\n\n\t^self value")
m('OldZipCode', 'accessing', "newZipCodeIfNone: aNoneBlock\n\n\t^aNoneBlock value")

m('NewZipCode class', 'type', "canRepresent: aZipCode\n\n\t^aZipCode first isLetter")
m('NewZipCode class', 'assertions', """
isValid: aZipCode
	"The four digits after the first letter are an old zip code, e.g. B1636BBE"

	^aZipCode size = 8
		and: [ (OldZipCode isValid: (aZipCode copyFrom: 2 to: 5))
		and: [ (aZipCode last: 3) isAllLetters ]]""")
m('NewZipCode class', 'error messages', "invalidZipCodeErrorDescription\n\n\t^'Invalid new zipcode'")
m('NewZipCode', 'accessing', "value\n\n\t^code")
m('NewZipCode', 'testing', "isOld\n\n\t^false")
m('NewZipCode', 'testing', "isNew\n\n\t^true")
m('NewZipCode', 'accessing', "oldZipCodeIfNone: aNoneBlock\n\n\t^aNoneBlock value")
m('NewZipCode', 'accessing', "newZipCodeIfNone: aNoneBlock\n\n\t^self value")

# ---------------- Customer
out.append("#(#identificationType: #identificationNumber:) do: [ :aSelector | Customer removeSelector: aSelector ].")
cls('Object', 'Customer', 'id firstName lastName identification addresses')
C = 'Customer'
m(C, 'identification', "identification: anIdentification\n\n\tidentification := anIdentification")
m(C, 'identification', "identificationType\n\n\t^identification typeCode")
m(C, 'identification', "identificationNumber\n\n\t^identification number")
m(C, 'identification', "hasDNIAsIdentification\n\n\t^identification isDNI")
m(C, 'identification', "hasCUITAsIdentification\n\n\t^identification isCUIT")
m(C, 'identification', "dniNumberIfNone: aNoneBlock\n\n\t^identification dniNumberIfNone: aNoneBlock")
m(C, 'identification', "cuitNumberIfNone: aNoneBlock\n\n\t^identification cuitNumberIfNone: aNoneBlock")
m(C, 'identification', "isIdentifiedAs: anIdType number: anIdNumber\n\n\t^identification isOfType: anIdType number: anIdNumber")

# ---------------- Address
A = 'Address'
m(A, 'zip code', "zipCode\n\n\t^zipCode value")
m(A, 'zip code', "hasOldZipCode\n\n\t^zipCode isOld")
m(A, 'zip code', "hasNewZipCode\n\n\t^zipCode isNew")
m(A, 'zip code', "oldZipCodeIfNone: aNoneBlock\n\n\t^zipCode oldZipCodeIfNone: aNoneBlock")
m(A, 'zip code', "newZipCodeIfNone: aNoneBlock\n\n\t^zipCode newZipCodeIfNone: aNoneBlock")

# ---------------- Importer
m('CustomerImporter', 'customer', """
importCustomer

	self assertValidCustomerRecord.

	newCustomer := Customer new.
	newCustomer firstName: record second.
	newCustomer lastName: record third.
	newCustomer identification: (Identification typeCode: record fourth number: record fifth).

	system add: newCustomer""")
m('CustomerImporter', 'address', """
importAddress

	| newAddress |

	self assertCustomerWasImported.
	self assertValidAddressRecord.

	newAddress := Address new.
	newAddress streetName: record second.
	newAddress streetNumber: record third asNumber.
	newAddress town: record fourth.
	newAddress zipCode: (ZipCode from: record fifth).
	newAddress province: record sixth.

	newCustomer addAddress: newAddress""")

# ---------------- Customer systems
m('TransientCustomerSystem', 'customers', """
customerWithIdentificationType: anIdType number: anIdNumber

	^customers detect: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]""")
m('PersistentCustomerSystem', 'customers', """
customerWithIdentificationType: anIdType number: anIdNumber

	^(session
		select: [ :aCustomer | aCustomer isIdentifiedAs: anIdType number: anIdNumber ]
		ofType: Customer) anyOne""")

out.append(f"SystemOrganization classify: #ImportTest under: {q(CAT + '-Tests')}.")
out.append("'done'")
open('refactor.st', 'w').write('\n'.join(out) + '\n')
