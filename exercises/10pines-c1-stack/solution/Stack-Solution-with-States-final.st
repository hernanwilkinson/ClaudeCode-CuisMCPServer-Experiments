!classDefinition: #StackTest category: 'Stack-Solution-with States-final'!
TestCase subclass: #StackTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-final'!
!StackTest commentStamp: 'MAP 5/18/2022 14:27:51' prior: 0!
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


!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:28:55'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:28:55'!
test08CannotPopFromAnEmptyStack
	| stack  |
	
	stack _ self emptyStack.
	
	self
		should: [ stack pop ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:28:55'!
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

!StackTest methodsFor: 'test' stamp: 'MAP 5/18/2022 14:28:55'!
test10CannotTopFromAnEmptyStack

	| stack  |
	
	stack _ self emptyStack.
	self
		should: [ stack top ]
		raise: Error
		withExceptionDo: [ :anError |
			self assert: anError messageText = Stack stackEmptyErrorDescription ]
		
! !


!StackTest methodsFor: 'factory-objects' stamp: 'MAP 5/18/2022 14:28:55'!
emptyStack

	^ Stack new! !


!classDefinition: #Stack category: 'Stack-Solution-with States-final'!
Object subclass: #Stack
	instanceVariableNames: 'elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-final'!
!Stack commentStamp: 'MAP 5/18/2022 14:27:46' prior: 0!
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


!Stack methodsFor: 'accessing-double-dispatch' stamp: 'MAP 5/16/2022 16:26:11'!
topWhenEmpty

	^ self error: self class stackEmptyErrorDescription! !

!Stack methodsFor: 'accessing-double-dispatch' stamp: 'MAP 5/16/2022 16:26:33'!
topWhenNotEmpty

	^ elements last! !


!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:50:47'!
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

!Stack methodsFor: 'accessing' stamp: 'MAP 5/16/2022 16:27:40'!
top
	^self state topFor: self! !


!Stack methodsFor: 'accessing-private' stamp: 'MAP 5/16/2022 16:53:37'!
state
	^StackState stateFor: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Stack class' category: 'Stack-Solution-with States-final'!
Stack class
	instanceVariableNames: ''!

!Stack class methodsFor: 'error descriptions' stamp: 'MAP 5/16/2022 16:15:57'!
stackEmptyErrorDescription
	
	^ 'Stack is empty'! !


!classDefinition: #StackState category: 'Stack-Solution-with States-final'!
Object subclass: #StackState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-final'!
!StackState commentStamp: 'MAP 5/18/2022 14:27:56' prior: 0!
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


!StackState methodsFor: 'handling' stamp: 'MAP 5/16/2022 16:52:58'!
topFor: anOOStack 
	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'StackState class' category: 'Stack-Solution-with States-final'!
StackState class
	instanceVariableNames: ''!

!StackState class methodsFor: 'instance creation' stamp: 'MAP 5/16/2022 16:55:17'!
stateFor: anOOStack 
	^( self allSubclasses detect: [ :subclass | subclass canHandle: anOOStack ] ) new ! !


!classDefinition: #EmptyStackState category: 'Stack-Solution-with States-final'!
StackState subclass: #EmptyStackState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-final'!
!EmptyStackState commentStamp: 'MAP 5/18/2022 14:28:00' prior: 0!
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


!EmptyStackState methodsFor: 'handling' stamp: 'MAP 5/16/2022 16:29:39'!
topFor: anOOStack 
	^anOOStack topWhenEmpty ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'EmptyStackState class' category: 'Stack-Solution-with States-final'!
EmptyStackState class
	instanceVariableNames: ''!

!EmptyStackState class methodsFor: 'testing' stamp: 'MAP 5/16/2022 16:57:06'!
canHandle: anOOStack 
	^anOOStack isEmpty ! !


!classDefinition: #NotEmptyStackState category: 'Stack-Solution-with States-final'!
StackState subclass: #NotEmptyStackState
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Stack-Solution-with States-final'!
!NotEmptyStackState commentStamp: 'MAP 5/18/2022 14:28:05' prior: 0!
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


!NotEmptyStackState methodsFor: 'handling' stamp: 'MAP 5/16/2022 16:35:35'!
topFor: anOOStack 
	^anOOStack topWhenNotEmpty ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'NotEmptyStackState class' category: 'Stack-Solution-with States-final'!
NotEmptyStackState class
	instanceVariableNames: ''!

!NotEmptyStackState class methodsFor: 'testing' stamp: 'MAP 5/16/2022 16:57:28'!
canHandle: anOOStack 
	^anOOStack isEmpty not! !
