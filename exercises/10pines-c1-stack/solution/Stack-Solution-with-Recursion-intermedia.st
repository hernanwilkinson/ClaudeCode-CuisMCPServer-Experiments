!classDefinition: #StackTest category: 'Stack-Solution-with Recursion-intermedia'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-intermedia'!
!StackTest commentStamp: 'MAP 5/18/2022 14:26:45' prior: 0!
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


!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:26:59'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:26:59'!
test08CannotPopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:26:59'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:26:59'!
test10CannotTopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack top ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !


!StackTest methodsFor: 'factory-objects' stamp: 'MAP 5/18/2022 14:26:59'!
emptyStack

	^ Stack new! !


!classDefinition: #PushedObject category: 'Stack-Solution-with Recursion-intermedia'!
Object subclass: #PushedObject
	instanceVariableNames: 'element previous'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-intermedia'!
!PushedObject commentStamp: 'MAP 5/18/2022 14:26:51' prior: 0!
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


!PushedObject methodsFor: 'initialization' stamp: 'MAP 5/16/2022 17:14:59'!
initializeWithElement: anObject andPrevious: aStackElement 
	element := anObject.
	previous := aStackElement.! !


!PushedObject methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:16:40'!
element
	^element! !

!PushedObject methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:16:52'!
previous
	^previous! !

!PushedObject methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:22:38'!
size
	previous ifNil: [ ^1 ].
	
	^previous size + 1! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PushedObject class' category: 'Stack-Solution-with Recursion-intermedia'!
PushedObject class
	instanceVariableNames: ''!

!PushedObject class methodsFor: 'instance creation' stamp: 'MAP 5/16/2022 17:13:22'!
withElement: anObject andPrevious: aStackElement 
	^self new initializeWithElement: anObject andPrevious: aStackElement ! !


!classDefinition: #Stack category: 'Stack-Solution-with Recursion-intermedia'!
Object subclass: #Stack
	instanceVariableNames: 'top'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-intermedia'!
!Stack commentStamp: 'MAP 5/18/2022 14:26:40' prior: 0!
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


!Stack methodsFor: 'testing' stamp: 'MAP 5/16/2022 17:10:51'!
isEmpty
	^top isNil! !


!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:16:56'!
pop
	| elementToPop |
	
	elementToPop _ self top.
	top _ top previous.
	
	^elementToPop! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:12:22'!
push: anObject 
	top _ PushedObject withElement: anObject andPrevious: top! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:20:17'!
size
	self isEmpty ifTrue: [ ^0 ].
	
	^top size! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:19:08'!
top
	self isEmpty ifTrue: [ self error: self class stackEmptyErrorDescription ].
	
	^top element! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'Stack-Solution-with Recursion-intermedia'!
Stack class
	instanceVariableNames: ''!

!Stack class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 16:15:57'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !
