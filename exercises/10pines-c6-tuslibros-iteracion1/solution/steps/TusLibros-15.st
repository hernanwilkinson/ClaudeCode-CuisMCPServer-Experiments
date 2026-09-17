Object subclass: #Cart
	instanceVariableNames: 'catalog books'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:20'!
invalidBookErrorMessage
	
	^'Book is not in catalog'! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:31'!
add: aBook

	^ self add: 1 of: aBook ! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:37'!
includes: aBook

	^books includes: aBook ! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:27'!
invalidQuantityErrorMessage
	
	^'Invalid number of books'! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:23'!
initializeWith: aCatalog

	catalog := aCatalog.
	books := OrderedCollection new.! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:32'!
add: aQuantity of: aBook

	aQuantity strictlyPositive ifFalse: [ self error: self invalidQuantityErrorMessage ].
	(catalog includes: aBook) ifFalse: [ self error: self invalidBookErrorMessage].
	
	books add: aBook 	! !

!Cart methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:23'!
isEmpty
	
	^books isEmpty ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 17:19'!
with: aCatalog

	^self new initializeWith: aCatalog ! !


TestCase subclass: #CartTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:18'!
defaultCatalog
	
	^ Array with: self bookPublishedByPusblishier! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:32'!
test05CanNotAddMoreThanOneBookNotPublishedByPublisher

	| cart |
	
	cart := self createCart.
	
	self 
		should: [cart add: 2 of: self bookNotPublishedByPublisher  ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidBookErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:16'!
test02CanNotAddBooksThatDoNotBelongToPublishier

	| cart |
	
	cart := self createCart.
	
	self 
		should: [ cart add: self bookNotPublishedByPublisher ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidBookErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:08'!
test01NewCartsAreCreatedEmpty

	self assert: self createCart isEmpty! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:16'!
bookNotPublishedByPublisher
	
	^'invalidBook'! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:29'!
test04CanNotAddNonPositiveNumberOfBooks

	| cart |
	
	cart := self createCart.
	
	self 
		should: [cart add: 0 of: self bookPublishedByPusblishier ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidQuantityErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:22'!
test03AfterAddingABookTheCartIsNotEmptyAnymore

	| cart |
	
	cart := self createCart.
	
	cart add: self bookPublishedByPusblishier.
	self deny: cart isEmpty ! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:17'!
createCart
	
	^Cart with: self defaultCatalog! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:38'!
test08CartRemembersTheNumberOfAddedBooks

	| cart |
	
	cart := self createCart.
	
	cart add: 2 of: self bookPublishedByPusblishier.
	self assert: (cart numberOf: self bookPublishedByPusblishier) = 2! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:37'!
test07CartDoesNotHoldNotAddedBooks

	| cart |
	
	cart := self createCart.
	
	self deny: (cart includes: self bookPublishedByPusblishier)! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:18'!
bookPublishedByPusblishier
	
	^ 'validBook'! !

!CartTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/17/2013 17:36'!
test06CartRemembersAddedBooks

	| cart |
	
	cart := self createCart.
	
	cart add: self bookPublishedByPusblishier.
	self assert: (cart includes: self bookPublishedByPusblishier)! !
