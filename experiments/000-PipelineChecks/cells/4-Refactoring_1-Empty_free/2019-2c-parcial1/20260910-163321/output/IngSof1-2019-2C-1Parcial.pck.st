'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 4:37:01 pm'!
'Description '!
!provides: 'IngSof1-2019-2C-1Parcial' 1 0!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial'!


!classDefinition: #CoffeeShopCustomer category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomer
	instanceVariableNames: 'name customerType'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopReward category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopReward
	instanceVariableNames: 'price quantity product'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopReward class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopReward class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopSalesSystem category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopSalesSystem
	instanceVariableNames: 'sales'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopSalesSystem class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopSalesSystem class
	instanceVariableNames: ''!

!classDefinition: #CustomerType category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
CustomerType class
	instanceVariableNames: ''!

!classDefinition: #GoldCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CustomerType subclass: #GoldCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'GoldCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
GoldCustomerType class
	instanceVariableNames: ''!

!classDefinition: #NormalCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CustomerType subclass: #NormalCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'NormalCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
NormalCustomerType class
	instanceVariableNames: ''!

!classDefinition: #SilverCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CustomerType subclass: #SilverCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'SilverCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
SilverCustomerType class
	instanceVariableNames: ''!

!classDefinition: #Product category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #Product
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Product class' category: #'IngSof1-2019-2C-1Parcial'!
Product class
	instanceVariableNames: ''!

!classDefinition: #Combo1Product category: #'IngSof1-2019-2C-1Parcial'!
Product subclass: #Combo1Product
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo1Product class' category: #'IngSof1-2019-2C-1Parcial'!
Combo1Product class
	instanceVariableNames: ''!

!classDefinition: #Combo2Product category: #'IngSof1-2019-2C-1Parcial'!
Product subclass: #Combo2Product
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo2Product class' category: #'IngSof1-2019-2C-1Parcial'!
Combo2Product class
	instanceVariableNames: ''!

!classDefinition: #RewardRule category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #RewardRule
	instanceVariableNames: 'product'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'RewardRule class' category: #'IngSof1-2019-2C-1Parcial'!
RewardRule class
	instanceVariableNames: ''!

!classDefinition: #Combo1RewardRule category: #'IngSof1-2019-2C-1Parcial'!
RewardRule subclass: #Combo1RewardRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo1RewardRule class' category: #'IngSof1-2019-2C-1Parcial'!
Combo1RewardRule class
	instanceVariableNames: ''!

!classDefinition: #Combo2RewardRule category: #'IngSof1-2019-2C-1Parcial'!
RewardRule subclass: #Combo2RewardRule
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo2RewardRule class' category: #'IngSof1-2019-2C-1Parcial'!
Combo2RewardRule class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopTest category: #'IngSof1-2019-2C-1Parcial'!
TestCase subclass: #CoffeeShopTest
	instanceVariableNames: 'billGates adaLovelace alanKay salesSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopTest class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopTest class
	instanceVariableNames: ''!


!CoffeeShopCustomer methodsFor: 'type' stamp: 'HAW 10/Sep/2026, 7:34:37 pm (UTC)'!
type

	^customerType! !

!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 7:34:39 pm (UTC)'!
initializeNamed: aName ofType: aType

	name := aName.
	customerType := self typeObjectFor: aType! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'private' stamp: 'HAW 10/Sep/2026, 7:34:40 pm (UTC)'!
typeObjectFor: aTypeSymbol
	aTypeSymbol = #Gold ifTrue: [ ^GoldCustomerType new ].
	aTypeSymbol = #Silver ifTrue: [ ^SilverCustomerType new ].
	aTypeSymbol = #Normal ifTrue: [ ^NormalCustomerType new ].
	self error: 'Invalid customer type'! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 20/Sep/2019, 8:54:42 pm (UTC)'!
price

	^price! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 21/Sep/2019, 7:31:13 pm (UTC)'!
quantity

	^quantity ! !

!CoffeeShopReward methodsFor: 'initialization' stamp: 'HAW 22/Sep/2019, 10:08:08 pm (UTC)'!
initializeOf: aProduct at: aPrice quantity: aQuantity

	product := aProduct.
	price := aPrice.
	quantity := aQuantity
	! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:07:57 pm (UTC)'!
isForCombo1
	
	^product = #Combo1! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:07:57 pm (UTC)'!
isForCombo2
	
	^product = #Combo2! !

!CoffeeShopReward class methodsFor: 'instance creation' stamp: 'HAW 20/Sep/2019, 8:53:14 pm (UTC)'!
of: aComboType at: aPrice quantity: aQuantity

	^self new initializeOf: aComboType at: aPrice quantity: aQuantity
! !

!CoffeeShopSalesSystem methodsFor: 'product volume' stamp: 'HAW 10/Sep/2026, 7:34:44 pm (UTC)'!
volumeOf: aProduct

	aProduct = #Combo1 ifTrue: [ ^Combo1Product new volume ].
	aProduct = #Combo2 ifTrue: [ ^Combo2Product new volume ].

	self error: 'Invalid product'! !

!CoffeeShopSalesSystem methodsFor: 'initialization' stamp: 'HAW 20/Sep/2019, 8:17:34 pm (UTC)'!
initialize

	sales := Dictionary new! !

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 22/Sep/2019, 10:06:50 pm (UTC)'!
registerSaleTo: aCustomer of: aProduct

	| salesToCustomer |

	salesToCustomer := sales at: aCustomer ifAbsentPut: [ OrderedCollection new ].
	salesToCustomer add: aProduct ! !

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 20/Sep/2019, 8:24:49 pm (UTC)'!
salesMadeTo: aCustomer

	^sales at: aCustomer ifAbsent: [ #() ]! !

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 22/Sep/2019, 10:51:19 pm (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | self volumeOf: aProduct ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| salesToCustomer volumeSoldToCustomer rewardRule |

	salesToCustomer := self salesMadeTo: aCustomer.
	volumeSoldToCustomer := self volumeSoldTo: aCustomer.
	
	rewardRule := RewardRule for: volumeSoldToCustomer ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer.
	! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!CustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:25 pm (UTC)'!
rewardPriceFor:aProduct
	self subclassResponsibility! !

!GoldCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:28 pm (UTC)'!
fixedRewardPrice:aPrice
	^75*peso! !

!GoldCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:26 pm (UTC)'!
rewardPriceFor:aProduct
	^aProduct price / 2! !

!NormalCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:29 pm (UTC)'!
fixedRewardPrice:aPrice
	^97*peso! !

!NormalCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:27 pm (UTC)'!
rewardPriceFor:aProduct
	^aProduct price * 9 / 10! !

!SilverCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:29 pm (UTC)'!
fixedRewardPrice:aPrice
	^83*peso! !

!SilverCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 7:34:26 pm (UTC)'!
rewardPriceFor:aProduct
	^aProduct price * 3 / 4! !

!Combo1Product methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 7:36:43 pm (UTC)'!
price
	^150*peso! !

!Combo1Product methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 7:36:43 pm (UTC)'!
volume
	^250*milliliter! !

!Combo1Product methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 7:34:19 pm (UTC)'!
isCombo1
	^true! !

!Combo1Product methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 7:34:20 pm (UTC)'!
isCombo2
	^false! !

!Combo2Product methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 7:36:44 pm (UTC)'!
price
	^120*peso! !

!Combo2Product methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 7:36:44 pm (UTC)'!
volume
	^100*milliliter! !

!Combo2Product methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 7:34:22 pm (UTC)'!
isCombo1
	^false! !

!Combo2Product methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 7:34:22 pm (UTC)'!
isCombo2
	^true! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:03:50 pm (UTC)'!
createRewardFor: aCustomer 
	
	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'product price' stamp: 'HAW 10/Sep/2026, 7:34:46 pm (UTC)'!
priceOf: aProduct

	aProduct = #Combo1 ifTrue: [ ^Combo1Product new price ].
	aProduct = #Combo2 ifTrue: [ ^Combo2Product new price ].

	self error: 'Invalid combo type'! !

!RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 
		
	self subclassResponsibility ! !

!RewardRule class methodsFor: 'instance creation' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
for: volumeSoldToCustomer ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aRuleClass | aRuleClass isFor: volumeSoldToCustomer ] 
		ifFound: [ :aRuleClass | aRuleClass new ]
		ifNone: aNoneBlock ! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 7:34:52 pm (UTC)'!
createRewardFor: aCustomer 
	
	| productSymbol price |
	
	productSymbol := self rewardedProduct.
	price := aCustomer type fixedRewardPrice: 0.
	
	^CoffeeShopReward of: productSymbol at: price quantity: self productQuantity! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:54:35 pm (UTC)'!
productQuantity
	
	^2! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:01:41 pm (UTC)'!
rewardedProduct
	
	^#Combo1! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 7:34:50 pm (UTC)'!
createRewardFor: aCustomer 
	
	| productSymbol productObject price |
	
	productSymbol := self rewardedProduct.
	productObject := Combo2Product new.
	price := aCustomer type rewardPriceFor: productObject.
	
	^CoffeeShopReward of: productSymbol at: price quantity: self productQuantity! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:00:28 pm (UTC)'!
rewardedProduct
	
	^#Combo2! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 10/Sep/2026, 7:36:40 pm (UTC)'!
setUp

	UnitsTestResource current installUnitsAsGlobals.
	
	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: #Gold.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: #Silver.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: #Normal! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 20/Sep/2019, 8:15:53 pm (UTC)'!
combo1

	^#Combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 20/Sep/2019, 8:21:01 pm (UTC)'!
combo2

	^#Combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 23/Sep/2019, 12:41:51 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	salesSystem := CoffeeShopSalesSystem new.

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 7:35:16 pm (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self verifySalesTo: adaLovelace ofProduct: self combo1 count: 1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 7:35:17 pm (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self verifySalesTo: adaLovelace ofProduct: self combo1 count: 1.
	self verifySalesTo: alanKay ofProduct: self combo2 count: 1! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 23/Sep/2019, 12:41:51 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	salesSystem := CoffeeShopSalesSystem new.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 0*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 23/Sep/2019, 12:46:19 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 250*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 23/Sep/2019, 12:46:07 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 100*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 23/Sep/2019, 12:46:41 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: (250*milliliter)+(100*milliliter) equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 23/Sep/2019, 12:48:39 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:02 pm (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self verifyCombo2RewardFor: adaLovelace quantity: 1 price: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:04 pm (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self verifyCombo2RewardFor: alanKay quantity: 1 price: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:05 pm (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self verifyCombo2RewardFor: billGates quantity: 1 price: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:06 pm (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self verifyRewardFor: adaLovelace withCombo1: true quantity: 2 price: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:07 pm (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self verifyRewardFor: alanKay withCombo1: true quantity: 2 price: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 7:35:08 pm (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self verifyRewardFor: billGates withCombo1: true quantity: 2 price: 97*peso! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 10/Sep/2026, 7:35:00 pm (UTC)'!
verifyCombo2RewardFor: aCustomer quantity: expectedQuantity price: expectedPrice
	
	| reward |
	
	salesSystem := CoffeeShopSalesSystem new.
	
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2.
	
	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].
	
	self assert: expectedQuantity equals: reward quantity.
	self assert: reward isForCombo2.
	self assert: expectedPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 10/Sep/2026, 7:34:58 pm (UTC)'!
verifyRewardFor: aCustomer withCombo1: isCombo1 quantity: expectedQuantity price: expectedPrice
	
	| reward |
	
	salesSystem := CoffeeShopSalesSystem new.
	
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2.
	
	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].
	
	self assert: expectedQuantity equals: reward quantity.
	isCombo1 
		ifTrue: [ self assert: reward isForCombo1 ]
		ifFalse: [ self assert: reward isForCombo2 ].
	self assert: expectedPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 10/Sep/2026, 7:35:13 pm (UTC)'!
verifySalesTo: aCustomer ofProduct: aProduct count: expectedCount

	| sales |
	
	sales := salesSystem salesMadeTo: aCustomer.
	self assert: expectedCount equals: sales size.
	self assert: expectedCount equals: (sales count: [ :product | product = aProduct ])! !
CoffeeShopSalesSystem initialize!
