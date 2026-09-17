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


!Cart methodsFor: 'assertions' stamp: 'HernanWilkinson 6/17/2013 18:06'!
assertIsValidItem: anItem

	(catalog includesKey: anItem) ifFalse: [ self error: self invalidItemErrorMessage ]! !

!Cart methodsFor: 'assertions' stamp: 'HernanWilkinson 6/17/2013 17:51'!
assertIsValidQuantity: aQuantity

	aQuantity strictlyPositive ifFalse: [ self error: self invalidQuantityErrorMessage ]! !


!Cart methodsFor: 'content' stamp: 'HernanWilkinson 6/22/2013 00:20'!
content
	
	^Bag new
		addAll: items;
		yourself ! !


!Cart methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 17:48'!
initializeAcceptingItemsOf: aCatalog

	catalog := aCatalog.
	items := OrderedCollection new.! !


!Cart methodsFor: 'queries' stamp: 'HernanWilkinson 6/17/2013 17:45'!
occurrencesOf: anItem

	^items occurrencesOf: anItem  ! !


!Cart methodsFor: 'testing' stamp: 'HernanWilkinson 6/17/2013 17:44'!
includes: anItem

	^items includes: anItem ! !

!Cart methodsFor: 'testing' stamp: 'HernanWilkinson 6/17/2013 17:44'!
isEmpty
	
	^items isEmpty ! !


!Cart methodsFor: 'total' stamp: 'HernanWilkinson 6/17/2013 19:09'!
total

	^ items sum: [ :anItem | catalog at: anItem ]! !


!Cart methodsFor: 'adding' stamp: 'HernanWilkinson 6/17/2013 17:51'!
add: aQuantity of: anItem

	self assertIsValidQuantity: aQuantity.
	self assertIsValidItem: anItem.

	1 to: aQuantity do: [ :aNumber | items add: anItem ]! !

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
	instanceVariableNames: 'cart salesBook merchantProcessor creditCard total'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/17/2013 19:06'!
registerSale

	salesBook add: self createSale! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/17/2013 19:07'!
createSale

	^ Sale of: total
! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/17/2013 19:08'!
calculateTotal

	total := cart total.
	! !

!Cashier methodsFor: 'checkout - private' stamp: 'HernanWilkinson 6/17/2013 19:06'!
debitTotal

	merchantProcessor debit: total from: creditCard.
	! !


!Cashier methodsFor: 'checkout' stamp: 'HernanWilkinson 6/17/2013 19:06'!
checkOut

	self calculateTotal.
	self debitTotal.
	self registerSale.

	^ total! !


!Cashier methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 18:53'!
initializeToCheckout: aCart charging: aCreditCard throught: aMerchantProcessor registeringOn: aSalesBook
	
	cart := aCart.
	creditCard := aCreditCard.
	merchantProcessor := aMerchantProcessor.
	salesBook := aSalesBook! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Cashier class
	instanceVariableNames: ''!

!Cashier class methodsFor: 'assertions' stamp: 'HernanWilkinson 6/17/2013 18:22'!
assertIsNotEmpty: aCart 
	
	aCart isEmpty ifTrue: [self error: self cartCanNotBeEmptyErrorMessage ]! !

!Cashier class methodsFor: 'assertions' stamp: 'HernanWilkinson 6/17/2013 18:23'!
assertIsNotExpired: aCreditCard on: aDate
	
	(aCreditCard isExpiredOn: aDate) ifTrue: [ self error: self canNotChargeAnExpiredCreditCardErrorMessage ]! !


!Cashier class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 18:51'!
toCheckout: aCart charging: aCreditCard throught: aMerchantProcessor on: aDate registeringOn: aSalesBook
	
	self assertIsNotEmpty: aCart.
	self assertIsNotExpired: aCreditCard on: aDate.
	
	^self new initializeToCheckout: aCart charging: aCreditCard throught: aMerchantProcessor registeringOn: aSalesBook! !


!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 19:02'!
creditCardHasNoCreditErrorMessage
	
	^'Credit card has no credit'! !

!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 17:56'!
cartCanNotBeEmptyErrorMessage
	
	^'Can not check out an empty cart'! !

!Cashier class methodsFor: 'error messages' stamp: 'HernanWilkinson 6/17/2013 18:21'!
canNotChargeAnExpiredCreditCardErrorMessage
	
	^'Can not charge an expired credit card'! !


TestCase subclass: #CashierTest
	instanceVariableNames: 'testObjectsFactory debitBehavior'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:51'!
test03CanNotCheckoutWithAnExpiredCreditCart

	| cart salesBook |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	salesBook := OrderedCollection new.
	
	self
		should: [ Cashier 
				toCheckout: cart 
				charging: testObjectsFactory expiredCreditCard 
				throught: self
				on: testObjectsFactory today
				registeringOn: salesBook ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = Cashier canNotChargeAnExpiredCreditCardErrorMessage.
			self assert: salesBook isEmpty ]! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 19:04'!
test04CheckoutRegistersASale

	| cart cashier salesBook total |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	salesBook := OrderedCollection new.
 
	cashier:= Cashier 
		toCheckout: cart 
		charging: testObjectsFactory notExpiredCreditCard
		throught: self
		on: testObjectsFactory today
		registeringOn: salesBook.
		
	total := cashier checkOut.
					
	self assert: salesBook size = 1.
	self assert: salesBook first total = total.! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:59'!
test06CashierDoesNotSaleWhenTheCreditCardHasNoCredit

	| cart cashier salesBook creditCard |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	creditCard := testObjectsFactory notExpiredCreditCard.
	salesBook := OrderedCollection new.
 	debitBehavior := [ :anAmount :aCreditCard | self error: Cashier creditCardHasNoCreditErrorMessage].
	
	cashier:= Cashier 
		toCheckout: cart 
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

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 19:00'!
test05CashierChargesCreditCardUsingMerchantProcessor

	| cart cashier salesBook total creditCard debitedAmout debitedCreditCard  |

	cart := testObjectsFactory createCart.
	cart add: testObjectsFactory itemSellByTheStore.
	creditCard := testObjectsFactory notExpiredCreditCard.
	salesBook := OrderedCollection new.
 
	cashier:= Cashier 
		toCheckout: cart 
		charging: creditCard
		throught: self
		on: testObjectsFactory today
		registeringOn: salesBook.
		
	debitBehavior := [ :anAmount :aCreditCard | 
		debitedAmout := anAmount.
		debitedCreditCard := aCreditCard ].
	total := cashier checkOut.
					
	self assert: debitedCreditCard = creditCard.
	self assert: debitedAmout = total.! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:50'!
test01CanNotCheckoutAnEmptyCart

	| salesBook |
	
	salesBook := OrderedCollection new.
	self 
		should: [ Cashier 
			toCheckout: testObjectsFactory createCart 
			charging: testObjectsFactory notExpiredCreditCard 
			throught: self
			on: testObjectsFactory today
			registeringOn:  salesBook ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = Cashier cartCanNotBeEmptyErrorMessage.
			self assert: salesBook isEmpty ]! !

!CashierTest methodsFor: 'tests' stamp: 'HernanWilkinson 6/17/2013 18:51'!
test02CalculatedTotalIsCorrect

	| cart cashier |
	
	cart := testObjectsFactory createCart.
	cart add: 2 of: testObjectsFactory itemSellByTheStore.
	
	cashier :=  Cashier
		toCheckout: cart 
		charging: testObjectsFactory notExpiredCreditCard 
		throught: self
		on: testObjectsFactory today 
		registeringOn: OrderedCollection new.
		
	self assert: cashier checkOut = (testObjectsFactory itemSellByTheStorePrice * 2)! !


!CashierTest methodsFor: 'setup' stamp: 'HernanWilkinson 6/17/2013 19:03'!
setUp 

	testObjectsFactory := StoreTestObjectsFactory new.
	debitBehavior := [ :anAmount :aCreditCard | ]! !


!CashierTest methodsFor: 'merchant processor protocol' stamp: 'HernanWilkinson 6/17/2013 19:02'!
debit: anAmount from: aCreditCard 

	^debitBehavior value: anAmount value: aCreditCard ! !


Object subclass: #CreditCard
	instanceVariableNames: 'expiration'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

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


Object subclass: #RestInterface
	instanceVariableNames: 'validUsersAndPasswords carts catalog lastId'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:32'!
generateCartId
	
	"Recuerden que esto es un ejemplo, por lo que voy a generar ids numericos consecutivos, pero en una 
	implementacion real no deberian se numeros consecutivos ni nada que genere problemas de seguridad - Hernan"
	
	lastId := lastId + 1.
	^lastId! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:19'!
listCartIdentifiedAs: aCartId

	| cart |
	
	cart := carts at: aCartId ifAbsent: [ self signalInvalidCartId ].
	
	^cart content! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:27'!
signalInvalidCartId
	
	self error: self invalidCartIdErrorDescription ! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:27'!
invalidCartIdErrorDescription
	
	^'Invalid cart id'! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 11:09'!
checkOutCartIdentifiedAs: aCartId withCreditCardNumbered: aCreditCartNumber ownedBy: anOwner expiringOn: aExpirationMonthOfYear

	! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:58'!
add: aBook quantity: anAmount toCartIdentifiedAs: aCartId

	| cart |
	
	cart := carts at: aCartId ifAbsent: [ self signalInvalidCartId ].
	cart add: anAmount of: aBook ! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:52'!
initializeAuthenticatingWith: aValidUsersAndPasswords acceptingItemsOf: aCatalog

	validUsersAndPasswords := aValidUsersAndPasswords.
	catalog := aCatalog.
	carts := Dictionary new.
	lastId := 0.! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:07'!
is: aUser authenticatingWith: aPassword 

	"Recordar que esto es solo un ejemplo. No se deben guardar passwords en un sistema de verdad sino un
	hash o similar - Hernan"
	
	| storedPassword |
	
	storedPassword := validUsersAndPasswords at: aUser ifAbsent: [ ^false ].
	^aPassword = storedPassword ! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:02'!
signalInvalidUserAndOrPassword
	
	self error: self invalidUserAndOrPasswordErrorDescription! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:03'!
invalidUserAndOrPasswordErrorDescription
	
	^'Invalid user and/or password'! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:34'!
createCartFor: aUser authenticatedWith: aPassword

	| cartId |
	
	(self is: aUser authenticatingWith: aPassword) ifFalse: [ self signalInvalidUserAndOrPassword ].
	
	cartId := self generateCartId.
	carts at: cartId put: (Cart acceptingItemsOf: catalog).
	
	^cartId ! !

!RestInterface methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:59'!
invalidItemErrorMessage
	
	^Cart invalidItemErrorMessage ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

RestInterface class
	instanceVariableNames: ''!

!RestInterface class methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:51'!
authenticatingWith: aValidUsersAndPasswords acceptingItemsOf: aCatalog

	^self new initializeAuthenticatingWith: aValidUsersAndPasswords acceptingItemsOf: aCatalog! !


TestCase subclass: #RestInterfaceTest
	instanceVariableNames: 'testObjectsFactory'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:15'!
test04CanAddItemsToACreatedCart

	| interface cartId |

	interface := self createDefaultInterface.

	cartId := interface createCartFor: self validUser authenticatedWith: self validUserPassword.
	self
		shouldnt: [interface add: self validBook quantity: 1 toCartIdentifiedAs: cartId]
		raise: Error - MessageNotUnderstood
		! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:06'!
test03CanNotCreateCartWithInvalidPassword

	| interface |

	interface := self createDefaultInterface.

	self
		should: [ interface createCartFor: self validUser authenticatedWith: self invalidPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = interface invalidUserAndOrPasswordErrorDescription ]! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:08'!
test08CanNotListCartOfInvalidCartId

	| interface |

	interface := self createDefaultInterface.

	self 
		should: [interface listCartIdentifiedAs: self invalidCartId] 
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = interface invalidCartIdErrorDescription ]
	! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:05'!
test07ListCartOfAnEmptyCartReturnsAnEmptyBag

	| interface cartId |

	interface := self createDefaultInterface.

	cartId := interface createCartFor: self validUser authenticatedWith: self validUserPassword.
	self assert: (interface listCartIdentifiedAs: cartId) isEmpty 
	! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:06'!
invalidPassword
	
	^'invalidPassword'! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:49'!
invalidBook

	^testObjectsFactory itemNotSellByTheStore ! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:05'!
test01CanCreateCartWithValidUserAndPassword

	| interface |
	
	interface := self createDefaultInterface.

	self 
		shouldnt: [interface createCartFor: self validUser authenticatedWith: self validUserPassword]
		raise: Error - MessageNotUnderstood ! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 11:10'!
test11CanNotCheckoutANotCreatedCart

	| interface |

	interface := self createDefaultInterface.

	self
		should: [interface 
			checkOutCartIdentifiedAs: self invalidCartId  
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError |
			self assert: anError messageText = interface invalidCartIdErrorDescription ]
		
		! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:41'!
test06CanNotAddItemNotSellByTheStore

	| interface cartId |

	interface := self createDefaultInterface.

	cartId := interface createCartFor: self validUser authenticatedWith: self validUserPassword.
	self
		should: [interface add: self invalidBook quantity: 1 toCartIdentifiedAs: cartId ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = interface invalidItemErrorMessage ]
		! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 22:43'!
validUsersAndPasswords
	
	^Dictionary new
		at: self validUser put: self validUserPassword;
		yourself! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 22:27'!
validUser
	
	^'validUser'! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:24'!
test05CanNotAddItemToNotCreatedCart

	| interface |

	interface := self createDefaultInterface.

	self
		should: [interface add: self validBook quantity: 1 toCartIdentifiedAs: self invalidCartId]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = interface invalidCartIdErrorDescription ]
		! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 22:30'!
invalidUser

	^'invalidUser'! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:03'!
test02CanNotCreateCartWithInvalidUser

	| interface |

	interface := self createDefaultInterface.

	self
		should: [ interface createCartFor: self invalidUser authenticatedWith: self validUserPassword ]
		raise: Error - MessageNotUnderstood
		withExceptionDo: [ :anError | 
			self assert: anError messageText = interface invalidUserAndOrPasswordErrorDescription ]! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 22:28'!
validUserPassword
	
	^'validUserPassword'! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:25'!
invalidCartId
	
	"Devuelvo nil porque seguro que siempre sera un id invalido, no importa que sea el id - Hernan"
	^nil! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:43'!
createDefaultInterface
	
	^RestInterface authenticatingWith: self validUsersAndPasswords acceptingItemsOf: testObjectsFactory defaultCatalog ! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:15'!
anotherValidBook
	
	^testObjectsFactory anotherItemSellByTheStore ! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:50'!
validBook
	
	^testObjectsFactory itemSellByTheStore ! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 11:08'!
test10CanCheckoutACart

	| interface cartId  |

	interface := self createDefaultInterface.

	cartId := interface createCartFor: self validUser authenticatedWith: self validUserPassword.
	interface add: self validBook quantity: 1 toCartIdentifiedAs: cartId.
	self
		shouldnt: [interface 
			checkOutCartIdentifiedAs: cartId 
			withCreditCardNumbered: '1111222233334444' 
			ownedBy: 'Juan Perez' 
			expiringOn: testObjectsFactory notExpiredMonthOfYear ]
		raise: Error - MessageNotUnderstood
		
		! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/21/2013 23:43'!
setUp 

	testObjectsFactory := StoreTestObjectsFactory new.
! !

!RestInterfaceTest methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:15'!
test09ListCartReturnsTheRightNumberOfItems

	| interface cartId cartContent |

	interface := self createDefaultInterface.

	cartId := interface createCartFor: self validUser authenticatedWith: self validUserPassword.
	interface add: self validBook quantity: 1 toCartIdentifiedAs: cartId.
	interface add: self anotherValidBook quantity: 2 toCartIdentifiedAs: cartId.
	cartContent := interface listCartIdentifiedAs: cartId.
	
	self assert: (cartContent occurrencesOf: self validBook) = 1. 
	self assert: (cartContent occurrencesOf: self anotherValidBook) = 2
! !


Object subclass: #Sale
	instanceVariableNames: 'total'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!Sale methodsFor: 'total' stamp: 'HernanWilkinson 6/17/2013 18:48'!
total
	
	^ total! !


!Sale methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 18:47'!
initializeTotal: aTotal

	total := aTotal ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

Sale class
	instanceVariableNames: ''!

!Sale class methodsFor: 'instance creation' stamp: 'HernanWilkinson 6/17/2013 18:47'!
of: aTotal

	"should assert total is not negative or 0!!"
	^self new initializeTotal: aTotal ! !


Object subclass: #StoreTestObjectsFactory
	instanceVariableNames: 'today'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TusLibros'!

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemNotSellByTheStore
	
	^'invalidBook'! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemSellByTheStore
	
	^ 'validBook'! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/17/2013 18:08'!
itemSellByTheStorePrice
	
	^10! !

!StoreTestObjectsFactory methodsFor: 'items' stamp: 'HernanWilkinson 6/22/2013 00:16'!
anotherItemSellByTheStorePrice
	
	^15! !


!StoreTestObjectsFactory methodsFor: 'cart' stamp: 'HernanWilkinson 6/17/2013 18:08'!
createCart
	
	^Cart acceptingItemsOf: self defaultCatalog! !

!StoreTestObjectsFactory methodsFor: 'cart' stamp: 'HernanWilkinson 6/22/2013 00:16'!
defaultCatalog
	
	^ Dictionary new
		at: self itemSellByTheStore put: self itemSellByTheStorePrice;
		at: self anotherItemSellByTheStore put: self anotherItemSellByTheStorePrice;
		yourself ! !


!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:06'!
notExpiredCreditCard
	
	^CreditCard expiringOn: self notExpiredMonthOfYear! !

!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/17/2013 18:37'!
expiredCreditCard
	
	^CreditCard expiringOn: (Month month: today monthIndex year: today yearNumber - 1)! !

!StoreTestObjectsFactory methodsFor: 'credit card' stamp: 'HernanWilkinson 6/22/2013 11:06'!
notExpiredMonthOfYear

	^ Month month: today monthIndex year: today yearNumber + 1! !


!StoreTestObjectsFactory methodsFor: 'initialization' stamp: 'HernanWilkinson 6/17/2013 18:37'!
initialize

	today := DateAndTime now! !


!StoreTestObjectsFactory methodsFor: 'date' stamp: 'HernanWilkinson 6/17/2013 18:37'!
today
	
	^ today! !


!StoreTestObjectsFactory methodsFor: 'as yet unclassified' stamp: 'HernanWilkinson 6/22/2013 00:16'!
anotherItemSellByTheStore
	
	^'anotherValidBook'! !
