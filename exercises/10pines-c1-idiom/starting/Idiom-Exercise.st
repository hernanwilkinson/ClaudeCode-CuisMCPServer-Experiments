!classDefinition: #NotFound category: 'Idiom-Exercise'!
Error subclass: #NotFound
	instanceVariableNames: 'object signaler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Idiom-Exercise'!
!NotFound commentStamp: 'MAP 5/18/2022 14:12:23' prior: 0!
Esta clase fue creada por motivos del ejercicio

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



!classDefinition: #IdiomTest category: 'Idiom-Exercise'!
TestCase subclass: #IdiomTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Idiom-Exercise'!
!IdiomTest commentStamp: 'MAP 5/18/2022 14:12:06' prior: 0!
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


!IdiomTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 12:41:17'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook timeBeforeRunning timeAfterRunning|
	
	customerBook _ self emptyCustomerBook.
	
	timeBeforeRunning _ (Time millisecondClockValue) * millisecond.
	customerBook addCustomerNamed: 'John Lennon'.
	timeAfterRunning _ (Time millisecondClockValue) * millisecond.
	
	self assert: (timeAfterRunning-timeBeforeRunning) < (50 * millisecond)
	
! !

!IdiomTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 12:42:18'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	| customerBook timeBeforeRunning timeAfterRunning johnLennon |
	
	customerBook _ self emptyCustomerBook.
	johnLennon _ 'John Lennon'.
	
	customerBook addCustomerNamed: johnLennon.
	  
	timeBeforeRunning _ (Time millisecondClockValue) * millisecond.
	customerBook removeCustomerNamed: johnLennon.
	timeAfterRunning _ (Time millisecondClockValue) * millisecond.
	
	self assert: (timeAfterRunning-timeBeforeRunning) < (100 * millisecond)
	
! !

!IdiomTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 11:47:47'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook |
			
	customerBook _ self emptyCustomerBook.

	[ customerBook addCustomerNamed: ''.
	self fail ]
		on: Error 
		do: [ :anError | 
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ]! !

!IdiomTest methodsFor: 'tests' stamp: 'MAP 5/16/2022 11:47:35'!
test04CanNotRemoveAndInvalidCustomer
	
	| customerBook johnLennon |
			
	customerBook _ self emptyCustomerBook.
	johnLennon _ 'John Lennon'.
	customerBook addCustomerNamed: johnLennon.
	
	[ customerBook removeCustomerNamed: 'Paul McCartney'.
	self fail ]
		on: NotFound 
		do: [ :anError | 
			self assert: anError messageText = CustomerBook customerDoesNotExistErrorMessage.
			self assert: customerBook numberOfCustomers = 1.
			self assert: (customerBook includesCustomerNamed: johnLennon) ]
! !


!IdiomTest methodsFor: 'factory-objects' stamp: 'MAP 5/16/2022 11:46:02'!
emptyCustomerBook

	^ CustomerBook  new! !


!classDefinition: #CustomerBook category: 'Idiom-Exercise'!
Object subclass: #CustomerBook
	instanceVariableNames: 'customers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Idiom-Exercise'!
!CustomerBook commentStamp: 'MAP 5/18/2022 14:11:57' prior: 0!
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


!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 11:54:16'!
addCustomerNamed: aName

	self assertNameNotEmpty: aName.
	self assertCustomerDoesNotExist: aName.
	
	customers add: aName ! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 11:54:16'!
assertCustomerDoesNotExist: aName

	^ (customers includes: aName) ifTrue: [ self signalCustomerAlreadyExists ]! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 11:55:28'!
assertCustomerExists: aName

	^ (customers includes: aName) ifFalse: [ self signalCustomerDoesNotExist ]! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 11:52:59'!
assertNameNotEmpty: aName

	^ aName isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ]! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 10:39:28'!
numberOfCustomers
	
	^customers size! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 11:55:28'!
removeCustomerNamed: aName
 	self assertCustomerExists: aName.
	
	customers remove: aName ! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 10:39:28'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 10:50:19'!
signalCustomerDoesNotExist 

	NotFound signal: self class customerDoesNotExistErrorMessage! !

!CustomerBook methodsFor: 'customer management' stamp: 'MAP 5/16/2022 10:39:28'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !


!CustomerBook methodsFor: 'testing' stamp: 'MAP 5/16/2022 10:39:28'!
includesCustomerNamed: aName

	^customers includes: aName ! !

!CustomerBook methodsFor: 'testing' stamp: 'MAP 5/16/2022 10:39:28'!
isEmpty
	
	^customers isEmpty  ! !


!CustomerBook methodsFor: 'initialization' stamp: 'MAP 5/16/2022 11:56:11'!
initialize
	customers _ OrderedCollection new! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'Idiom-Exercise'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'MAP 5/16/2022 10:39:28'!
customerAlreadyExistsErrorMessage

	^'Customer already exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'MAP 5/16/2022 10:39:28'!
customerCanNotBeEmptyErrorMessage

	^'Customer name cannot be empty'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'MAP 5/16/2022 10:48:14'!
customerDoesNotExistErrorMessage

	^'Customer does not exist'! !
