!classDefinition: #StackTest category: 'Stack-Solution-with States-intermedia'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-intermedia'!
!StackTest commentStamp: 'MAP 5/18/2022 14:30:14' prior: 0!
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


!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:30:32'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:30:32'!
test08CannotPopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:30:32'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:30:32'!
test10CannotTopFromAnEmptyStack

	| stack  |
	
	stack _ self emptyStack.
	self
		should: [ stack top ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !


!StackTest methodsFor: 'factory-objects' stamp: 'MAP 5/18/2022 14:30:32'!
emptyStack

	^ Stack new! !


!classDefinition: #Stack category: 'Stack-Solution-with States-intermedia'!
Object subclass: #Stack
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-intermedia'!
!Stack commentStamp: 'MAP 5/18/2022 14:30:02' prior: 0!
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


!Stack methodsFor: 'testing' stamp: 'MAP 5/16/2022 16:18:07'!
isEmpty
	^elements isEmpty ! !


!Stack methodsFor: 'initializating' stamp: 'MAP 5/16/2022 16:19:27'!
initialize
	elements _ OrderedCollection new! !


!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:24:07'!
pop
	| elementToPop |
	
	elementToPop _ self top.
	elements removeLast.
	
	^elementToPop 
	! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:20:25'!
push: anObject 
	elements add: anObject ! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:24:34'!
size
	^elements size ! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:22:15'!
top
	self isEmpty ifTrue: [ self error: self class stackEmptyErrorDescription ].
	
	^elements last ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'Stack-Solution-with States-intermedia'!
Stack class
	instanceVariableNames: ''!

!Stack class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 16:15:57'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !
