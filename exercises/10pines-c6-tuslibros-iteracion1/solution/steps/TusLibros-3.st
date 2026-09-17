!classDefinition: #CartTest category: #TusLibros!
TestCase subclass: #CartTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:16'!
bookNotPublishedByPublisher
	
	^'invalidBook'! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:18'!
bookPublishedByPusblishier
	
	^ 'validBook'! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:17'!
createCart
	
	^Cart with: self defaultCatalog! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:18'!
defaultCatalog
	
	^ Array with: self bookPublishedByPusblishier! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:08'!
test01NewCartsAreCreatedEmpty

	self assert: self createCart isEmpty! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HAW 4/19/2017 18:49:00'!
test02CanNotAddBooksThatDoNotBelongToPublishier

	| cart |
	
	cart := self createCart.
	
	self 
		should: [ cart add: self bookNotPublishedByPublisher ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidBookErrorMessage.
			self assert: cart isEmpty ]! !


!classDefinition: #Cart category: #TusLibros!
Object subclass: #Cart
	instanceVariableNames: 'catalog'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:20'!
add: aBook

	(catalog includes: aBook) ifFalse: [ self error: self invalidBookErrorMessage]! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:19'!
initializeWith: aCatalog

	catalog := aCatalog ! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:20'!
invalidBookErrorMessage
	
	^'Book is not in catalog'! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:21'!
isEmpty
	
	^true! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cart class' category: #TusLibros!
Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 17:19'!
with: aCatalog

	^self new initializeWith: aCatalog ! !
