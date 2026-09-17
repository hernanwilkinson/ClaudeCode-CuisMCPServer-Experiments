'From Cuis7.9 [latest update: #8185] on 15 September 2026 at 10:44:10 pm'!
'Description '!
!provides: 'IngSof1-2019-2C-1Parcial' 1 0!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial'!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial-Tests'!


!classDefinition: #CoffeeShopCustomer category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomer
	instanceVariableNames: 'name type'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopCustomerType category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType class
	instanceVariableNames: ''!

!classDefinition: #GoldCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #GoldCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'GoldCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
GoldCustomerType class
	instanceVariableNames: ''!

!classDefinition: #NormalCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #NormalCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'NormalCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
NormalCustomerType class
	instanceVariableNames: ''!

!classDefinition: #SilverCustomerType category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #SilverCustomerType
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'SilverCustomerType class' category: #'IngSof1-2019-2C-1Parcial'!
SilverCustomerType class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopProduct category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopProduct
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopProduct class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct class
	instanceVariableNames: ''!

!classDefinition: #Combo1 category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #Combo1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo1 class' category: #'IngSof1-2019-2C-1Parcial'!
Combo1 class
	instanceVariableNames: ''!

!classDefinition: #Combo2 category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #Combo2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo2 class' category: #'IngSof1-2019-2C-1Parcial'!
Combo2 class
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

!classDefinition: #RewardRule category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #RewardRule
	instanceVariableNames: ''
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

!classDefinition: #CoffeeShopTest category: #'IngSof1-2019-2C-1Parcial-Tests'!
TestCase subclass: #CoffeeShopTest
	instanceVariableNames: 'billGates adaLovelace alanKay salesSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial-Tests'!
!classDefinition: 'CoffeeShopTest class' category: #'IngSof1-2019-2C-1Parcial-Tests'!
CoffeeShopTest class
	instanceVariableNames: ''!


!CoffeeShopCustomerType commentStamp: '<historical>' prior: 0!
I represent the type of a customer of Ada's Coffee Shop. My subclasses are used as objects, each one knowing how to ask a reward rule for the price a customer of my type has to pay.!

!GoldCustomerType commentStamp: '<historical>' prior: 0!
I am the type of the customers rewarded with the gold price.!

!NormalCustomerType commentStamp: '<historical>' prior: 0!
I am the type of the customers rewarded with the normal price.!

!SilverCustomerType commentStamp: '<historical>' prior: 0!
I am the type of the customers rewarded with the silver price.!

!CoffeeShopProduct commentStamp: '<historical>' prior: 0!
I represent a product sold by Ada's Coffee Shop. My subclasses are used as objects, each one knowing its price and the volume of coffee it includes.!

!Combo1 commentStamp: '<historical>' prior: 0!
I am the product that costs 150 pesos and includes 250 milliliters of coffee.!

!Combo2 commentStamp: '<historical>' prior: 0!
I am the product that costs 120 pesos and includes 100 milliliters of coffee.!

!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 21/Sep/2019, 4:00:45 pm (UTC)'!
initializeNamed: aName ofType: aType

	name := aName.
	type := aType ! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
priceForRewardRule: aRewardRule

	^type priceForRewardRule: aRewardRule! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopCustomerType class methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
priceForRewardRule: aRewardRule

	^self subclassResponsibility ! !

!GoldCustomerType class methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
priceForRewardRule: aRewardRule

	^aRewardRule priceForGoldCustomer! !

!NormalCustomerType class methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
priceForRewardRule: aRewardRule

	^aRewardRule priceForNormalCustomer! !

!SilverCustomerType class methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
priceForRewardRule: aRewardRule

	^aRewardRule priceForSilverCustomer! !

!CoffeeShopProduct class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
price

	^self subclassResponsibility ! !

!CoffeeShopProduct class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
volume

	^self subclassResponsibility ! !

!Combo1 class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
price

	^150*peso! !

!Combo1 class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
volume

	^250*milliliter! !

!Combo2 class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
price

	^120*peso! !

!Combo2 class methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:16 am (UTC)'!
volume

	^100*milliliter! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 20/Sep/2019, 8:54:42 pm (UTC)'!
price

	^price! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
product

	^product! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 21/Sep/2019, 7:31:13 pm (UTC)'!
quantity

	^quantity ! !

!CoffeeShopReward methodsFor: 'initialization' stamp: 'HAW 22/Sep/2019, 10:08:08 pm (UTC)'!
initializeOf: aProduct at: aPrice quantity: aQuantity

	product := aProduct.
	price := aPrice.
	quantity := aQuantity
	! !

!CoffeeShopReward class methodsFor: 'instance creation' stamp: 'HAW 20/Sep/2019, 8:53:14 pm (UTC)'!
of: aComboType at: aPrice quantity: aQuantity

	^self new initializeOf: aComboType at: aPrice quantity: aQuantity
! !

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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward 
		of: self rewardedProduct 
		at: (aCustomer priceForRewardRule: self) 
		quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForGoldCustomer

	^self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForNormalCustomer

	^self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForSilverCustomer

	^self subclassResponsibility ! !

!RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 
		
	self subclassResponsibility ! !

!RewardRule class methodsFor: 'instance creation' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
for: volumeSoldToCustomer ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aRuleClass | aRuleClass isFor: volumeSoldToCustomer ] 
		ifFound: [ :aRuleClass | aRuleClass new ]
		ifNone: aNoneBlock ! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:54:35 pm (UTC)'!
productQuantity
	
	^2! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
rewardedProduct
	
	^Combo1! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
rewardedProduct
	
	^Combo2! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
priceForGoldCustomer

	^self rewardedProduct price / 2! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
priceForNormalCustomer

	^self rewardedProduct price * 9/10! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 16/Sep/2026, 1:42:37 am (UTC)'!
priceForSilverCustomer

	^self rewardedProduct price * 3/4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomerType.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomerType.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomerType.
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
combo1

	^Combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
combo2

	^Combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
productsAmountingTo350Milliliters

	^Array with: self combo1 with: self combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
productsAmountingTo600Milliliters

	^Array with: self combo1 with: self combo1 with: self combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertSalesMadeTo: adaLovelace are: (Array with: self combo1)! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertSalesMadeTo: adaLovelace are: (Array with: self combo1).
	self assertSalesMadeTo: alanKay are: (Array with: self combo2)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 0*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 250*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 100*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: (250*milliliter)+(100*milliliter) equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: adaLovelace 
		afterBuying: self productsAmountingTo350Milliliters 
		isFor: self combo2 
		quantity: 1 
		at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: alanKay 
		afterBuying: self productsAmountingTo350Milliliters 
		isFor: self combo2 
		quantity: 1 
		at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: billGates 
		afterBuying: self productsAmountingTo350Milliliters 
		isFor: self combo2 
		quantity: 1 
		at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self 
		assertRewardOf: adaLovelace 
		afterBuying: self productsAmountingTo600Milliliters 
		isFor: self combo1 
		quantity: 2 
		at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self 
		assertRewardOf: alanKay 
		afterBuying: self productsAmountingTo600Milliliters 
		isFor: self combo1 
		quantity: 2 
		at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self 
		assertRewardOf: billGates 
		afterBuying: self productsAmountingTo600Milliliters 
		isFor: self combo1 
		quantity: 2 
		at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
assertRewardOf: aCustomer afterBuying: aProductCollection isFor: aProduct quantity: aQuantity at: aPrice

	| reward |

	aProductCollection do: [ :aBoughtProduct | salesSystem registerSaleTo: aCustomer of: aBoughtProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: aProduct equals: reward product.
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:43:12 am (UTC)'!
assertSalesMadeTo: aCustomer are: aProductCollection

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: aProductCollection size equals: salesToCustomer size.
	aProductCollection do: [ :aProduct |
		self 
			assert: (aProductCollection occurrencesOf: aProduct) 
			equals: (salesToCustomer occurrencesOf: aProduct) ]! !
CoffeeShopSalesSystem initialize!
