'From Cuis7.9 [latest update: #8185] on 16 September 2026 at 8:57:06 am'!
'Description '!
!provides: 'IngSof1-2019-2C-1Parcial' 1 0!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial'!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial-Tests'!


!classDefinition: #CoffeeShopCustomer category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomer
	instanceVariableNames: 'name'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer class
	instanceVariableNames: ''!

!classDefinition: #GoldCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer subclass: #GoldCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'GoldCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
GoldCustomer class
	instanceVariableNames: ''!

!classDefinition: #NormalCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer subclass: #NormalCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'NormalCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
NormalCustomer class
	instanceVariableNames: ''!

!classDefinition: #SilverCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomer subclass: #SilverCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'SilverCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
SilverCustomer class
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


!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
initializeNamed: aName

	name := aName! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo1Reward

	self subclassResponsibility ! !

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo2RewardOf: aPrice

	self subclassResponsibility ! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
named: aName

	^self new initializeNamed: aName! !

!GoldCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo1Reward

	^75*peso! !

!GoldCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo2RewardOf: aPrice

	^aPrice/2! !

!NormalCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo1Reward

	^97*peso! !

!NormalCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo2RewardOf: aPrice

	^aPrice*9/10! !

!SilverCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo1Reward

	^83*peso! !

!SilverCustomer methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
priceForCombo2RewardOf: aPrice

	^aPrice*3/4! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
price

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
volume

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
hash

	^self class hash! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
price

	^150*peso! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
volume

	^250*milliliter! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
price

	^120*peso! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
isFor: aProduct
	
	^product = aProduct! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
isForCombo1
	
	^self isFor: Combo1 new! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
isForCombo2
	
	^self isFor: Combo2 new! !

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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [ ^noneBlock value ].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward 
		of: self rewardedProduct 
		at: (self rewardPriceFor: aCustomer) 
		quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardPriceFor: aCustomer

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer priceForCombo1Reward! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardedProduct
	
	^Combo1 new! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer priceForCombo2RewardOf: self rewardedProduct price! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
rewardedProduct
	
	^Combo2 new! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
setUp

	adaLovelace := GoldCustomer named: 'Ada Lovelace'.
	alanKay := SilverCustomer named: 'Alan Kay'.
	billGates := NormalCustomer named: 'Bill Gates'! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
combo1

	^Combo1 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
combo2

	^Combo2 new! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 23/Sep/2019, 12:41:51 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	salesSystem := CoffeeShopSalesSystem new.

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertThereIsOnlyOneSaleOf: self combo1 madeTo: adaLovelace! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem := CoffeeShopSalesSystem new.

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertThereIsOnlyOneSaleOf: self combo1 madeTo: adaLovelace.
	self assertThereIsOnlyOneSaleOf: self combo2 madeTo: alanKay! !

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

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: adaLovelace isAt: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: alanKay isAt: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: billGates isAt: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: adaLovelace isAt: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: alanKay isAt: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: billGates isAt: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:56:49 am (UTC)'!
assertRewardOf: aCustomer afterBuying: products is: aQuantity of: aProduct at: aPrice

	| reward |

	salesSystem := CoffeeShopSalesSystem new.

	products do: [ :aSoldProduct | salesSystem registerSaleTo: aCustomer of: aSoldProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aProduct).
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
assertRewardWhenRule1HoldsOf: aCustomer isAt: aPrice

	self 
		assertRewardOf: aCustomer 
		afterBuying: { self combo1. self combo2 } 
		is: 1 
		of: self combo2 
		at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
assertRewardWhenRule2HoldsOf: aCustomer isAt: aPrice

	self 
		assertRewardOf: aCustomer 
		afterBuying: { self combo1. self combo1. self combo2 } 
		is: 2 
		of: self combo1 
		at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 11:56:24 am (UTC)'!
assertThereIsOnlyOneSaleOf: aProduct madeTo: aCustomer

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !
CoffeeShopSalesSystem initialize!
