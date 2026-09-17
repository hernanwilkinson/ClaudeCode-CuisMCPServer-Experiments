Object subclass: #Cart
	instanceVariableNames: 'catalog items'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cart methodsFor: 'error messages' stamp: 'HernanWilkinson 6/22/2013 00:00'!
invalidQuantityErrorMessage
	
	^self class invalidQuantityErrorMessage ! !

!Cart methodsFor: 'error messages' stamp: 'HernanWilkinson 6/21/2013 23:59'!
invalidItemErrorMessage
	
	^self class invalidItemErrorMessage ! !


!Cart methodsFor: 'assertions' stamp: 'HernanWilkinson 6/22/2013 14:17'!
assertIsValidItem: anItem

	(catalog includesKey: anItem) ifFalse: [ self signalInvalidItem ]! !

!Cart methodsFor: 'assertions' stamp: 'HernanWilkinson 6/22/2013 14:18'!
assertIsValidQuantity: aQuantity

	aQuantity strictlyPositive ifFalse: [self signalInvalidQuantity ]! !


!Cart methodsFor: 'content' stamp: 'HernanWilkinson 6/17/2013 17:45'!
occurrencesOf: anItem

	^items occurrencesOf: anItem  ! !

!Cart methodsFor: 'content' stamp: 'HernanWilkinson 6/22/2013 12:30'!
content
	
	^items copy! !

!Cart methodsFor: 'content' stamp: 'HernanWilkinson 6/22/2013 12:15'!
itemsAndQuantitiesDo: aBlock
	
	^ self content contents keysAndValuesDo: [ :anItem :aQuantity | aBlock value: anItem value: aQuantity ]! !

!Cart methodsFor: 'content' stamp: 'HernanWilkinson 6/22/2013 12:17'!
catalog
	
	^ catalog! !


!Cart methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:29'!
initializeAcceptingItemsOf: aCatalog

	catalog := aCatalog.
	items := Bag new.! !


!Cart methodsFor: 'error signal' stamp: 'HernanWilkinson 6/22/2013 14:19'!
signalInvalidQuantity 

	self error: self invalidQuantityErrorMessage ! !

!Cart methodsFor: 'error signal' stamp: 'HernanWilkinson 6/22/2013 14:18'!
signalInvalidItem 

	self error: self invalidItemErrorMessage! !


!Cart methodsFor: 'testing' stamp: 'HernanWilkinson 6/17/2013 17:44'!
includes: anItem

	^items includes: anItem ! !

!Cart methodsFor: 'testing' stamp: 'HernanWilkinson 6/17/2013 17:44'!
isEmpty
	
	^items isEmpty ! !


!Cart methodsFor: 'adding' stamp: 'HernanWilkinson 6/22/2013 12:31'!
add: aQuantity of: anItem

	self assertIsValidQuantity: aQuantity.
	self assertIsValidItem: anItem.

	items add: anItem withOccurrences: aQuantity ! !

!Cart methodsFor: 'adding' stamp: 'HernanWilkinson 6/17/2013 17:44'!
add: anItem

	^ self add: 1 of: anItem ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cart class
	instanceVariableNames: ''!

!Cart class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/22/2013 00:00'!
invalidQuantityErrorMessage
	
	^'Invalid number of items'! !

!Cart class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/21/2013 23:59'!
invalidItemErrorMessage
	
	^'Item is not in catalog'! !


!Cart class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 17:48'!
acceptingItemsOf: aCatalog

	^self new initializeAcceptingItemsOf: aCatalog ! !


Object subclass: #CartSession
	instanceVariableNames: 'owner cart lastUsedTime systemFacade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartSession methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2015 20:00'!
initializeOwnedBy: aCustomer with: aCart on: aSystemFacade

	owner := aCustomer.
	cart := aCart.
	systemFacade := aSystemFacade.
	lastUsedTime := self now.! !


!CartSession methodsFor: 'cart' stamp: 'HernanWilkinson 6/17/2015 20:08'!
addToCart: anAmount of: aBook

	^cart add: anAmount of: aBook! !

!CartSession methodsFor: 'cart' stamp: 'HernanWilkinson 6/17/2015 20:12'!
checkOutCartWithCreditCardNumbered: aCreditCartNumber ownedBy: anOwner expiringOn: anExpirationMonthOfYear 

	^(Cashier 
		toCheckout: cart 
		ownedBy: owner
		charging: (CreditCard expiringOn: anExpirationMonthOfYear) 
		throught: systemFacade merchantProcessor 
		on: self today 
		registeringOn: systemFacade salesBook) checkOut ! !

!CartSession methodsFor: 'cart' stamp: 'HernanWilkinson 6/17/2015 20:09'!
cartContent

	^cart content! !


!CartSession methodsFor: 'session management' stamp: 'HernanWilkinson 6/17/2015 19:59'!
do: aBlock

	| now |

	now := self now.
	self assertIsNotExpirtedAt: now.
	
	^ [ aBlock value: self ] ensure: [ lastUsedTime := now  ]! !


!CartSession methodsFor: 'error signal' stamp: 'HernanWilkinson 6/17/2015 19:56'!
signalCartSessionExpired
	
	self error: systemFacade sessionHasExpiredErrorDescription ! !


!CartSession methodsFor: 'time/expiration' stamp: 'HernanWilkinson 6/17/2015 19:59'!
now

	^systemFacade now! !

!CartSession methodsFor: 'time/expiration' stamp: 'HernanWilkinson 6/17/2015 20:13'!
today

	^systemFacade today! !

!CartSession methodsFor: 'time/expiration' stamp: 'HernanWilkinson 6/17/2015 19:59'!
assertIsNotExpirtedAt: aTime

	(self isExpiredAt: aTime) ifTrue: [ self signalCartSessionExpired ]! !

!CartSession methodsFor: 'time/expiration' stamp: 'HernanWilkinson 6/17/2015 20:04'!
isExpiredAt: aTime 
	
	^ (lastUsedTime + systemFacade sessionDuration) < aTime! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

CartSession class
	instanceVariableNames: ''!

!CartSession class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2015 19:19'!
ownedBy: aCustomer with: aCart on: aSystemFacade

	^self new initializeOwnedBy: aCustomer with: aCart on: aSystemFacade! !


TestCase subclass: #CartTest
	instanceVariableNames: 'testObjectsFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:10'!
test04CanNotAddNonPositiveNumberOfItems

	| cart |
	
	cart := testObjectsFactory createCart.
	
	self 
		should: [cart add: 0 of: testObjectsFactory itemSellByTheStore ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidQuantityErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:10'!
test02CanNotAddItemsThatDoNotBelongToStore

	| cart |
	
	cart := testObjectsFactory createCart.
	
	self 
		should: [ cart add: testObjectsFactory itemNotSellByTheStore ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidItemErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:11'!
test08CartRemembersTheNumberOfAddedItems

	| cart |
	
	cart := testObjectsFactory createCart.
	
	cart add: 2 of: testObjectsFactory itemSellByTheStore.
	self assert: (cart occurrencesOf: testObjectsFactory itemSellByTheStore) = 2! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:10'!
test01NewCartsAreCreatedEmpty

	self assert: testObjectsFactory createCart isEmpty! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:10'!
test03AfterAddingAnItemTheCartIsNotEmptyAnymore

	| cart |
	
	cart := testObjectsFactory createCart.
	
	cart add: testObjectsFactory itemSellByTheStore.
	self deny: cart isEmpty ! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:11'!
test07CartDoesNotHoldNotAddedItems

	| cart |
	
	cart := testObjectsFactory createCart.
	
	self deny: (cart includes: testObjectsFactory itemSellByTheStore)! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:10'!
test05CanNotAddMoreThanOneItemNotSellByTheStore

	| cart |
	
	cart := testObjectsFactory createCart.
	
	self 
		should: [cart add: 2 of: testObjectsFactory itemNotSellByTheStore  ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = cart invalidItemErrorMessage.
			self assert: cart isEmpty ]! !

!CartTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:11'!
test06CartRemembersAddedItems

	| cart |
	
	cart := testObjectsFactory createCart.
	
	cart add: testObjectsFactory itemSellByTheStore.
	self assert: (cart includes: testObjectsFactory itemSellByTheStore)! !


!CartTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/17/2013 18:09'!
setUp 

	testObjectsFactory := StoreTestObjectsFactory new.! !


Object subclass: #Cashier
	instanceVariableNames: 'cart salesBook merchantProcessor creditCard owner ticket'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/22/2013 12:28'!
createTicket

	| lineItems |
	
	lineItems := OrderedCollection new.
	cart itemsAndQuantitiesDo: [ :anItem :aQuantity | 
		lineItems add: (self createLineItemOf: anItem quantity: aQuantity)].
	
	ticket := Ticket of: lineItems 
	! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/22/2013 12:20'!
debitTotal

	merchantProcessor debit: ticket total from: creditCard.
	! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/22/2013 12:17'!
totalOf: anItem quantity: aQuantity 

	^(cart catalog at: anItem) * aQuantity  ! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/17/2013 19:06'!
registerSale

	salesBook add: self createSale! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/22/2013 12:17'!
createLineItemOf: anItem quantity: aQuantity 

	^LineItem of: anItem quantity: aQuantity total: (self totalOf: anItem quantity: aQuantity) ! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/22/2013 12:25'!
createSale

	^ Sale doneBy: owner certifiedWith: ticket
! !


!Cashier methodsFor: 'checkout' stamp: 'HernanWilkinson 6/22/2013 12:28'!
checkOut

	self createTicket.
	self debitTotal.
	self registerSale.

	^ ticket ! !


!Cashier methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:02'!
initializeToCheckout: aCart ownedBy: anOwner charging: aCreditCard throught: aMerchantProcessor registeringOn: aSalesBook
	
	cart := aCart.
	owner := anOwner.
	creditCard := aCreditCard.
	merchantProcessor := aMerchantProcessor.
	salesBook := aSalesBook! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cashier class
	instanceVariableNames: ''!

!Cashier class methodsFor: 'assertions' stamp: 'HernanWilkinson 6/22/2013 14:22'!
assertIsNotEmpty: aCart 
	
	aCart isEmpty ifTrue: [self signalCartCanNotBeEmpty ]! !

!Cashier class methodsFor: 'assertions' stamp: 'HernanWilkinson 6/22/2013 14:22'!
assertIsNotExpired: aCreditCard on: aDate
	
	(aCreditCard isExpiredOn: aDate) ifTrue: [self signalCanNotChargeAnExpiredCreditCard]! !


!Cashier class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 12:00'!
toCheckout: aCart ownedBy: anOwner charging: aCreditCard throught: aMerchantProcessor on: aDate registeringOn: aSalesBook
	
	self assertIsNotEmpty: aCart.
	self assertIsNotExpired: aCreditCard on: aDate.
	
	^self new initializeToCheckout: aCart ownedBy: anOwner charging: aCreditCard throught: aMerchantProcessor registeringOn: aSalesBook! !


!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 19:02'!
creditCardHasNoCreditErrorMessage
	
	^'Credit card has no credit'! !

!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 17:56'!
cartCanNotBeEmptyErrorMessage
	
	^'Can not check out an empty cart'! !

!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 18:21'!
canNotChargeAnExpiredCreditCardErrorMessage
	
	^'Can not charge an expired credit card'! !


!Cashier class methodsFor: 'error signal' stamp: 'HernanWilkinson 6/22/2013 14:22'!
signalCartCanNotBeEmpty

	self error: self cartCanNotBeEmptyErrorMessage! !

!Cashier class methodsFor: 'error signal' stamp: 'HernanWilkinson 6/22/2013 14:22'!
signalCanNotChargeAnExpiredCreditCard

	 self error: self canNotChargeAnExpiredCreditCardErrorMessage ! !


TestCase subclass: #CashierTest
	instanceVariableNames: 'testObjectsFactory debitBehavior'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:22'!
test02CalculatedTotalIsCorrect

	| cart cashier |
	
	cart := testObjectsFactory createCart.
	cart add: 2 of: testObjectsFactory itemSellByTheStore.
	
	cashier :=  Cashier
		toCheckout: cart 
		ownedBy: testObjectsFactory customer
		charging: testObjectsFactory notExpiredCreditCard 
		throught: self
		on: testObjectsFactory today 
		registeringOn: OrderedCollection new.
		
	self assert: cashier checkOut total = (testObjectsFactory itemSellByTheStorePrice * 2)! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:02'!
test06CashierDoesNotSaleWhenTheCreditCardHasNoCredit

	| cart cashier salesBook creditCard |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	creditCard := testObjectsFactory notExpiredCreditCard.
	salesBook := OrderedCollection new.
 	debitBehavior := [ :anAmount :aCreditCard | self error: Cashier creditCardHasNoCreditErrorMessage].
	
	cashier:= Cashier 
		toCheckout: cart 
		ownedBy: testObjectsFactory customer
		charging: creditCard
		throught: self
		on: testObjectsFactory today
		registeringOn: salesBook.
		
	self 
		should: [cashier checkOut ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cashier creditCardHasNoCreditErrorMessage.
			self assert: salesBook isEmpty ]! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:23'!
test04CheckoutRegistersASale

	| cart cashier salesBook total |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	salesBook := OrderedCollection new.
 
	cashier:= Cashier 
		toCheckout: cart 
		ownedBy: testObjectsFactory customer 
		charging: testObjectsFactory notExpiredCreditCard
		throught: self
		on: testObjectsFactory today
		registeringOn: salesBook.
		
	total := cashier checkOut total.
					
	self assert: salesBook size = 1.
	self assert: salesBook first total = total.! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:22'!
test05CashierChargesCreditCardUsingMerchantProcessor

	| cart cashier salesBook total creditCard debitedAmout debitedCreditCard  |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	creditCard := testObjectsFactory notExpiredCreditCard.
	salesBook := OrderedCollection new.
 
	cashier:= Cashier 
		toCheckout: cart
		ownedBy: testObjectsFactory customer 
		charging: creditCard
		throught: self
		on: testObjectsFactory today
		registeringOn: salesBook.
		
	debitBehavior := [ :anAmount :aCreditCard | 
		debitedAmout := anAmount.
		debitedCreditCard := aCreditCard ].
	total := cashier checkOut total.
					
	self assert: debitedCreditCard = creditCard.
	self assert: debitedAmout = total.! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:00'!
test01CanNotCheckoutAnEmptyCart

	| salesBook |
	
	salesBook := OrderedCollection new.
	self 
		should: [ Cashier 
			toCheckout: testObjectsFactory createCart 
			ownedBy: testObjectsFactory customer
			charging: testObjectsFactory notExpiredCreditCard 
			throught: self
			on: testObjectsFactory today
			registeringOn:  salesBook ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cashier cartCanNotBeEmptyErrorMessage.
			self assert: salesBook isEmpty ]! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/22/2013 12:01'!
test03CanNotCheckoutWithAnExpiredCreditCart

	| cart salesBook |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	salesBook := OrderedCollection new.
	
	self
		should: [ Cashier 
				toCheckout: cart 
				ownedBy: testObjectsFactory customer 
				charging: testObjectsFactory expiredCreditCard 
				throught: self
				on: testObjectsFactory today
				registeringOn: salesBook ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = Cashier canNotChargeAnExpiredCreditCardErrorMessage.
			self assert: salesBook isEmpty ]! !


!CashierTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/17/2013 19:03'!
setUp 

	testObjectsFactory := StoreTestObjectsFactory new.
	debitBehavior := [ :anAmount :aCreditCard | ]! !


!CashierTest methodsFor: 'merchant processor protocol' stamp: 'HernanWilkinson 6/17/2013 19:02'!
debit: anAmount from: aCreditCard 

	^debitBehavior value: anAmount value: aCreditCard ! !


Object subclass: #Clock
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Clock methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 14:23'!
now

	self subclassResponsibility ! !

!Clock methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 14:23'!
today

	self subclassResponsibility ! !


Object subclass: #CreditCard
	instanceVariableNames: 'expiration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CreditCard methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 10/21/2014 17:06'!
owner

	self subclassResponsibility ! !

!CreditCard methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 10/21/2014 17:06'!
address

	self subclassResponsibility ! !


!CreditCard methodsFor: 'testing' stamp: 'HernanWilkinson 6/17/2013 18:39'!
isExpiredOn: aDate 
	
	^expiration start < (Month month: aDate monthIndex year: aDate yearNumber) start ! !


!CreditCard methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 18:38'!
initializeExpiringOn: aMonth 
	
	expiration := aMonth ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

CreditCard class
	instanceVariableNames: ''!

!CreditCard class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 18:38'!
expiringOn: aMonth 
	
	^self new initializeExpiringOn: aMonth! !


Object subclass: #InterfaceRest
	instanceVariableNames: 'validUsersAndPasswords catalog lastId merchantProcessor salesBook clock cartSessions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!InterfaceRest methodsFor: 'authentication' stamp: 'HernanWilkinson 6/17/2015 19:05'!
assertIs: aUser authenticatedWith: aPassword

	(self is: aUser authenticatedWith: aPassword) ifFalse: [ self signalInvalidUserAndOrPassword ]! !

!InterfaceRest methodsFor: 'authentication' stamp: 'HernanWilkinson 6/17/2015 19:05'!
is: aUser authenticatedWith: aPassword 

	"Recordar que esto es solo un ejemplo. No se deben guardar passwords en un sistema de verdad sino un
	hash o similar - Hernan"
	
	| storedPassword |
	
	storedPassword := validUsersAndPasswords at: aUser ifAbsent: [ ^false ].
	^aPassword = storedPassword ! !


!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/22/2013 11:17'!
cartCanNotBeEmptyErrorMessage
	
	^Cashier cartCanNotBeEmptyErrorMessage ! !

!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/21/2013 23:03'!
invalidUserAndOrPasswordErrorDescription
	
	^'Invalid user and/or password'! !

!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/22/2013 11:24'!
canNotChargeAnExpiredCreditCardErrorMessage
	
	^Cashier canNotChargeAnExpiredCreditCardErrorMessage ! !

!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/22/2013 13:07'!
sessionHasExpiredErrorDescription
	
	^'Can not use the cart after ', self sessionDuration minutes printString , ' minutes of inactivity'! !

!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/21/2013 23:27'!
invalidCartIdErrorDescription
	
	^'Invalid cart id'! !

!InterfaceRest methodsFor: 'error messages' stamp: 'HernanWilkinson 6/21/2013 23:59'!
invalidItemErrorMessage
	
	^Cart invalidItemErrorMessage ! !


!InterfaceRest methodsFor: 'checkout' stamp: 'HernanWilkinson 6/17/2015 20:13'!
salesBook

	^ salesBook! !

!InterfaceRest methodsFor: 'checkout' stamp: 'HernanWilkinson 6/17/2015 20:12'!
merchantProcessor

	^ merchantProcessor! !


!InterfaceRest methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 13:02'!
now
	
	^clock now! !

!InterfaceRest methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 12:49'!
today
	
	^clock today! !


!InterfaceRest methodsFor: 'private' stamp: 'HernanWilkinson 6/22/2013 12:38'!
list: aSale on: salesOrderedByBook 

	aSale lineItemsDo: [ :aLineItem | | oldTotal newTotal |
		oldTotal := salesOrderedByBook at: aLineItem item ifAbsentPut: [ 0 ].
		newTotal := oldTotal + aLineItem total.
		salesOrderedByBook at: aLineItem item put: newTotal ]! !

!InterfaceRest methodsFor: 'private' stamp: 'HernanWilkinson 6/22/2013 14:15'!
salesDoneBy: aUser

	^ salesBook select: [ :aSale | aSale wasDoneBy: aUser ]! !


!InterfaceRest methodsFor: 'error signal' stamp: 'HernanWilkinson 6/21/2013 23:02'!
signalInvalidUserAndOrPassword
	
	self error: self invalidUserAndOrPasswordErrorDescription! !

!InterfaceRest methodsFor: 'error signal' stamp: 'HernanWilkinson 6/21/2013 23:27'!
signalInvalidCartId
	
	self error: self invalidCartIdErrorDescription ! !


!InterfaceRest methodsFor: 'cart session management' stamp: 'HernanWilkinson 6/22/2013 13:02'!
sessionDuration
	
	^30 minutes! !

!InterfaceRest methodsFor: 'cart session management' stamp: 'HernanWilkinson 6/17/2015 19:09'!
withCartSessionIdentifiedAs: aCartId do: aBlock

	| cartSession |
	
	cartSession := cartSessions at: aCartId ifAbsent: [self signalInvalidCartId ].
	^cartSession do: aBlock
! !

!InterfaceRest methodsFor: 'cart session management' stamp: 'HernanWilkinson 6/21/2013 23:32'!
generateCartId
	
	"Recuerden que esto es un ejemplo, por lo que voy a generar ids numericos consecutivos, pero en una 
	implementacion real no deberian se numeros consecutivos ni nada que genere problemas de seguridad - Hernan"
	
	lastId := lastId + 1.
	^lastId! !


!InterfaceRest methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 14:17'!
initializeAuthenticatingWith: aValidUsersAndPasswords 
	acceptingItemsOf: aCatalog 
	registeringOn: aSalesBook 
	debitingThrought: aMerchantProcessor 
	measuringTimeWith: aClock

	validUsersAndPasswords := aValidUsersAndPasswords.
	catalog := aCatalog.
	salesBook := aSalesBook.
	merchantProcessor := aMerchantProcessor.
	clock := aClock.
	
	cartSessions := Dictionary new.
	lastId := 0.! !


!InterfaceRest methodsFor: 'facade protocol' stamp: 'HernanWilkinson 6/17/2015 20:07'!
listCartIdentifiedAs: aCartId

	^ self withCartSessionIdentifiedAs: aCartId do: [ :cartSession | cartSession cartContent ]! !

!InterfaceRest methodsFor: 'facade protocol' stamp: 'HernanWilkinson 6/17/2015 19:18'!
createCartFor: aUser authenticatedWith: aPassword

	| cartId cartSession |

	self assertIs: aUser authenticatedWith: aPassword.

	cartId := self generateCartId.
	cartSession := CartSession ownedBy: aUser with: (Cart acceptingItemsOf: catalog) on: self.
	cartSessions at: cartId put: cartSession.
	
	^ cartId! !

!InterfaceRest methodsFor: 'facade protocol' stamp: 'HernanWilkinson 6/17/2015 19:06'!
listPurchasesOf: aUser authenticatingWith: aPassword

	| sales |

	self assertIs: aUser authenticatedWith: aPassword.

	sales := self salesDoneBy: aUser.	
	
	^ sales
		inject: Dictionary new
		into: [ :salesOrderedByBook :aSale | 
			self list: aSale on: salesOrderedByBook.
			salesOrderedByBook ]! !

!InterfaceRest methodsFor: 'facade protocol' stamp: 'HernanWilkinson 6/17/2015 20:07'!
add: anAmount of: aBook toCartIdentifiedAs: aCartId

	self withCartSessionIdentifiedAs: aCartId do: [ :cartSession | cartSession addToCart: anAmount of: aBook ]! !

!InterfaceRest methodsFor: 'facade protocol' stamp: 'HernanWilkinson 6/17/2015 20:11'!
checkOutCartIdentifiedAs: aCartId withCreditCardNumbered: aCreditCartNumber ownedBy: anOwner expiringOn: anExpirationMonthOfYear

	self 
		withCartSessionIdentifiedAs: aCartId 
		do: [ :cartSession | cartSession 
			checkOutCartWithCreditCardNumbered: aCreditCartNumber 
			ownedBy: anOwner 
			expiringOn: anExpirationMonthOfYear ]
! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

InterfaceRest class
	instanceVariableNames: ''!

!InterfaceRest class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 14:17'!
authenticatingWith: aValidUsersAndPasswords 
	acceptingItemsOf: aCatalog 
	registeringOn: aSalesBook 
	debitingThrought: aMerchantProcessor 
	measuringTimeWith: aClock

	^self new 
		initializeAuthenticatingWith: aValidUsersAndPasswords 
		acceptingItemsOf: aCatalog 
		registeringOn: aSalesBook 
		debitingThrought: aMerchantProcessor 
		measuringTimeWith: aClock! !


TestCase subclass: #InterfaceRestTest
	instanceVariableNames: 'testObjectsFactory clock systemFacade'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test09ListCartReturnsTheRightNumberOfItems

	| cartId cartContent |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	systemFacade add: 1 of: self validBook toCartIdentifiedAs: cartId.
	systemFacade add: 2 of: self anotherValidBook toCartIdentifiedAs: cartId.
	cartContent := systemFacade listCartIdentifiedAs: cartId.
	
	self assert: (cartContent occurrencesOf: self validBook) = 1. 
	self assert: (cartContent occurrencesOf: self anotherValidBook) = 2
! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test15CanNotListPurchasesOfInvalidCustomer

	self 
		should: [systemFacade listPurchasesOf: self invalidUser authenticatingWith: self validUserPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade invalidUserAndOrPasswordErrorDescription ]! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test16CanNotListPurchasesOfValidCustomerWithInvalidPassword

	self 
		should: [systemFacade listPurchasesOf: self validUser authenticatingWith: self invalidPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade invalidUserAndOrPasswordErrorDescription ]! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test04CanAddItemsToACreatedCart

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self
		shouldnt: [systemFacade add: 1 of: self validBook toCartIdentifiedAs: cartId]
		raise: Error - MessageNotUnderstood
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test12CanNotCheckoutAnEmptyCart

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self
		should: [systemFacade 
			checkOutCartIdentifiedAs: cartId 
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade cartCanNotBeEmptyErrorMessage ]
		
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test03CanNotCreateCartWithInvalidPassword

	self
		should: [ systemFacade createCartFor: self validUser authenticatedWith: self invalidPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = systemFacade invalidUserAndOrPasswordErrorDescription ]! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test08CanNotListCartOfInvalidCartId

	self 
		should: [systemFacade listCartIdentifiedAs: self invalidCartId] 
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = systemFacade invalidCartIdErrorDescription ]
	! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test07ListCartOfAnEmptyCartReturnsAnEmptyBag

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self assert: (systemFacade listCartIdentifiedAs: cartId) isEmpty 
	! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test11CanNotCheckoutANotCreatedCart

	self
		should: [systemFacade 
			checkOutCartIdentifiedAs: self invalidCartId  
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade invalidCartIdErrorDescription ]
		
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test17CanNotAddToCartWhenSessionIsExpired

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self advanceTime: (systemFacade sessionDuration + 1 minutes) . 
	self 
		should: [systemFacade add: 2 of: self validBook toCartIdentifiedAs: cartId]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade sessionHasExpiredErrorDescription ].

	self revertTime: systemFacade sessionDuration.
	self assert: (systemFacade listCartIdentifiedAs: cartId)	isEmpty
! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test01CanCreateCartWithValidUserAndPassword

	self 
		shouldnt: [systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword]
		raise: Error - MessageNotUnderstood ! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test06CanNotAddItemNotSellByTheStore

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self
		should: [systemFacade add: 1 of: self invalidBook toCartIdentifiedAs: cartId ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = systemFacade invalidItemErrorMessage ]
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test05CanNotAddItemToNotCreatedCart

	self
		should: [systemFacade add: 1 of: self validBook toCartIdentifiedAs: self invalidCartId]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = systemFacade invalidCartIdErrorDescription ]
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test18CanNotListCartWhenSessionIsExpired

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	self advanceTime: (systemFacade sessionDuration + 1 minutes) . 
	self 
		should: [systemFacade listCartIdentifiedAs: cartId]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade sessionHasExpiredErrorDescription ].

! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test02CanNotCreateCartWithInvalidUser

	self
		should: [ systemFacade createCartFor: self invalidUser authenticatedWith: self validUserPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = systemFacade invalidUserAndOrPasswordErrorDescription ]! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test13CanNotCheckoutWithAnExpiredCreditCard

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	systemFacade add: 1 of: self validBook toCartIdentifiedAs: cartId.
	self
		should: [systemFacade 
			checkOutCartIdentifiedAs: cartId 
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory expiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade canNotChargeAnExpiredCreditCardErrorMessage ]
		
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test14ListPurchasesIncludesBoughtItems

	| cartId purchases |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	systemFacade add: 2 of: self validBook toCartIdentifiedAs: cartId.
	systemFacade add: 1 of: self anotherValidBook toCartIdentifiedAs: cartId.
	systemFacade 
		checkOutCartIdentifiedAs: cartId 
		withCreditCardNumbered: '1111222233334444' 
		ownedBy: 'Juan Perez' 
		expiringOn: testObjectsFactory notExpiredMonthOfYear.
		
	purchases := systemFacade listPurchasesOf: self validUser authenticatingWith: self validUserPassword.

	self assert: (purchases at: self validBook) = (testObjectsFactory itemSellByTheStorePrice * 2).
	self assert: (purchases at: self anotherValidBook) = testObjectsFactory anotherItemSellByTheStorePrice.! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test10CanCheckoutACart

	| cartId  |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	systemFacade add: 1 of: self validBook toCartIdentifiedAs: cartId.
	self
		shouldnt: [systemFacade 
			checkOutCartIdentifiedAs: cartId 
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		
		! !

!InterfaceRestTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2015 19:08'!
test19CanNotCheckOutCartWhenSessionIsExpired

	| cartId |

	cartId := systemFacade createCartFor: self validUser authenticatedWith: self validUserPassword.
	systemFacade add: 2 of: self validBook toCartIdentifiedAs: cartId.
	self advanceTime: (systemFacade sessionDuration + 1 minutes) . 
	self 
		should: [systemFacade checkOutCartIdentifiedAs: cartId withCreditCardNumbered: '11' ownedBy: 'jp' expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = systemFacade sessionHasExpiredErrorDescription ].

	! !


!InterfaceRestTest methodsFor: 'merchant processor protocol' stamp: 'HernanWilkinson 6/22/2013 11:48'!
debit: anAmount from: aCreditCard 
! !


!InterfaceRestTest methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 12:53'!
advanceTime: aDuration 
	
	clock advanceTime: aDuration ! !

!InterfaceRestTest methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 13:07'!
revertTime: aDuration 
	
	clock revertTime: aDuration ! !


!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/22/2013 00:15'!
anotherValidBook
	
	^testObjectsFactory anotherItemSellByTheStore ! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 22:27'!
validUser
	
	^'validUser'! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 23:50'!
validBook
	
	^testObjectsFactory itemSellByTheStore ! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 23:06'!
invalidPassword
	
	^'invalidPassword'! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 22:28'!
validUserPassword
	
	^'validUserPassword'! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 23:25'!
invalidCartId
	
	"Devuelvo nil porque seguro que siempre sera un id invalido, no importa que sea el id - Hernan"
	^nil! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 23:49'!
invalidBook

	^testObjectsFactory itemNotSellByTheStore ! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 22:43'!
validUsersAndPasswords
	
	^Dictionary new
		at: self validUser put: self validUserPassword;
		yourself! !

!InterfaceRestTest methodsFor: 'test objects' stamp: 'HernanWilkinson 6/21/2013 22:30'!
invalidUser

	^'invalidUser'! !


!InterfaceRestTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/22/2013 11:47'!
merchantProcessor 

	^self! !

!InterfaceRestTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/17/2015 20:39'!
setUp 

	testObjectsFactory := StoreTestObjectsFactory new.
	clock := ManualClock now: testObjectsFactory today.
	systemFacade := InterfaceRest 
		authenticatingWith: self validUsersAndPasswords 
		acceptingItemsOf: testObjectsFactory defaultCatalog 
		registeringOn: self createSalesBook
		debitingThrought: self merchantProcessor 
		measuringTimeWith: clock
! !

!InterfaceRestTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/22/2013 11:42'!
createSalesBook
	
	^OrderedCollection new! !


Object subclass: #LineItem
	instanceVariableNames: 'item quantity total'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!LineItem methodsFor: 'accessing' stamp: 'HernanWilkinson 6/22/2013 12:21'!
total
	
	^ total! !

!LineItem methodsFor: 'accessing' stamp: 'HernanWilkinson 6/22/2013 12:33'!
item
	
	^ item! !


!LineItem methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:18'!
initializeOf: anItem quantity: aQuantity total: aTotal

	item := anItem.
	quantity := aQuantity.
	total := aTotal 

! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

LineItem class
	instanceVariableNames: ''!

!LineItem class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 12:18'!
of: anItem quantity: aQuantity total: aTotal

	^self new initializeOf: anItem quantity: aQuantity total: aTotal

! !


Clock subclass: #ManualClock
	instanceVariableNames: 'now'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!ManualClock methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 12:56'!
now
	
	^ now! !

!ManualClock methodsFor: 'time' stamp: 'HernanWilkinson 6/22/2013 12:53'!
today
	
	^now date! !


!ManualClock methodsFor: 'time change' stamp: 'HernanWilkinson 6/22/2013 12:54'!
advanceTime: aDuration 
	
	now := now + aDuration ! !

!ManualClock methodsFor: 'time change' stamp: 'HernanWilkinson 6/22/2013 13:08'!
revertTime: aDuration 
	
	now := now + aDuration negated ! !


!ManualClock methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:52'!
initializeNow: aTime 

	now := aTime ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

ManualClock class
	instanceVariableNames: ''!

!ManualClock class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 12:52'!
now: aTime 
	
	^self new initializeNow: aTime ! !


Object subclass: #Sale
	instanceVariableNames: 'customer ticket'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Sale methodsFor: 'testing' stamp: 'HernanWilkinson 6/22/2013 12:06'!
wasDoneBy: aCustomer

	^customer = aCustomer ! !


!Sale methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:26'!
initializeDoneBy: aCustomer certifiedWith: aTicket 

	customer := aCustomer.
	ticket := aTicket ! !


!Sale methodsFor: 'total' stamp: 'HernanWilkinson 6/22/2013 12:26'!
total
	
	^ ticket total! !


!Sale methodsFor: 'line items' stamp: 'HernanWilkinson 6/22/2013 12:33'!
lineItemsDo: aBlock
	
	^ticket lineItemsDo: aBlock ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Sale class
	instanceVariableNames: ''!

!Sale class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 12:25'!
doneBy: aCustomer certifiedWith: aTicket 

	^self new initializeDoneBy: aCustomer certifiedWith: aTicket ! !


Object subclass: #StoreTestObjectsFactory
	instanceVariableNames: 'today'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemSellByTheStore
	
	^ 'validBook'! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemNotSellByTheStore
	
	^'invalidBook'! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/22/2013 00:16'!
anotherItemSellByTheStorePrice
	
	^15! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/22/2013 00:16'!
anotherItemSellByTheStore
	
	^'anotherValidBook'! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemSellByTheStorePrice
	
	^10! !


!StoreTestObjectsFactory methodsFor: 'cart' stamp: 'HernanWilkinson 6/17/2013 18:08'!
createCart
	
	^Cart acceptingItemsOf: self defaultCatalog! !

!StoreTestObjectsFactory methodsFor: 'cart' stamp: 'HernanWilkinson 6/22/2013 00:16'!
defaultCatalog
	
	^ Dictionary new
		at: self itemSellByTheStore put: self itemSellByTheStorePrice;
		at: self anotherItemSellByTheStore put: self anotherItemSellByTheStorePrice;
		yourself ! !


!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:24'!
expiredMonthOfYear 

	^ Month month: today monthIndex year: today yearNumber - 1! !

!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:06'!
notExpiredCreditCard
	
	^CreditCard expiringOn: self notExpiredMonthOfYear! !

!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:06'!
notExpiredMonthOfYear

	^ Month month: today monthIndex year: today yearNumber + 1! !

!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:24'!
expiredCreditCard
	
	^CreditCard expiringOn: self expiredMonthOfYear ! !


!StoreTestObjectsFactory methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 18:37'!
initialize

	today := DateAndTime now! !


!StoreTestObjectsFactory methodsFor: 'date' stamp: 'HernanWilkinson 6/17/2013 18:37'!
today
	
	^ today! !


!StoreTestObjectsFactory methodsFor: 'customer' stamp: 'HernanWilkinson 6/22/2013 12:02'!
customer
	
	^'aCustomer'! !


Object subclass: #Ticket
	instanceVariableNames: 'lineItems'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Ticket methodsFor: 'total' stamp: 'HernanWilkinson 6/17/2015 19:03'!
total
	
	^lineItems sum: [ :aLineItem | aLineItem total]! !


!Ticket methodsFor: 'initialization' stamp: 'HernanWilkinson 6/22/2013 12:20'!
initializeOf: aCollectionOfLineItems 

	lineItems := aCollectionOfLineItems ! !


!Ticket methodsFor: 'line items' stamp: 'HernanWilkinson 6/22/2013 12:33'!
lineItemsDo: aBlock
	
	^lineItems do: aBlock ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Ticket class
	instanceVariableNames: ''!

!Ticket class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/22/2013 12:20'!
of: aCollectionOfLineItems

	^self new initializeOf: aCollectionOfLineItems ! !
