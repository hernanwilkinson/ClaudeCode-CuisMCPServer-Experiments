'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:10:36 am'!
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

!classDefinition: #CoffeeShopGoldCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #CoffeeShopGoldCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopGoldCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopGoldCustomer class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopNormalCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #CoffeeShopNormalCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopNormalCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopNormalCustomer class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopSilverCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #CoffeeShopSilverCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopSilverCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopSilverCustomer class
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

!classDefinition: #CoffeeShopCombo1 category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #CoffeeShopCombo1
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCombo1 class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCombo1 class
	instanceVariableNames: ''!

!classDefinition: #CoffeeShopCombo2 category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #CoffeeShopCombo2
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopCombo2 class' category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCombo2 class
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

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopCustomerType methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo1RewardPrice

	self subclassResponsibility! !

!CoffeeShopCustomerType methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo2RewardPriceOf: aProduct

	self subclassResponsibility! !

!CoffeeShopGoldCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:10:21 am (UTC)'!
combo1RewardPrice

	^75*peso! !

!CoffeeShopGoldCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo2RewardPriceOf: aProduct

	^aProduct price/2! !

!CoffeeShopNormalCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo1RewardPrice

	^97*peso! !

!CoffeeShopNormalCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo2RewardPriceOf: aProduct

	^aProduct price*9/10! !

!CoffeeShopSilverCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo1RewardPrice

	^83*peso! !

!CoffeeShopSilverCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
combo2RewardPriceOf: aProduct

	^aProduct price*3/4! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
price

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
volume

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
hash

	^self class hash! !

!CoffeeShopCombo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
price

	^150*peso! !

!CoffeeShopCombo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
volume

	^250*milliliter! !

!CoffeeShopCombo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
price

	^120*peso! !

!CoffeeShopCombo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
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

!CoffeeShopSalesSystem methodsFor: 'volume' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [^noneBlock value].
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

!RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward of: self rewardedProduct at: (self rewardPriceFor: aCustomer) quantity: self productQuantity! !

!RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardPriceFor: aCustomer

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

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer type combo1RewardPrice! !

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardedProduct
	
	^CoffeeShopCombo1 new! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer type combo2RewardPriceOf: self rewardedProduct! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 4:09:58 am (UTC)'!
rewardedProduct
	
	^CoffeeShopCombo2 new! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
combo1

	^CoffeeShopCombo1 new! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
combo2

	^CoffeeShopCombo2 new! !

!CoffeeShopTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: CoffeeShopGoldCustomer new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: CoffeeShopSilverCustomer new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: CoffeeShopNormalCustomer new.
	
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
assertRewardOf: aCustomer after: products is: aQuantity of: aProduct at: aPrice

	| reward |

	self register: products soldTo: aCustomer.

	reward := salesSystem rewardOf: aCustomer ifNone: [ ^self failWith: 'Reward expected' ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aProduct).
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
assertSalesTo: aCustomer areOnlyOne: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
assertVolumeSoldTo: aCustomer after: products is: aVolume

	self register: products soldTo: aCustomer.

	self assert: aVolume equals: (salesSystem volumeSoldTo: aCustomer)! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
register: products soldTo: aCustomer

	products do: [ :aProduct | salesSystem registerSaleTo: aCustomer of: aProduct ]! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
rule1Purchases

	^Array with: self combo1 with: self combo2! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
rule2Purchases

	^Array with: self combo1 with: self combo1 with: self combo2! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertSalesTo: adaLovelace areOnlyOne: self combo1! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertSalesTo: adaLovelace areOnlyOne: self combo1.
	self assertSalesTo: alanKay areOnlyOne: self combo2! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	self assertVolumeSoldTo: adaLovelace after: #() is: 0*milliliter! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	self assertVolumeSoldTo: adaLovelace after: (Array with: self combo1) is: 250*milliliter! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	self assertVolumeSoldTo: adaLovelace after: (Array with: self combo2) is: 100*milliliter! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	self assertVolumeSoldTo: adaLovelace after: self rule1Purchases is: (250*milliliter)+(100*milliliter)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self assertRewardOf: adaLovelace after: self rule1Purchases is: 1 of: self combo2 at: 60*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self assertRewardOf: alanKay after: self rule1Purchases is: 1 of: self combo2 at: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self assertRewardOf: billGates after: self rule1Purchases is: 1 of: self combo2 at: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self assertRewardOf: adaLovelace after: self rule2Purchases is: 2 of: self combo1 at: 75*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self assertRewardOf: alanKay after: self rule2Purchases is: 2 of: self combo1 at: 83*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 4:10:17 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self assertRewardOf: billGates after: self rule2Purchases is: 2 of: self combo1 at: 97*peso! !
CoffeeShopSalesSystem initialize!
