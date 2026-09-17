'From Cuis7.9 [latest update: #8185] on 17 September 2026 at 12:53:49 am'!
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

!classDefinition: #GoldCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #GoldCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'GoldCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
GoldCustomer class
	instanceVariableNames: ''!

!classDefinition: #NormalCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #NormalCustomer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'IngSof1-2019-2C-1Parcial'!
!classDefinition: 'NormalCustomer class' category: #'IngSof1-2019-2C-1Parcial'!
NormalCustomer class
	instanceVariableNames: ''!

!classDefinition: #SilverCustomer category: #'IngSof1-2019-2C-1Parcial'!
CoffeeShopCustomerType subclass: #SilverCustomer
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

!CoffeeShopCustomerType methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo1RewardPrice

	self subclassResponsibility! !

!CoffeeShopCustomerType methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo2RewardPriceFor: aProduct

	self subclassResponsibility! !

!GoldCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo1RewardPrice

	^75*peso! !

!GoldCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo2RewardPriceFor: aProduct

	^aProduct price / 2! !

!NormalCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo1RewardPrice

	^97*peso! !

!NormalCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo2RewardPriceFor: aProduct

	^aProduct price * 9 / 10! !

!SilverCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo1RewardPrice

	^83*peso! !

!SilverCustomer methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
combo2RewardPriceFor: aProduct

	^aProduct price * 3 / 4! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
price

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
volume

	self subclassResponsibility! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
= anObject

	^self class = anObject class! !

!CoffeeShopProduct methodsFor: 'comparing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
hash

	^self class hash! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
price

	^150*peso! !

!Combo1 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
volume

	^250*milliliter! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
price

	^120*peso! !

!Combo2 methodsFor: 'accessing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
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

!CoffeeShopReward methodsFor: 'testing' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
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

!CoffeeShopSalesSystem methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
rewardOf: aCustomer ifNone: noneBlock 

	| volumeSoldToCustomer rewardRule |

	volumeSoldToCustomer := self volumeSoldTo: aCustomer.
	
	rewardRule := RewardRule for: volumeSoldToCustomer ifNone: [^noneBlock value].
	^rewardRule createRewardFor: aCustomer! !

!CoffeeShopSalesSystem methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:14 am (UTC)'!
volumeSoldTo: aCustomer

	 ^(self salesMadeTo: aCustomer) sum: [ :aProduct | aProduct volume ] ifEmpty: [ 0*milliliter ]! !

!CoffeeShopSalesSystem class methodsFor: 'initialization' stamp: 'HAW 23/Sep/2019, 11:50:03 am (UTC)'!
initialize

	Smalltalk at: #milliliter put: (BaseUnit named: 'milliliter')! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:26 pm (UTC)'!
productQuantity

	self subclassResponsibility ! !

!RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:51:33 pm (UTC)'!
rewardedProduct

	self subclassResponsibility ! !

!RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
createRewardFor: aCustomer 
	
	^CoffeeShopReward of: self rewardedProduct at: (self rewardPriceFor: aCustomer) quantity: self productQuantity! !

!RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
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

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer type combo1RewardPrice! !

!Combo1RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
rewardedProduct
	
	^Combo1 new! !

!Combo1RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer > (500*milliliter)! !

!Combo2RewardRule methodsFor: 'reward creation' stamp: 'HAW 22/Sep/2019, 1:23:07 pm (UTC)'!
productQuantity

	^1! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
rewardPriceFor: aCustomer

	^aCustomer type combo2RewardPriceFor: self rewardedProduct! !

!Combo2RewardRule methodsFor: 'rewards' stamp: 'HAW 17/Sep/2026, 3:53:15 am (UTC)'!
rewardedProduct
	
	^Combo2 new! !

!Combo2RewardRule class methodsFor: 'testing' stamp: 'HAW 22/Sep/2019, 10:53:22 pm (UTC)'!
isFor: volumeSoldToCustomer 

	^volumeSoldToCustomer between: 300*milliliter and: 500*milliliter
	! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
combo1

	^Combo1 new! !

!CoffeeShopTest methodsFor: 'products' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
combo2

	^Combo2 new! !

!CoffeeShopTest methodsFor: 'setup' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
setUp

	adaLovelace := CoffeeShopCustomer named: 'Ada Lovelace' ofType: GoldCustomer new.
	alanKay := CoffeeShopCustomer named: 'Alan Kay' ofType: SilverCustomer new.
	billGates := CoffeeShopCustomer named: 'Bill Gates' ofType: NormalCustomer new.
	
	salesSystem := CoffeeShopSalesSystem new! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
assertOnlySaleMadeTo: aCustomer isOf: aProduct

	| salesToCustomer |

	salesToCustomer := salesSystem salesMadeTo: aCustomer.
	self assert: 1 equals: salesToCustomer size.
	self assert: 1 equals: (salesToCustomer count: [ :aSoldProduct | aSoldProduct = aProduct ])! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
assertRewardOf: aCustomer afterBuying: numberOfCombo1 combo1And: numberOfCombo2 combo2IsQuantity: aQuantity of: aRewardedProduct at: aPrice

	| reward |

	self register: self combo1 soldTo: aCustomer times: numberOfCombo1.
	self register: self combo2 soldTo: aCustomer times: numberOfCombo2.

	reward := salesSystem rewardOf: aCustomer ifNone: [ ^self fail ].

	self assert: aQuantity equals: reward quantity.
	self assert: (reward isFor: aRewardedProduct).
	self assert: aPrice equals: reward price! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
assertRule1RewardOf: aCustomer isOneCombo2At: aPrice

	self assertRewardOf: aCustomer afterBuying: 1 combo1And: 1 combo2IsQuantity: 1 of: self combo2 at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
assertRule2RewardOf: aCustomer isTwoCombo1At: aPrice

	self assertRewardOf: aCustomer afterBuying: 2 combo1And: 1 combo2IsQuantity: 2 of: self combo1 at: aPrice! !

!CoffeeShopTest methodsFor: 'assertions' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
register: aProduct soldTo: aCustomer times: aNumberOfSales

	aNumberOfSales timesRepeat: [ salesSystem registerSaleTo: aCustomer of: aProduct ]! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test01ThereAreNoSalesWhenSalesSystemIsCreated

	self assert: (salesSystem salesMadeTo: adaLovelace) isEmpty! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test02CanQuerySalesByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	
	self assertOnlySaleMadeTo: adaLovelace isOf: self combo1! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test03SalesAreDistinguishedByCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: alanKay of: self combo2.

	self assertOnlySaleMadeTo: adaLovelace isOf: self combo1.
	self assertOnlySaleMadeTo: alanKay isOf: self combo2! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test04VolumeSoldToCustomerIsZeroWhenCustomerHasNoSaleRegistered

	self assert: 0*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test05VolumeIs_250_WhenOnlyCombo1WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo1.

	self assert: 250*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test06VolumeIs_100_WhenOnlyCombo2WasSoldToCustomer

	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: 100*milliliter equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test07VolumeSoldToCustomerIsTheSumOfAllSoldProducts

	salesSystem registerSaleTo: adaLovelace of: self combo1.
	salesSystem registerSaleTo: adaLovelace of: self combo2.

	self assert: (250*milliliter)+(100*milliliter) equals: (salesSystem volumeSoldTo: adaLovelace)! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test08NoRewardExpectedWhenCustomerHasNotBuyAnything

	salesSystem rewardOf: adaLovelace ifNone: [ ^self ].
	
	self failWith: 'No reward expected when customer has not buy anything'! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test09GoldCustomerGetsRewardedWithOneCombo2With50PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: adaLovelace isOneCombo2At: 60*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test10SilverCustomerGetsRewardedWithOneCombo2With75PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: alanKay isOneCombo2At: 120*3/4*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test11NormalCustomerGetsRewardedWithOneCombo2With90PercentItsPriceWhenRule1Holds

	self assertRule1RewardOf: billGates isOneCombo2At: 120*9/10*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test12GoldCustomerGetsRewardedWithOneCombo1At75PesosWhenRule2Holds

	self assertRule2RewardOf: adaLovelace isTwoCombo1At: 75*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test13SilverCustomerGetsRewardedWithOneCombo1At83PesosWhenRule2Holds

	self assertRule2RewardOf: alanKay isTwoCombo1At: 83*peso! !

!CoffeeShopTest methodsFor: 'tests' stamp: 'HAW 17/Sep/2026, 3:53:32 am (UTC)'!
test14NormalCustomerGetsRewardedWithOneCombo1At97PesosWhenRule2Holds

	self assertRule2RewardOf: billGates isTwoCombo1At: 97*peso! !
CoffeeShopSalesSystem initialize!
