!classDefinition: #StackTest category: 'Stack-Exercise'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!
!StackTest commentStamp: 'MAP 5/18/2022 14:21:52' prior: 0!
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


!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:22:26'!
test01NewStacksMustBeEmpty

	| stack |
	
	stack _ Stack new.
	
	self assert: stack isEmpty! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:44:52'!
test02PushAddElementsToTheStack
	| stack |
	
	stack _ self emptyStack.
	
	stack push: 'Something'.
	
	self deny: stack isEmpty! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:45:07'!
test03PopRemovesElementsFromTheStack
	| stack |
	
	stack _ self emptyStack.
	stack push: 'Something'.
	
	stack pop.
	
	self assert: stack isEmpty! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:45:23'!
test04PopReturnsLastPushedElement
	| stack pushedObject |
	
	stack _ self emptyStack.
	pushedObject _ 'Something'.
	stack push: pushedObject.
	
	self assert: stack pop = pushedObject! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:45:50'!
test05StackBehavesLIFO
	| stack firstPushedObject secondPushedObject |
	
	stack _ self emptyStack.
	firstPushedObject _ 'First'.
	secondPushedObject _ 'Second'.
	
	stack push: firstPushedObject.
	stack push: secondPushedObject.
	
	self assert: stack pop = secondPushedObject.
	self assert: stack pop = firstPushedObject.
	self assert: stack isEmpty 
	! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:46:32'!
test06TopReturnsLastPushedElement
	| stack pushedObject |
	
	stack _ self emptyStack.
	pushedObject _ 'Something'.
	stack push: pushedObject.
	
	self assert: stack top = pushedObject.
	! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/16/2022 16:48:47'!
test07TopDoesNotRemoveElementFromStack
	| stack |
	
	stack _ self emptyStack.
	stack push: 'Something'.
	
	stack top.
	
	self assert: stack size = 1.
	! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:22:26'!
test08CannotPopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:22:26'!
test09CannotPopFromAnStackAfterPoppingLastElement

	| stack  |
	
	stack _ self emptyStack.
	stack push: 'Something'.
	stack pop.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:22:26'!
test10CannotTopFromAnEmptyStack

	| stack  |
	
	stack _ self emptyStack.
	self
		should: [ stack top ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !


!StackTest methodsFor: 'factory-objects' stamp: 'MAP 5/18/2022 14:22:26'!
emptyStack

	^ Stack new! !


!classDefinition: #Stack category: 'Stack-Exercise'!
Object subclass: #Stack
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Exercise'!
!Stack commentStamp: 'MAP 5/18/2022 14:21:44' prior: 0!
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


"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'Stack-Exercise'!
Stack class
	instanceVariableNames: ''!

!Stack class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 16:15:57'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !
