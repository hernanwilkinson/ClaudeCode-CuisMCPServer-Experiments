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

!CartTest methodsFor: 'as yet unclassified' stamp: 'HAW 4/19/2017 18:52:26'!
test02CanNotAddBooksThatDoNotBelongToPublishier

	| cart |
	
	cart := self createCart.
	
	self 
		should: [ cart add: self bookNotPublishedByPublisher ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidBookErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:22'!
test03AfterAddingABookTheCartIsNotEmptyAnymore

	| cart |
	
	cart := self createCart.
	
	cart add: self bookPublishedByPusblishier.
	self deny: cart isEmpty ! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HAW 4/19/2017 18:52:39'!
test04CanNotAddAZeroBooks

	| cart |
	
	cart := self createCart.
	
	self 
		should: [cart add: 0 of: self bookPublishedByPusblishier ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidQuantityErrorMessage.
			self assert: cart isEmpty ]! !


!classDefinition: #Cart category: #TusLibros!
Object subclass: #Cart
	instanceVariableNames: 'catalog books'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:22'!
add: aBook

	(catalog includes: aBook) ifFalse: [ self error: self invalidBookErrorMessage].
	books add: aBook ! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:27'!
add: aQuantity of: aBook

	aQuantity strictlyPositive ifFalse: [ self error: self invalidQuantityErrorMessage ] ! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:23'!
initializeWith: aCatalog

	catalog := aCatalog.
	books := OrderedCollection new.! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:20'!
invalidBookErrorMessage
	
	^'Book is not in catalog'! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:27'!
invalidQuantityErrorMessage
	
	^'Invalid number of books'! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:23'!
isEmpty
	
	^books isEmpty ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cart class' category: #TusLibros!
Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 17:19'!
with: aCatalog

	^self new initializeWith: aCatalog ! !
