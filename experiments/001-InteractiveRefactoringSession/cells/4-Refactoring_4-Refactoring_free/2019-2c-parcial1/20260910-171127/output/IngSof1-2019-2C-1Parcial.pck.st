'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 5:51:09 pm'!
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
	instanceVariableNames: 'name price coffeeVolume'
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

!CoffeeShopCustomer methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:48 pm (UTC)'!
combo1RewardPrice

	^type combo1RewardPrice! !

!CoffeeShopCustomer methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:49 pm (UTC)'!
combo2RewardPriceOf: aCombo2

	^type combo2RewardPriceOf: aCombo2! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:26 pm (UTC)'!
combo1RewardPrice

	self subclassResponsibility! !

!CoffeeShopCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:28 pm (UTC)'!
combo2RewardPriceOf: aCombo2

	self subclassResponsibility! !

!GoldCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:42 pm (UTC)'!
combo1RewardPrice

	^75*peso! !

!GoldCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:43 pm (UTC)'!
combo2RewardPriceOf: aCombo2

	^aCombo2 price / 2! !

!NormalCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:46 pm (UTC)'!
combo1RewardPrice

	^97*peso! !

!NormalCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:47 pm (UTC)'!
combo2RewardPriceOf: aCombo2

	^aCombo2 price * 9/10! !

!SilverCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:44 pm (UTC)'!
combo1RewardPrice

	^83*peso! !

!SilverCustomerType methodsFor: 'reward pricing' stamp: 'HAW 10/Sep/2026, 8:17:45 pm (UTC)'!
combo2RewardPriceOf: aCombo2

	^aCombo2 price * 3/4! !

!CoffeeShopProduct methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 8:17:16 pm (UTC)'!
initializeNamed: aName priced: aPrice withCoffeeVolume: aCoffeeVolume

	name := aName.
	price := aPrice.
	coffeeVolume := aCoffeeVolume! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:17:19 pm (UTC)'!
coffeeVolume

	^coffeeVolume! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:17:17 pm (UTC)'!
name

	^name! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:17:18 pm (UTC)'!
price

	^price! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 8:17:20 pm (UTC)'!
= anObject

	^self class = anObject class and: [ name = anObject name ]! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 8:17:21 pm (UTC)'!
hash

	^name hash! !

!CoffeeShopProduct methodsFor: 'printing' stamp: 'HAW 10/Sep/2026, 8:17:22 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 8:17:12 pm (UTC)'!
named: aName priced: aPrice withCoffeeVolume: aCoffeeVolume

	^self new initializeNamed: aName priced: aPrice withCoffeeVolume: aCoffeeVolume! !

!CoffeeShopProduct class methodsFor: 'products' stamp: 'HAW 10/Sep/2026, 8:17:14 pm (UTC)'!
combo1

	^self named: 'Combo 1' priced: 150*peso withCoffeeVolume: 250*milliliter! !

!CoffeeShopProduct class methodsFor: 'products' stamp: 'HAW 10/Sep/2026, 8:17:15 pm (UTC)'!
combo2

	^self named: 'Combo 2' priced: 120*peso withCoffeeVolume: 100*milliliter! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 20/Sep/2019, 8:54:42 pm (UTC)'!
price

	^price! !

!CoffeeShopReward methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 8:18:03 pm (UTC)'!
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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 10/Sep/2026, 8:18:00 pm (UTC)'!
volumeSoldTo: aCustomer

	^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct coffeeVolume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 8:18:02 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [ ^noneBlock value ].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 8:16:51 pm (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter').
	Smalltalk at: #peso put: (BaseUnit named: 'peso')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:51 pm (UTC)'!
createRewardFor: aCustomer

	^CoffeeShopReward of: self rewardedProduct at: (self rewardPriceFor: aCustomer) quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:52 pm (UTC)'!
rewardPriceFor: aCustomer

	self subclassResponsibility! !

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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:53 pm (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer combo1RewardPrice! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:54 pm (UTC)'!
rewardedProduct

	^CoffeeShopProduct combo1! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:55 pm (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer combo2RewardPriceOf: self rewardedProduct! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 8:17:56 pm (UTC)'!
rewardedProduct

	^CoffeeShopProduct combo2! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 10/Sep/2026, 8:18:06 pm (UTC)'!
setUp

	salesSystem := CoffeeShopSalesSystem new.
	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomerType new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomerType new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomerType new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 8:18:07 pm (UTC)'!
combo1

	^CoffeeShopProduct combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 8:18:08 pm (UTC)'!
combo2

	^CoffeeShopProduct combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 8:20:40 pm (UTC)'!
registerSalesOf350MillilitersTo: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 8:20:41 pm (UTC)'!
registerSalesOf600MillilitersTo: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 8:18:09 pm (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 8:20:22 pm (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertOnlySaleMadeTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 8:20:24 pm (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1.
	self assertOnlySaleMadeTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 8:18:16 pm (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 0*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 8:18:18 pm (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 250*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 8:18:20 pm (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: 100*milliliter equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 8:18:22 pm (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: (250*milliliter)+(100*milliliter) equals: volumeSoldToCustomer! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:18:24 pm (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:43 pm (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self registerSalesOf350MillilitersTo: adaLovelace.

	self assertRewardOf: adaLovelace is: 1 of: self combo2 at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:45 pm (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self registerSalesOf350MillilitersTo: alanKay.

	self assertRewardOf: alanKay is: 1 of: self combo2 at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:47 pm (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self registerSalesOf350MillilitersTo: billGates.

	self assertRewardOf: billGates is: 1 of: self combo2 at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:48 pm (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self registerSalesOf600MillilitersTo: adaLovelace.

	self assertRewardOf: adaLovelace is: 2 of: self combo1 at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:50 pm (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self registerSalesOf600MillilitersTo: alanKay.

	self assertRewardOf: alanKay is: 2 of: self combo1 at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 8:20:51 pm (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self registerSalesOf600MillilitersTo: billGates.

	self assertRewardOf: billGates is: 2 of: self combo1 at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 8:20:20 pm (UTC)'!
assertOnlySaleMadeTo: aCustomer is: anExpectedProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aProduct | aProduct = anExpectedProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 8:19:29 pm (UTC)'!
assertRewardOf: aCustomer is: aQuantity of: aProduct at: aPrice

	| reward |
	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: aProduct equals: reward product.
	self assert: aPrice equals: reward price! !
CoffeeShopSalesSystem initialize!
