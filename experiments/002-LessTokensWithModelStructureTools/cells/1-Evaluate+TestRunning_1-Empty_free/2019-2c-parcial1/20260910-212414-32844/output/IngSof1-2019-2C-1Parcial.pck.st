'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 9:28:07 pm'!
'Description '!
!provides: 'IngSof1-2019-2C-1Parcial' 1 0!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial'!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial-Tests'!


!classDefinition: #CoffeeShopCombo category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCombo
	instanceVariableNames: 'name price coffeeVolume'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCombo class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCombo class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopCustomer category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomer
	instanceVariableNames: 'name type'
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


!CoffeeShopCombo methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
initializeNamed: aName pricedAt: aPrice withCoffeeVolume: aCoffeeVolume

	name := aName.
	price := aPrice.
	coffeeVolume := aCoffeeVolume! !

!CoffeeShopCombo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
coffeeVolume

	^coffeeVolume! !

!CoffeeShopCombo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
name

	^name! !

!CoffeeShopCombo methodsFor: 'accessing' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
price

	^price! !

!CoffeeShopCombo methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
= anObject

	^(anObject isKindOf: self class)
		and: [ name = anObject name
		and: [ price = anObject price
		and: [ coffeeVolume = anObject coffeeVolume ] ] ]! !

!CoffeeShopCombo methodsFor: 'comparing' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
hash

	^name hash bitXor: (price hash bitXor: coffeeVolume hash)! !

!CoffeeShopCombo methodsFor: 'printing' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!CoffeeShopCombo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
combo1

	^self named: 'Combo 1' pricedAt: 150*peso withCoffeeVolume: 250*milliliter! !

!CoffeeShopCombo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
combo2

	^self named: 'Combo 2' pricedAt: 120*peso withCoffeeVolume: 100*milliliter! !

!CoffeeShopCombo class methodsFor: 'instance creation' stamp: 'HAW 11/Sep/2026, 12:26:35 am (UTC)'!
named: aName pricedAt: aPrice withCoffeeVolume: aCoffeeVolume

	^self new initializeNamed: aName pricedAt: aPrice withCoffeeVolume: aCoffeeVolume! !

!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 21/Sep/2019, 4:00:45 pm (UTC)'!
initializeNamed: aName ofType: aType

	name := aName.
	type := aType ! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceFor: aRewardRule

	^type rewardPriceFor: aRewardRule! !

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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
volumeSoldTo: aCustomer

	^(self salesMadeTo: aCustomer)
		sum: [ :aProduct | aProduct coffeeVolume ]
		ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| salesToCustomer volumeSoldToCustomer rewardRule |

	salesToCustomer := self salesMadeTo: aCustomer.
	volumeSoldToCustomer := self volumeSoldTo: aCustomer.
	
	rewardRule := RewardRule for: volumeSoldToCustomer ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer.
	! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 11/Sep/2026, 12:26:24 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter').
	Smalltalk at: #peso put: (BaseUnit named: 'peso')! !

!CustomerType methodsFor: 'rewarding' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceFor: aRewardRule

	self subclassResponsibility! !

!GoldCustomerType methodsFor: 'rewarding' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceFor: aRewardRule

	^aRewardRule rewardPriceForGoldCustomer! !

!NormalCustomerType methodsFor: 'rewarding' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceFor: aRewardRule

	^aRewardRule rewardPriceForNormalCustomer! !

!SilverCustomerType methodsFor: 'rewarding' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceFor: aRewardRule

	^aRewardRule rewardPriceForSilverCustomer! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
createRewardFor: aCustomer

	^CoffeeShopReward
		of: self rewardedProduct
		at: (aCustomer rewardPriceFor: self)
		quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForGoldCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForNormalCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForSilverCustomer

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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardedProduct

	^CoffeeShopCombo combo1! !

!Combo1RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardedProduct

	^CoffeeShopCombo combo2! !

!Combo2RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForGoldCustomer

	^self rewardedProduct price / 2! !

!Combo2RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForNormalCustomer

	^self rewardedProduct price * 9 / 10! !

!Combo2RewardRule methodsFor: 'reward pricing' stamp: 'HAW 11/Sep/2026, 12:26:53 am (UTC)'!
rewardPriceForSilverCustomer

	^self rewardedProduct price * 3 / 4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
setUp

	salesSystem := CoffeeShopSalesSystem new.

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomerType new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomerType new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomerType new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
combo1

	^CoffeeShopCombo combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
combo2

	^CoffeeShopCombo combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
registerSalesThatMakeRule1HoldFor: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
registerSalesThatMakeRule2HoldFor: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1.
	self assertOnlySaleMadeTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 0*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 250*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 100*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: (250*milliliter)+(100*milliliter)! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self registerSalesThatMakeRule1HoldFor: adaLovelace.

	self assertRewardOf: adaLovelace is: 1 of: self combo2 at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self registerSalesThatMakeRule1HoldFor: alanKay.

	self assertRewardOf: alanKay is: 1 of: self combo2 at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self registerSalesThatMakeRule1HoldFor: billGates.

	self assertRewardOf: billGates is: 1 of: self combo2 at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self registerSalesThatMakeRule2HoldFor: adaLovelace.

	self assertRewardOf: adaLovelace is: 2 of: self combo1 at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self registerSalesThatMakeRule2HoldFor: alanKay.

	self assertRewardOf: alanKay is: 2 of: self combo1 at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self registerSalesThatMakeRule2HoldFor: billGates.

	self assertRewardOf: billGates is: 2 of: self combo1 at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
assertOnlySaleMadeTo: aCustomer is: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: salesToCustomer size equals: 1.
	self assert: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ]) equals: 1! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 11/Sep/2026, 12:27:37 am (UTC)'!
assertRewardOf: aCustomer is: aQuantity of: aProduct at: aPrice

	| reward |

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: reward quantity equals: aQuantity.
	self assert: (reward isFor: aProduct).
	self assert: reward price equals: aPrice! !
CoffeeShopSalesSystem initialize!
