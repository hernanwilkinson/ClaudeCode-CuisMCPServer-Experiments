'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 12:51:10 am'!
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
	instanceVariableNames: 'name price volume'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopProduct class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct class
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


!CoffeeShopCustomer methodsFor: 'type' stamp: 'HAW 21/Sep/2019, 4:05:10 pm (UTC)'!
type

	^type! !

!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 21/Sep/2019, 4:00:45 pm (UTC)'!
initializeNamed: aName ofType: aType

	name := aName.
	type := aType ! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'reward' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardPriceWith: aRewardRule

	^type rewardPriceWith: aRewardRule! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopProduct methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
initializeNamed: aName at: aPrice withVolume: aVolume

	name := aName.
	price := aPrice.
	volume := aVolume! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
name

	^name! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
price

	^price! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
volume

	^volume! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
= anObject

	^(anObject isKindOf: self class) and: [ name = anObject name ]! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
hash

	^name hash! !

!CoffeeShopProduct methodsFor: 'printing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
combo1

	^self named: 'Combo1' at: 150*peso withVolume: 250*milliliter! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
combo2

	^self named: 'Combo2' at: 120*peso withVolume: 100*milliliter! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
named: aName at: aPrice withVolume: aVolume

	^self new initializeNamed: aName at: aPrice withVolume: aVolume! !

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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
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

!CoffeeShopSalesSystem methodsFor: 'volume' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [ ^noneBlock value ].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!CustomerType methodsFor: 'reward' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardPriceWith: aRewardRule

	self subclassResponsibility! !

!GoldCustomerType methodsFor: 'reward' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule priceForGoldCustomer! !

!NormalCustomerType methodsFor: 'reward' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule priceForNormalCustomer! !

!SilverCustomerType methodsFor: 'reward' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule priceForSilverCustomer! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:50:32 am (UTC)'!
createRewardFor: aCustomer 

	^CoffeeShopReward of: self rewardedProduct at: (aCustomer rewardPriceWith: self) quantity: self productQuantity! !

!RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForGoldCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForNormalCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:54:35 pm (UTC)'!
productQuantity
	
	^2! !

!Combo1RewardRule methodsFor: 'product' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
rewardedProduct

	^CoffeeShopProduct combo1! !

!Combo1RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'product' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
rewardedProduct

	^CoffeeShopProduct combo2! !

!Combo2RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForGoldCustomer

	^self rewardedProduct price/2! !

!Combo2RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForNormalCustomer

	^self rewardedProduct price*9/10! !

!Combo2RewardRule methodsFor: 'prices' stamp: 'HAW 17/Sep/2026, 3:50:33 am (UTC)'!
priceForSilverCustomer

	^self rewardedProduct price*3/4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
setUp

	salesSystem := CoffeeShopSalesSystem new.

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomerType new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomerType new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomerType new! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
combo1

	^CoffeeShopProduct combo1! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
combo2

	^CoffeeShopProduct combo2! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
assertOnlySaleMadeTo: aCustomer is: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
assertRewardOf: aCustomer buying: products is: aQuantity of: aProduct at: aPrice

	| reward |

	products do: [ :aSoldProduct | salesSystem registerSaleTo: aCustomer of: aSoldProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aProduct).
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
assertRewardWhenRule1HoldsOf: aCustomer isOneCombo2At: aPrice

	self assertRewardOf: aCustomer buying: { self combo1. self combo2 } is: 1 of: self combo2 at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
assertRewardWhenRule2HoldsOf: aCustomer isCombo1At: aPrice

	self assertRewardOf: aCustomer buying: { self combo1. self combo1. self combo2 } is: 2 of: self combo1 at: aPrice! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1.
	self assertOnlySaleMadeTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	self assert: 0*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assert: 250*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: 100*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: (250*milliliter)+(100*milliliter) equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].

	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: adaLovelace isOneCombo2At: 60*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: alanKay isOneCombo2At: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self assertRewardWhenRule1HoldsOf: billGates isOneCombo2At: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: adaLovelace isCombo1At: 75*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: alanKay isCombo1At: 83*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:50:50 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self assertRewardWhenRule2HoldsOf: billGates isCombo1At: 97*peso! !
CoffeeShopSalesSystem initialize!
