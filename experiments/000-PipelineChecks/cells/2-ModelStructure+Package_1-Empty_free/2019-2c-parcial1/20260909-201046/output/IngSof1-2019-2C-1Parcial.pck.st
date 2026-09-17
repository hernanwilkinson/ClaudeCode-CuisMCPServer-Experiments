'From Cuis7.9 [latest update: #8163] on 9 September 2026 at 8:13:36 pm'!
'Description '!
!provides: 'IngSof1-2019-2C-1Parcial' 1 0!
SystemOrganization addCategory: #'IngSof1-2019-2C-1Parcial'!


!classDefinition: #CoffeeShopCustomer category: #'IngSof1-2019-2C-1Parcial'!
Object subclass: #CoffeeShopCustomer
	instanceVariableNames: 'name type'
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

!classDefinition: #Combo1Product category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #Combo1Product
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo1Product class' category: #'IngSof1-2019-2C-1Parcial'!
Combo1Product class
	instanceVariableNames: ''!

!classDefinition: #Combo2Product category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopProduct subclass: #Combo2Product
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'Combo2Product class' category: #'IngSof1-2019-2C-1Parcial'!
Combo2Product class
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
	instanceVariableNames: 'product'
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

!classDefinition: #CoffeeShopTest category: #'IngSof1-2019-2C-1Parcial'!
TestCase subclass: #CoffeeShopTest
	instanceVariableNames: 'billGates adaLovelace alanKay salesSystem'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'CoffeeShopTest class' category: #'IngSof1-2019-2C-1Parcial'!
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

!CoffeeShopCustomer class methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 11:11:41 pm (UTC)'!
named: aName ofType: aType
	| customer |
	customer := (self classFor: aType) new.
	customer initializeNamed: aName ofType: aType.
	^customer! !

!CoffeeShopCustomer class methodsFor: 'private' stamp: 'HAW 9/Sep/2026, 11:11:42 pm (UTC)'!
classFor: aType
	aType = #Gold ifTrue: [ ^GoldCustomer ].
	aType = #Silver ifTrue: [ ^SilverCustomer ].
	aType = #Normal ifTrue: [ ^NormalCustomer ].
	self error: 'Invalid customer type'! !

!GoldCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:34 pm (UTC)'!
rewardPriceFor: productPrice
	^productPrice / 2! !

!GoldCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:33 pm (UTC)'!
rewardPriceForCombo1
	^75*peso! !

!NormalCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:38 pm (UTC)'!
rewardPriceFor: productPrice
	^productPrice * 9 / 10! !

!NormalCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:37 pm (UTC)'!
rewardPriceForCombo1
	^97*peso! !

!SilverCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:36 pm (UTC)'!
rewardPriceFor: productPrice
	^productPrice * 3 / 4! !

!SilverCustomer methodsFor: 'rewards' stamp: 'HAW 9/Sep/2026, 11:11:35 pm (UTC)'!
rewardPriceForCombo1
	^83*peso! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:13 pm (UTC)'!
name
	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:12 pm (UTC)'!
price
	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:12 pm (UTC)'!
volume
	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 9/Sep/2026, 11:11:14 pm (UTC)'!
= other
	^self class = other class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 9/Sep/2026, 11:11:14 pm (UTC)'!
hash
	^self class hash! !

!CoffeeShopProduct methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 11:11:22 pm (UTC)'!
singletonInstance
	^self new! !

!Combo1Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:19 pm (UTC)'!
name
	^#Combo1! !

!Combo1Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:18 pm (UTC)'!
price
	^150*peso! !

!Combo1Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:18 pm (UTC)'!
volume
	^250*milliliter! !

!Combo1Product class methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 11:11:51 pm (UTC)'!
singleton
	^self new! !

!Combo2Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:21 pm (UTC)'!
name
	^#Combo2! !

!Combo2Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:21 pm (UTC)'!
price
	^120*peso! !

!Combo2Product methodsFor: 'accessing' stamp: 'HAW 9/Sep/2026, 11:11:20 pm (UTC)'!
volume
	^100*milliliter! !

!Combo2Product class methodsFor: 'instance creation' stamp: 'HAW 9/Sep/2026, 11:11:51 pm (UTC)'!
singleton
	^self new! !

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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 11:11:26 pm (UTC)'!
isForCombo1
	product = #Combo1 ifTrue: [ ^true ].
	^product isKindOf: Combo1Product! !

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 9/Sep/2026, 11:11:27 pm (UTC)'!
isForCombo2
	product = #Combo2 ifTrue: [ ^true ].
	^product isKindOf: Combo2Product! !

!CoffeeShopReward class methodsFor: 'instance creation' stamp: 'HAW 20/Sep/2019, 8:53:14 pm (UTC)'!
of: aComboType at: aPrice quantity: aQuantity

	^self new initializeOf: aComboType at: aPrice quantity: aQuantity
! !

!CoffeeShopSalesSystem methodsFor: 'product volume' stamp: 'HAW 9/Sep/2026, 11:11:53 pm (UTC)'!
volumeOf: aProduct
	aProduct = #Combo1 ifTrue: [ ^250*milliliter ].
	aProduct = #Combo2 ifTrue: [ ^100*milliliter ].
	(aProduct isKindOf: Combo1Product) ifTrue: [ ^aProduct volume ].
	(aProduct isKindOf: Combo2Product) ifTrue: [ ^aProduct volume ].
	self error: 'Invalid product'! !

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

!CoffeeShopSalesSystem methodsFor: 'selling' stamp: 'HAW 22/Sep/2019, 10:51:19 pm (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | self volumeOf: aProduct ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem methodsFor: 'rewarding' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| salesToCustomer volumeSoldToCustomer rewardRule |

	salesToCustomer := self salesMadeTo: aCustomer.
	volumeSoldToCustomer := self volumeSoldTo: aCustomer.
	
	rewardRule := RewardRule for: volumeSoldToCustomer ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer.
	! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:03:50 pm (UTC)'!
createRewardFor: aCustomer 
	
	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'product price' stamp: 'HAW 9/Sep/2026, 11:11:54 pm (UTC)'!
priceOf: aProduct
	aProduct = #Combo1 ifTrue: [ ^150*peso ].
	aProduct = #Combo2 ifTrue: [ ^120*peso ].
	(aProduct isKindOf: Combo1Product) ifTrue: [ ^aProduct price ].
	(aProduct isKindOf: Combo2Product) ifTrue: [ ^aProduct price ].
	self error: 'Invalid combo type'! !

!RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 
		
	self subclassResponsibility ! !

!RewardRule class methodsFor: 'instance creation' stamp: 'HAW 22/Sep/2019, 10:53:42 pm (UTC)'!
for: volumeSoldToCustomer ifNone: aNoneBlock

	^self subclasses 
		detect: [ :aRuleClass | aRuleClass isFor: volumeSoldToCustomer ] 
		ifFound: [ :aRuleClass | aRuleClass new ]
		ifNone: aNoneBlock ! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 9/Sep/2026, 11:11:45 pm (UTC)'!
createRewardFor: aCustomer
	product := self rewardedProduct.
	^CoffeeShopReward of: product at: aCustomer rewardPriceForCombo1 quantity: self productQuantity! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:54:35 pm (UTC)'!
productQuantity
	
	^2! !

!Combo1RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:01:41 pm (UTC)'!
rewardedProduct
	
	^#Combo1! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 9/Sep/2026, 11:11:46 pm (UTC)'!
createRewardFor: aCustomer
	product := self rewardedProduct.
	^CoffeeShopReward of: product at: (aCustomer rewardPriceFor: (self priceOf: product)) quantity: self productQuantity! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 10:00:28 pm (UTC)'!
rewardedProduct
	
	^#Combo2! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'setUp/tearDown' stamp: 'HAW 23/Sep/2019, 12:41:38 am (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: #Gold.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: #Silver.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: #Normal! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 20/Sep/2019, 8:15:53 pm (UTC)'!
combo1

	^#Combo1! !

!CoffeeShopTest methodsFor: 'test objects' stamp: 'HAW 20/Sep/2019, 8:21:01 pm (UTC)'!
combo2

	^#Combo2! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 23/Sep/2019, 12:41:51 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	salesSystem := CoffeeShopSalesSystem new.

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 9/Sep/2026, 11:12:13 pm (UTC)'!
test02CanQuerySalesByCustomer
	salesSystem := CoffeeShopSalesSystem new.
	salesSystem registerSaleTo: adaLovelace of: self combo1.
	self assertSalesForCustomer: adaLovelace includingCount: 1 ofCombo: self combo1! !

!CoffeeShopTest methodsFor: 'tests - sales' stamp: 'HAW 9/Sep/2026, 11:12:15 pm (UTC)'!
test03SalesAreDistinguishedByCustomer
	salesSystem := CoffeeShopSalesSystem new.
	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.
	self assertSalesForCustomer: adaLovelace includingCount: 1 ofCombo: self combo1.
	self assertSalesForCustomer: alanKay includingCount: 1 ofCombo: self combo2! !

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

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:18 pm (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo2) toCustomer: adaLovelace.
	self assertRewardFor: adaLovelace hasQuantity: 1 isForCombo: #isForCombo2 atPrice: 60*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:19 pm (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo2) toCustomer: alanKay.
	self assertRewardFor: alanKay hasQuantity: 1 isForCombo: #isForCombo2 atPrice: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:21 pm (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo2) toCustomer: billGates.
	self assertRewardFor: billGates hasQuantity: 1 isForCombo: #isForCombo2 atPrice: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:22 pm (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo1 #Combo2) toCustomer: adaLovelace.
	self assertRewardFor: adaLovelace hasQuantity: 2 isForCombo: #isForCombo1 atPrice: 75*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:24 pm (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo1 #Combo2) toCustomer: alanKay.
	self assertRewardFor: alanKay hasQuantity: 2 isForCombo: #isForCombo1 atPrice: 83*peso! !

!CoffeeShopTest methodsFor: 'tests - rewards' stamp: 'HAW 9/Sep/2026, 11:12:25 pm (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds
	salesSystem := CoffeeShopSalesSystem new.
	self registerSales: #(#Combo1 #Combo1 #Combo2) toCustomer: billGates.
	self assertRewardFor: billGates hasQuantity: 2 isForCombo: #isForCombo1 atPrice: 97*peso! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 9/Sep/2026, 11:12:39 pm (UTC)'!
assertRewardFor: aCustomer hasQuantity: expectedQuantity isForCombo: comboSelector atPrice: expectedPrice
	| reward |
	reward := salesSystem rewardOf: aCustomer ifNone: [ self fail ].
	self assert: expectedQuantity equals: reward quantity.
	self assert: (reward perform: comboSelector).
	self assert: expectedPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 9/Sep/2026, 11:12:06 pm (UTC)'!
assertSalesForCustomer: aCustomer includingCount: expectedCount ofCombo: comboSymbol
	| salesToCustomer |
	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: expectedCount equals: salesToCustomer size.
	self assert: expectedCount equals: (salesToCustomer count: [ :aProduct | aProduct = comboSymbol ])! !

!CoffeeShopTest methodsFor: 'test helpers' stamp: 'HAW 9/Sep/2026, 11:12:02 pm (UTC)'!
registerSales: salesSpec toCustomer: aCustomer
	"salesSpec is an array of combo symbols to register"
	salesSpec do: [ :comboSymbol | salesSystem registerSaleTo: aCustomer of: comboSymbol ]! !
CoffeeShopSalesSystem initialize!
