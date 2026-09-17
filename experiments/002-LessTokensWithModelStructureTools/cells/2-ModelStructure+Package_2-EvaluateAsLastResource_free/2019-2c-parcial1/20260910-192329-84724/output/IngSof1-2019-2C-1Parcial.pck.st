'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 7:28:53 pm'!
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


!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 21/Sep/2019, 4:00:45 pm (UTC)'!
initializeNamed: aName ofType: aType

	name := aName.
	type := aType ! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:56 pm (UTC)'!
rewardPriceIn: aRewardRule

	^type rewardPriceIn: aRewardRule! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:19 pm (UTC)'!
price

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:20 pm (UTC)'!
volume

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 10:26:21 pm (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 10:26:22 pm (UTC)'!
hash

	^self class hash! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:24 pm (UTC)'!
price

	^150*peso! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:25 pm (UTC)'!
volume

	^250*milliliter! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:26 pm (UTC)'!
price

	^120*peso! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:26:27 pm (UTC)'!
volume

	^100*milliliter! !

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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 10:27:01 pm (UTC)'!
isFor: aProduct
	
	^product = aProduct! !

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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 10/Sep/2026, 10:27:12 pm (UTC)'!
volumeSoldTo: aCustomer

	^(self salesMadeTo: aCustomer) 
		sum: [ :aProduct | aProduct volume ] 
		ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:27:14 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule 
		for: (self volumeSoldTo: aCustomer) 
		ifNone: [ ^noneBlock value ].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!CustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:35 pm (UTC)'!
rewardPriceIn: aRewardRule

	self subclassResponsibility ! !

!GoldCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:39 pm (UTC)'!
rewardPriceIn: aRewardRule

	^aRewardRule priceForGoldCustomer! !

!NormalCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:41 pm (UTC)'!
rewardPriceIn: aRewardRule

	^aRewardRule priceForNormalCustomer! !

!SilverCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:40 pm (UTC)'!
rewardPriceIn: aRewardRule

	^aRewardRule priceForSilverCustomer! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:27:11 pm (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward 
		of: self rewardedProduct 
		at: (aCustomer rewardPriceIn: self) 
		quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:42 pm (UTC)'!
priceForGoldCustomer

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:44 pm (UTC)'!
priceForNormalCustomer

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:43 pm (UTC)'!
priceForSilverCustomer

	self subclassResponsibility ! !

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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:26:59 pm (UTC)'!
rewardedProduct
	
	^Combo1 new! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:45 pm (UTC)'!
priceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:47 pm (UTC)'!
priceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:46 pm (UTC)'!
priceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:27:00 pm (UTC)'!
rewardedProduct
	
	^Combo2 new! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:48 pm (UTC)'!
priceForGoldCustomer

	^self rewardedProduct price / 2! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:51 pm (UTC)'!
priceForNormalCustomer

	^self rewardedProduct price * 9/10! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:50 pm (UTC)'!
priceForSilverCustomer

	^self rewardedProduct price * 3/4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 10/Sep/2026, 10:27:38 pm (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer 
		named: 'Ada Lovelace' 
		ofType: GoldCustomerType new.
	alanKay := CoffeeShopCustomer 
		named: 'Alan Kay' 
		ofType: SilverCustomerType new.
	billGates := CoffeeShopCustomer 
		named: 'Bill Gates' 
		ofType: NormalCustomerType new.
	
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:27:21 pm (UTC)'!
combo1

	^Combo1 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:27:22 pm (UTC)'!
combo2

	^Combo2 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:27:23 pm (UTC)'!
purchasesHoldingRule1

	^{ self combo1. self combo2 }! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:27:24 pm (UTC)'!
purchasesHoldingRule2

	^{ self combo1. self combo1. self combo2 }! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:27:45 pm (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:27:47 pm (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertOnlySaleTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:27:49 pm (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleTo: adaLovelace is: self combo1.
	self assertOnlySaleTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:27:50 pm (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 0*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:27:52 pm (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 250*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:27:54 pm (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 100*milliliter equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:27:57 pm (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: (250*milliliter)+(100*milliliter) equals: volumeSoldToCustomer ! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:27:58 pm (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:00 pm (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: adaLovelace 
		afterBuying: self purchasesHoldingRule1 
		is: 1 
		of: self combo2 
		at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:02 pm (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: alanKay 
		afterBuying: self purchasesHoldingRule1 
		is: 1 
		of: self combo2 
		at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:04 pm (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self 
		assertRewardOf: billGates 
		afterBuying: self purchasesHoldingRule1 
		is: 1 
		of: self combo2 
		at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:05 pm (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self 
		assertRewardOf: adaLovelace 
		afterBuying: self purchasesHoldingRule2 
		is: 2 
		of: self combo1 
		at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:07 pm (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self 
		assertRewardOf: alanKay 
		afterBuying: self purchasesHoldingRule2 
		is: 2 
		of: self combo1 
		at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:28:09 pm (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self 
		assertRewardOf: billGates 
		afterBuying: self purchasesHoldingRule2 
		is: 2 
		of: self combo1 
		at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 10:27:40 pm (UTC)'!
assertOnlySaleTo: aCustomer is: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self 
		assert: 1 
		equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 10:27:42 pm (UTC)'!
assertRewardOf: aCustomer afterBuying: somePurchases is: aQuantity of: aRewardedProduct at: aPrice

	| reward |

	somePurchases do: [ :aProduct | 
		salesSystem registerSaleTo: aCustomer of: aProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aRewardedProduct).
	self assert: aPrice equals: reward price! !
CoffeeShopSalesSystem initialize!
