'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 1:30:33 am'!
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


!CoffeeShopCustomer methodsFor: 'initialization' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
initializeNamed: aName ofType: aTypeName

	name := aName.
	type := CoffeeShopCustomerType for: aTypeName! !

!CoffeeShopCustomer methodsFor: 'printing' stamp: 'HAW 22/Sep/2019, 9:57:07 pm (UTC)'!
printOn: aStream

	aStream
		nextPutAll: 'Customer named ';
		nextPutAll: name! !

!CoffeeShopCustomer methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1RewardPrice

	^type combo1RewardPrice! !

!CoffeeShopCustomer methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2RewardPriceFor: aPrice

	^type combo2RewardPriceFor: aPrice! !

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 21/Sep/2019, 4:00:21 pm (UTC)'!
named: aName ofType: aType

	^self new initializeNamed: aName ofType: aType! !

!CoffeeShopCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1RewardPrice

	self subclassResponsibility ! !

!CoffeeShopCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2RewardPriceFor: aPrice

	self subclassResponsibility ! !

!CoffeeShopCustomerType class methodsFor: 'instance creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
for: aTypeName

	^self subclasses 
		detect: [ :aTypeClass | aTypeClass isFor: aTypeName ] 
		ifFound: [ :aTypeClass | aTypeClass new ]
		ifNone: [ self error: 'Invalid customer type' ]! !

!CoffeeShopCustomerType class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isFor: aTypeName

	self subclassResponsibility ! !

!GoldCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1RewardPrice

	^75*peso! !

!GoldCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2RewardPriceFor: aPrice

	^aPrice/2! !

!GoldCustomerType class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isFor: aTypeName

	^aTypeName = #Gold! !

!NormalCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1RewardPrice

	^97*peso! !

!NormalCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2RewardPriceFor: aPrice

	^aPrice*9/10! !

!NormalCustomerType class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isFor: aTypeName

	^aTypeName = #Normal! !

!SilverCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1RewardPrice

	^83*peso! !

!SilverCustomerType methodsFor: 'reward price' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2RewardPriceFor: aPrice

	^aPrice*3/4! !

!SilverCustomerType class methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isFor: aTypeName

	^aTypeName = #Silver! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
price

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
volume

	self subclassResponsibility ! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
hash

	^self class hash! !

!CoffeeShopCombo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
price

	^150*peso! !

!CoffeeShopCombo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
volume

	^250*milliliter! !

!CoffeeShopCombo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
price

	^120*peso! !

!CoffeeShopCombo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isFor: aProduct
	
	^product = aProduct! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isForCombo1
	
	^self isFor: CoffeeShopCombo1 new! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
isForCombo2
	
	^self isFor: CoffeeShopCombo2 new! !

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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| rewardRule |

	rewardRule := RewardRule for: (self volumeSoldTo: aCustomer) ifNone: [ ^noneBlock value ].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward of: self rewardedProduct at: (self rewardPriceFor: aCustomer) quantity: self productQuantity! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
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

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer combo1RewardPrice! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
rewardedProduct
	
	^CoffeeShopCombo1 new! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer combo2RewardPriceFor: self rewardedProduct price! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
rewardedProduct
	
	^CoffeeShopCombo2 new! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: #Gold.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: #Silver.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: #Normal.
	
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo1

	^CoffeeShopCombo1 new! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
combo2

	^CoffeeShopCombo2 new! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertOnlySaleMadeTo: adaLovelace is: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace is: self combo1.
	self assertOnlySaleMadeTo: alanKay is: self combo2! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	self assert: 0*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assert: 250*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: 100*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - volume sold' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: (250*milliliter)+(100*milliliter) equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: adaLovelace isAt: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: alanKay isAt: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: billGates isAt: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self assertRule2RewardOf: adaLovelace isAt: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self assertRule2RewardOf: alanKay isAt: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self assertRule2RewardOf: billGates isAt: 97*peso! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
assertOnlySaleMadeTo: aCustomer is: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
assertRewardOf: aCustomer afterBuying: products is: aQuantity of: aProduct at: aPrice

	| reward |

	products do: [ :aBoughtProduct | salesSystem registerSaleTo: aCustomer of: aBoughtProduct ].

	reward := salesSystem rewardOf: aCustomer ifNone: [ ^self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aProduct).
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
assertRule1RewardOf: aCustomer isAt: aPrice

	self 
		assertRewardOf: aCustomer 
		afterBuying: { self combo1. self combo2 } 
		is: 1 
		of: self combo2 
		at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 4:30:21 am (UTC)'!
assertRule2RewardOf: aCustomer isAt: aPrice

	self 
		assertRewardOf: aCustomer 
		afterBuying: { self combo1. self combo1. self combo2 } 
		is: 2 
		of: self combo1 
		at: aPrice! !
CoffeeShopSalesSystem initialize!
