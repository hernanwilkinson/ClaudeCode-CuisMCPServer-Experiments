!classDefinition: #StackTest category: 'Stack-Solution-with Recursion-final'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-final'!
!StackTest commentStamp: 'MAP 5/18/2022 14:23:35' prior: 0!
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


!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:24:07'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:24:07'!
test08CannotPopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:24:07'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:24:07'!
test10CannotTopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack top ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !


!StackTest methodsFor: 'factory-objects' stamp: 'MAP 5/18/2022 14:24:07'!
emptyStack

	^ Stack new! !


!classDefinition: #Stack category: 'Stack-Solution-with Recursion-final'!
Object subclass: #Stack
	instanceVariableNames: 'top'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-final'!
!Stack commentStamp: 'MAP 5/18/2022 14:23:30' prior: 0!
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


!Stack methodsFor: 'testing' stamp: 'MAP 5/16/2022 17:27:55'!
isEmpty
	^top isEmpty! !


!Stack methodsFor: 'initializing' stamp: 'MAP 5/16/2022 17:27:22'!
initialize
	top _ StackBase new! !


!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:16:56'!
pop
	| elementToPop |
	
	elementToPop _ self top.
	top _ top previous.
	
	^elementToPop! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:12:22'!
push: anObject 
	top _ PushedObject withElement: anObject andPrevious: top! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:30:18'!
size
	^top size! !

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:30:25'!
top
	^top element! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'Stack-Solution-with Recursion-final'!
Stack class
	instanceVariableNames: ''!

!Stack class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 16:15:57'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #StackElement category: 'Stack-Solution-with Recursion-final'!
Object subclass: #StackElement
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-final'!
!StackElement commentStamp: 'MAP 5/18/2022 14:23:41' prior: 0!
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


!StackElement methodsFor: 'testing' stamp: 'MAP 5/16/2022 17:29:23'!
isEmpty
	self subclassResponsibility ! !


!StackElement methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:25:41'!
element
	self subclassResponsibility ! !

!StackElement methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:26:07'!
size
	self subclassResponsibility ! !


!classDefinition: #PushedObject category: 'Stack-Solution-with Recursion-final'!
StackElement subclass: #PushedObject
	instanceVariableNames: 'element previous'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-final'!
!PushedObject commentStamp: 'MAP 5/18/2022 14:23:49' prior: 0!
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

!PushedObject methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:37:13'!
size
	^previous size + 1! !


!PushedObject methodsFor: 'testing' stamp: 'MAP 5/16/2022 17:28:43'!
isEmpty
	^false! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PushedObject class' category: 'Stack-Solution-with Recursion-final'!
PushedObject class
	instanceVariableNames: ''!

!PushedObject class methodsFor: 'instance creation' stamp: 'MAP 5/16/2022 17:13:22'!
withElement: anObject andPrevious: aStackElement 
	^self new initializeWithElement: anObject andPrevious: aStackElement ! !


!classDefinition: #StackBase category: 'Stack-Solution-with Recursion-final'!
StackElement subclass: #StackBase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with Recursion-final'!
!StackBase commentStamp: 'MAP 5/18/2022 14:23:57' prior: 0!
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


!StackBase methodsFor: 'testing' stamp: 'MAP 5/16/2022 17:28:17'!
isEmpty
	^true! !


!StackBase methodsFor: 'accessing' stamp: 'MAP 5/18/2022 14:24:07'!
element
	self error: Stack stackEmptyErrorDescription ! !

!StackBase methodsFor: 'accessing' stamp: 'MAP 5/16/2022 17:29:02'!
size
	^0! !
