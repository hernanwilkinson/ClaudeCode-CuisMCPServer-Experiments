!classDefinition: #CartTest category: #TusLibros!
TestCase subclass: #CartTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:16'!
bookNotPublishedByPublisher
	
	^'invalidBook'! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:10'!
createCart
	
	^OrderedCollection new! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:08'!
test01NewCartsAreCreatedEmpty

	self assert: self createCart isEmpty! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HAW 4/19/2017 19:02:06'!
test02CanNotAddBooksThatDoNotBelongToPublishier

	| cart |
	
	cart := self createCart.
	
	self 
		should: [ cart add: self bookNotPublishedByPublisher ]
		raise: Error - MessageNotUndertood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidBookErrorMessage.
			self assert: cart isEmpty ]! !

