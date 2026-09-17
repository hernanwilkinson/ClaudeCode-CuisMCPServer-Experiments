!classDefinition: #NumeroTest category: 'Numero-Exercise'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs six'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!
!NumeroTest commentStamp: 'MAP 5/18/2022 14:18:40' prior: 0!
/*
 * Developed by 10Pines SRL
 * License: 
 * This work is licensed under the 
 * Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ 
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, 
 * California, 94041, USA.
 *  
 */
!


!NumeroTest methodsFor: 'setup' stamp: 'MAP 5/16/2022 13:50:49'!
setUp

	zero _ Entero with: 0.
	one _ Entero with: 1.
	two _ Entero with: 2.
	four _ Entero with: 4.
	five _ Entero with: 5.
	six _ Entero with: 6.
	
	oneHalf _ one / two.
	oneFifth _ one / five.
	twoFifth _ two / five.
	twoTwentyfifth _ two / (Entero with: 25).
	fiveHalfs _ five / two.
	! !


!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:23:06'!
test01CeroIsIdenticalToCero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:25:11'!
test02OnlyCeroIsIdenticalToCero

	self deny: one isZero.
	self deny: two isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:23:48'!
test03OneIsIdenticalToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:25:36'!
test04OnlyOneIsIdenticalToOne

	self deny: zero isOne.
	self deny: two isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:51:30'!
test05EnteroAddsWithEnteroCorrectly

	self assert: two equals: one + one! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:51:49'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: four equals: two * two! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:39:19'!
test07EnteroDividesEnteroCorrectly

	self assert: one equals: two / two! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:52:14'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths _ (Entero with: 7) / (Entero with: 10).

	self assert: sevenTenths equals: oneFifth + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:52:32'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: twoTwentyfifth equals: oneFifth * twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 14:49:54'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: fiveHalfs equals: oneHalf / oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:53:04'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: six / five equals: one + oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:53:39'!
test12FraccionAddsEnteroCorrectly

	self assert: six / five equals: oneFifth + one ! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:54:02'!
test13EnteroMultipliesFraccionCorrectly

	self assert: twoFifth equals: two * oneFifth ! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:54:22'!
test14FraccionMultipliesEnteroCorrectly

	self assert: twoFifth equals: oneFifth * two ! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:38:33'!
test15EnteroDividesFraccionCorrectly

	self assert: fiveHalfs equals: one / twoFifth  ! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:09:05'!
test16FraccionDividesEnteroCorrectly

	self assert: twoTwentyfifth equals: twoFifth / five ! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:56:43'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:20:52'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:58:15'!
test19AddingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:58:52'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: one equals: (two/five) * (five/two)! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:45:47'!
test21DividingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf / oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 15:59:17'!
test22DividingEnterosCanReturnAFraccion

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:33:20'!
test23CannotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:33:28'!
test24CannotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: anError messageText equals: Numero canNotDivideByZeroErrorDescription ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 16:03:20'!
test25AFraccionCannotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 13:34:02'!
test26AFraccionCannotBeOne

	self deny: oneHalf isOne! !


!classDefinition: #Numero category: 'Numero-Exercise'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!
!Numero commentStamp: 'MAP 5/18/2022 14:18:16' prior: 0!
/*
 * Developed by 10Pines SRL
 * License: 
 * This work is licensed under the 
 * Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ 
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, 
 * California, 94041, USA.
 *  
 */
!


!Numero methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isZero

	self subclassResponsibility ! !


!Numero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numero-Exercise'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 13:20:51'!
canNotDivideByZeroErrorDescription

	^'No se puede dividir por cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 13:20:51'!
invalidNumberTypeErrorDescription
	^ 'Tipo de numero invalido'! !


!classDefinition: #Entero category: 'Numero-Exercise'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!
!Entero commentStamp: 'MAP 5/18/2022 14:18:25' prior: 0!
/*
 * Developed by 10Pines SRL
 * License: 
 * This work is licensed under the 
 * Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ 
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, 
 * California, 94041, USA.
 *  
 */
!


!Entero methodsFor: 'value' stamp: 'MAP 5/16/2022 13:20:51'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'initialization' stamp: 'MAP 5/16/2022 13:27:03'!
initalizeWith: aValue 
	
	value _ aValue! !


!Entero methodsFor: 'comparing' stamp: 'MAP 5/16/2022 13:20:51'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'MAP 5/16/2022 13:20:51'!
hash

	^value hash! !


!Entero methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isZero
	
	^value = 0! !


!Entero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
* aMultiplier 
	
	^self class with: value * aMultiplier integerValue
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
+ anAdder 
	
	^self class with: value + anAdder integerValue
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
/ aDivisor 
	
	^Fraccion with: self over: aDivisor! !

!Entero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numero-Exercise'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'MAP 5/16/2022 13:20:51'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	aValue isInteger ifFalse: [  self error: 'aValue debe ser anInteger' ].
	
	^self new initalizeWith: aValue! !


!classDefinition: #Fraccion category: 'Numero-Exercise'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numero-Exercise'!
!Fraccion commentStamp: 'MAP 5/18/2022 14:18:32' prior: 0!
/*
 * Developed by 10Pines SRL
 * License: 
 * This work is licensed under the 
 * Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ 
 * or send a letter to Creative Commons, 444 Castro Street, Suite 900, Mountain View, 
 * California, 94041, USA.
 *  
 */
!


!Fraccion methodsFor: 'comparing' stamp: 'MAP 5/16/2022 13:20:51'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'MAP 5/16/2022 13:20:51'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
* aMultiplier 
	
	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator)
	! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:29:18'!
+ anAdder 
	
	| newNumerator newDenominator |
	
	newNumerator _ (numerator * anAdder denominator) + (denominator * anAdder numerator).
	newDenominator _ denominator * anAdder denominator.
	
	^newNumerator / newDenominator ! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'MAP 5/16/2022 13:20:51'!
/ aDivisor 
	
	^(numerator * aDivisor denominator) / (denominator * aDivisor numerator)! !


!Fraccion methodsFor: 'accessing' stamp: 'MAP 5/16/2022 13:20:51'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'MAP 5/16/2022 13:20:51'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'MAP 5/16/2022 13:20:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'initialization' stamp: 'MAP 5/16/2022 13:29:55'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator _ aNumerator.
	denominator _ aDenominator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: 'Numero-Exercise'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'MAP 5/16/2022 13:28:50'!
with: aDividend over: aDivisor

	| greatestCommonDivisor numerator denominator |
	
	aDivisor isZero ifTrue: [ self error: self canNotDivideByZeroErrorDescription ].
	aDividend isZero ifTrue: [ ^aDividend ].
	
	greatestCommonDivisor _ aDividend greatestCommonDivisorWith: aDivisor. 
	numerator _ aDividend // greatestCommonDivisor.
	denominator _ aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^self new initializeWith: numerator over: denominator
	! !
