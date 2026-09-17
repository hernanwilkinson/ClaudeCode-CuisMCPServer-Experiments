'From Cuis7.9 [latest update: #8163] on 10 September 2026 at 7:27:23 pm'!
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

!CoffeeShopCustomer methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:25:53 pm (UTC)'!
rewardPriceWith: aRewardRule

	^type rewardPriceWith: aRewardRule! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:25:53 pm (UTC)'!
rewardPriceWith: aRewardRule

	self subclassResponsibility! !

!GoldCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:25:53 pm (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule rewardPriceForGoldCustomer! !

!NormalCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:25:53 pm (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule rewardPriceForNormalCustomer! !

!SilverCustomerType methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:25:53 pm (UTC)'!
rewardPriceWith: aRewardRule

	^aRewardRule rewardPriceForSilverCustomer! !

!CoffeeShopProduct methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
initializeNamed: aName pricedAt: aPrice withCoffeeOf: aCoffeeVolume

	name := aName.
	price := aPrice.
	coffeeVolume := aCoffeeVolume! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
coffeeVolume

	^coffeeVolume! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
name

	^name! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
price

	^price! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
= anObject

	^self class = anObject class and: [ name = anObject name ]! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
hash

	^name hash! !

!CoffeeShopProduct methodsFor: 'printing' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
printOn: aStream

	aStream nextPutAll: name! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
combo1

	^self named: 'Combo 1' pricedAt: 150*peso withCoffeeOf: 250*milliliter! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
combo2

	^self named: 'Combo 2' pricedAt: 120*peso withCoffeeOf: 100*milliliter! !

!CoffeeShopProduct class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:25:46 pm (UTC)'!
named: aName pricedAt: aPrice withCoffeeOf: aCoffeeVolume

	^self new initializeNamed: aName pricedAt: aPrice withCoffeeOf: aCoffeeVolume! !

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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 10/Sep/2026, 10:26:07 pm (UTC)'!
isFor: aProduct
	
	^product = aProduct! !

!CoffeeShopReward class methodsFor: 'instance creation' stamp: 'HAW 10/Sep/2026, 10:26:07 pm (UTC)'!
of: aProduct at: aPrice quantity: aQuantity

	^self new initializeOf: aProduct at: aPrice quantity: aQuantity
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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 10/Sep/2026, 10:26:07 pm (UTC)'!
volumeSoldTo: aCustomer

	^(self salesMadeTo: aCustomer) 
		sum: [ :aProduct | aProduct coffeeVolume ] 
		ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 10/Sep/2026, 10:26:07 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| volumeSoldToCustomer rewardRule |

	volumeSoldToCustomer := self volumeSoldTo: aCustomer.
	
	rewardRule := RewardRule for: volumeSoldToCustomer ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer.
	! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 10/Sep/2026, 10:25:35 pm (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter').
	Smalltalk at: #peso put: (BaseUnit named: 'peso')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
createRewardFor: aCustomer

	^CoffeeShopReward 
		of: self rewardedProduct 
		at: (aCustomer rewardPriceWith: self) 
		quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForGoldCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForNormalCustomer

	self subclassResponsibility! !

!RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardedProduct
	
	^CoffeeShopProduct combo1! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForGoldCustomer

	^75*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForNormalCustomer

	^97*peso! !

!Combo1RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForSilverCustomer

	^83*peso! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardedProduct
	
	^CoffeeShopProduct combo2! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForGoldCustomer

	^self rewardedProduct price / 2! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForNormalCustomer

	^self rewardedProduct price * 9/10! !

!Combo2RewardRule methodsFor: 'reward price' stamp: 'HAW 10/Sep/2026, 10:26:00 pm (UTC)'!
rewardPriceForSilverCustomer

	^self rewardedProduct price * 3/4! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomerType new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomerType new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomerType new.
	
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
combo1

	^CoffeeShopProduct combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
combo2

	^CoffeeShopProduct combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
registerSalesMakingRule1HoldFor: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
registerSalesMakingRule2HoldFor: aCustomer

	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo1.
	salesSystem registerSaleTo: aCustomer of: self combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1.
	self assertOnlySaleMadeTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	| volumeSoldToCustomer |

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 0*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 250*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 100*milliliter! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	| volumeSoldToCustomer |

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	volumeSoldToCustomer := salesSystem volumeSoldTo: adaLovelace.

	self assert: volumeSoldToCustomer equals: 250*milliliter + (100*milliliter)! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self registerSalesMakingRule1HoldFor: adaLovelace.

	self assertRewardOf: adaLovelace is: 1 of: self combo2 at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self registerSalesMakingRule1HoldFor: alanKay.

	self assertRewardOf: alanKay is: 1 of: self combo2 at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self registerSalesMakingRule1HoldFor: billGates.

	self assertRewardOf: billGates is: 1 of: self combo2 at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self registerSalesMakingRule2HoldFor: adaLovelace.

	self assertRewardOf: adaLovelace is: 2 of: self combo1 at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self registerSalesMakingRule2HoldFor: alanKay.

	self assertRewardOf: alanKay is: 2 of: self combo1 at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self registerSalesMakingRule2HoldFor: billGates.

	self assertRewardOf: billGates is: 2 of: self combo1 at: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
assertOnlySaleMadeTo: aCustomer is: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: salesToCustomer size equals: 1.
	self assert: salesToCustomer first equals: aProduct! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 10/Sep/2026, 10:26:53 pm (UTC)'!
assertRewardOf: aCustomer is: aQuantity of: aProduct at: aPrice

	| reward |

	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].

	self assert: reward quantity equals: aQuantity.
	self assert: (reward isFor: aProduct).
	self assert: reward price equals: aPrice! !
CoffeeShopSalesSystem initialize!
