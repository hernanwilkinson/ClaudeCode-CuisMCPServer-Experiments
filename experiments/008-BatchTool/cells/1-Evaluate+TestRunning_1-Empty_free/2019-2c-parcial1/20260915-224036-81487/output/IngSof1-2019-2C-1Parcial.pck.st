'From Cuis7.9 [latest update: #8185] on 15 September 2026 at 10:44:55 pm'!
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


!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
initializeNamed: aName

	name := aName! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
rewardPriceAccordingTo: aRewardRule

	self subclassResponsibility! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
named: aName

	^self new initializeNamed: aName! !

!GoldCustomer methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
rewardPriceAccordingTo: aRewardRule

	^aRewardRule priceForGoldCustomer! !

!NormalCustomer methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
rewardPriceAccordingTo: aRewardRule

	^aRewardRule priceForNormalCustomer! !

!SilverCustomer methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:36 am (UTC)'!
rewardPriceAccordingTo: aRewardRule

	^aRewardRule priceForSilverCustomer! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
price

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
volume

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
hash

	^self class hash! !

!CoffeeShopProduct methodsFor: 'printing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
printOn: aStream

	aStream nextPutAll: self class name! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
price

	^150*peso! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
volume

	^250*milliliter! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
price

	^120*peso! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:25 am (UTC)'!
volume

	^100*milliliter! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 20/Sep/2019, 8:54:42 pm (UTC)'!
price

	^price! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 16/Sep/2026, 1:42:55 am (UTC)'!
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

!CoffeeShopReward class methodsFor: 'instance creation' stamp: 'HAW 16/Sep/2026, 1:44:21 am (UTC)'!
of: aProduct at: aPrice quantity: aQuantity

	^self new initializeOf: aProduct at: aPrice quantity: aQuantity! !

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

!CoffeeShopSalesSystem methodsFor: 'volume' stamp: 'HAW 16/Sep/2026, 1:42:55 am (UTC)'!
volumeSoldTo: aCustomer

	^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:44:21 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [ ^noneBlock value ].

	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
createRewardFor: aCustomer

	^CoffeeShopReward
		of: self rewardedProduct
		at: (aCustomer rewardPriceAccordingTo: self)
		quantity: self productQuantity! !

!RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForGoldCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForNormalCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForSilverCustomer

	self subclassResponsibility! !

!RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 
		
	self subclassResponsibility ! !

!RewardRule class methodsFor: 'instance creation' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
for: volumeSoldToCustomer ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aRuleClass | aRuleClass isFor: volumeSoldToCustomer ] 
		ifFound: [ :aRuleClass | aRuleClass new ]
		ifNone: aNoneBlock ! !

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
productQuantity

	^2! !

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
rewardedProduct

	^Combo1 new! !

!Combo1RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
rewardedProduct

	^Combo2 new! !

!Combo2RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForGoldCustomer

	^self rewardedProduct price / 2! !

!Combo2RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForNormalCustomer

	^self rewardedProduct price * 9 / 10! !

!Combo2RewardRule methodsFor: 'rewards - prices' stamp: 'HAW 16/Sep/2026, 1:42:48 am (UTC)'!
priceForSilverCustomer

	^self rewardedProduct price * 3 / 4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
setUp

	adaLovelace := GoldCustomer named: 'Ada Lovelace'.
	alanKay := SilverCustomer named: 'Alan Kay'.
	billGates := NormalCustomer named: 'Bill Gates'.
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
combo1

	^Combo1 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
combo2

	^Combo2 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
salesMakingRule1Hold

	"350 milliliters - between 300 and 500 inclusive"
	^{ self combo1. self combo2 }! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
salesMakingRule2Hold

	"600 milliliters - more than 500"
	^{ self combo1. self combo1. self combo2 }! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assertSalesMadeTo: adaLovelace are: { self combo1 }! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertSalesMadeTo: adaLovelace are: { self combo1 }.
	self assertSalesMadeTo: alanKay are: { self combo2 }! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	self assert: 0*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assert: 250*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: 100*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: (250*milliliter)+(100*milliliter) equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].

	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self
		assertRewardFor: adaLovelace
		buying: self salesMakingRule1Hold
		is: 1
		of: self combo2
		at: 120/2*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self
		assertRewardFor: alanKay
		buying: self salesMakingRule1Hold
		is: 1
		of: self combo2
		at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self
		assertRewardFor: billGates
		buying: self salesMakingRule1Hold
		is: 1
		of: self combo2
		at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test12GoldCustomerGetsRewardedWithTwoCombo1At75PesosWhenRule2Holds

	self
		assertRewardFor: adaLovelace
		buying: self salesMakingRule2Hold
		is: 2
		of: self combo1
		at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test13SilverCustomerGetsRewardedWithTwoCombo1At83PesosWhenRule2Holds

	self
		assertRewardFor: alanKay
		buying: self salesMakingRule2Hold
		is: 2
		of: self combo1
		at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 16/Sep/2026, 1:43:32 am (UTC)'!
test14NormalCustomerGetsRewardedWithTwoCombo1At97PesosWhenRule2Holds

	self
		assertRewardFor: billGates
		buying: self salesMakingRule2Hold
		is: 2
		of: self combo1
		at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
assertRewardFor: aCustomer buying: soldProducts is: expectedQuantity of: expectedProduct at: expectedPrice

	| reward |

	soldProducts do: [ :aProduct | salesSystem registerSaleTo: aCustomer of: aProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: expectedQuantity equals: reward quantity.
	self assert: expectedProduct equals: reward product.
	self assert: expectedPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 16/Sep/2026, 1:43:15 am (UTC)'!
assertSalesMadeTo: aCustomer are: expectedProducts

	self assert: expectedProducts asBag equals: (salesSystem salesMadeTo: aCustomer) asBag! !
CoffeeShopSalesSystem initialize!
