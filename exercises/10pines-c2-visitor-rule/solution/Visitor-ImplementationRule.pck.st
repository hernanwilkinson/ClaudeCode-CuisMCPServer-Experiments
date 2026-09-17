'From Cuis 5.0 [latest update: #4076] on 20 April 2020 at 7:27:21 am'!
'Description '!
!provides: 'Visitor-ImplementationRule' 1 0!
SystemOrganization addCategory: #'Visitor-ImplementationRule'!


!classDefinition: #VisitorImplementationTests category: #'Visitor-ImplementationRule'!
TestCase subclass: #VisitorImplementationTests
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'VisitorImplementationTests class' category: #'Visitor-ImplementationRule'!
VisitorImplementationTests class
	instanceVariableNames: ''!

!classDefinition: #InvalidTransactionVisitor category: #'Visitor-ImplementationRule'!
Object subclass: #InvalidTransactionVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'InvalidTransactionVisitor class' category: #'Visitor-ImplementationRule'!
InvalidTransactionVisitor class
	instanceVariableNames: ''!

!classDefinition: #Transaction category: #'Visitor-ImplementationRule'!
Object subclass: #Transaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'Transaction class' category: #'Visitor-ImplementationRule'!
Transaction class
	instanceVariableNames: ''!

!classDefinition: #Deposit category: #'Visitor-ImplementationRule'!
Transaction subclass: #Deposit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'Deposit class' category: #'Visitor-ImplementationRule'!
Deposit class
	instanceVariableNames: ''!

!classDefinition: #Withdraw category: #'Visitor-ImplementationRule'!
Transaction subclass: #Withdraw
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'Withdraw class' category: #'Visitor-ImplementationRule'!
Withdraw class
	instanceVariableNames: ''!

!classDefinition: #TransactionAcceptNoAbstract category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionAcceptNoAbstract
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionAcceptNoAbstract class' category: #'Visitor-ImplementationRule'!
TransactionAcceptNoAbstract class
	instanceVariableNames: ''!

!classDefinition: #TransactionForInvalidVisit category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionForInvalidVisit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionForInvalidVisit class' category: #'Visitor-ImplementationRule'!
TransactionForInvalidVisit class
	instanceVariableNames: ''!

!classDefinition: #DepositNotSendingVisit category: #'Visitor-ImplementationRule'!
TransactionForInvalidVisit subclass: #DepositNotSendingVisit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'DepositNotSendingVisit class' category: #'Visitor-ImplementationRule'!
DepositNotSendingVisit class
	instanceVariableNames: ''!

!classDefinition: #TransactionForInvalidVisitor category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionForInvalidVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionForInvalidVisitor class' category: #'Visitor-ImplementationRule'!
TransactionForInvalidVisitor class
	instanceVariableNames: ''!

!classDefinition: #DepositForInvalidVisitor category: #'Visitor-ImplementationRule'!
TransactionForInvalidVisitor subclass: #DepositForInvalidVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'DepositForInvalidVisitor class' category: #'Visitor-ImplementationRule'!
DepositForInvalidVisitor class
	instanceVariableNames: ''!

!classDefinition: #TransactionVisitor category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionVisitor class' category: #'Visitor-ImplementationRule'!
TransactionVisitor class
	instanceVariableNames: ''!

!classDefinition: #TransactionVisitorForInvalidVisit category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionVisitorForInvalidVisit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionVisitorForInvalidVisit class' category: #'Visitor-ImplementationRule'!
TransactionVisitorForInvalidVisit class
	instanceVariableNames: ''!

!classDefinition: #TransactionWithoutAccept category: #'Visitor-ImplementationRule'!
Object subclass: #TransactionWithoutAccept
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'TransactionWithoutAccept class' category: #'Visitor-ImplementationRule'!
TransactionWithoutAccept class
	instanceVariableNames: ''!

!classDefinition: #VisitorRule category: #'Visitor-ImplementationRule'!
Object subclass: #VisitorRule
	instanceVariableNames: 'hierarchyRoot visitorProtocol subclasses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'VisitorRule class' category: #'Visitor-ImplementationRule'!
VisitorRule class
	instanceVariableNames: ''!

!classDefinition: #WithdrawSendingVisitWithOtherObject category: #'Visitor-ImplementationRule'!
Object subclass: #WithdrawSendingVisitWithOtherObject
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'WithdrawSendingVisitWithOtherObject class' category: #'Visitor-ImplementationRule'!
WithdrawSendingVisitWithOtherObject class
	instanceVariableNames: ''!

!classDefinition: #MessageEater category: #'Visitor-ImplementationRule'!
ProtoObject subclass: #MessageEater
	instanceVariableNames: 'receivedMessages'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Visitor-ImplementationRule'!
!classDefinition: 'MessageEater class' category: #'Visitor-ImplementationRule'!
MessageEater class
	instanceVariableNames: ''!


!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 17:45'!
should: aVisitorRule failWith: anErrorMessage

	self 
		should: [ aVisitorRule value ]
		raise: Error 
		withExceptionDo: [ :anError |
			self assert: anError messageText equals: anErrorMessage  ]! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/27/2016 20:52'!
test01RootClassHasToImplementAccept

	| rule |
	
	rule := VisitorRule on: TransactionWithoutAccept visitedWith: TransactionVisitor.
	self should: rule failWith: rule noAcceptMessageErrorDescription
! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 17:46'!
test02AcceptHasToBeAbstract

	| rule |
	
	rule := VisitorRule on: TransactionAcceptNoAbstract visitedWith: TransactionVisitor.
	self should: rule failWith: rule acceptMethodIsNotAbstract
! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 12:30'!
test03VisitorHasToImplementAllVisitMethods

	| rule |
	
	rule := VisitorRule on: TransactionForInvalidVisitor visitedWith: InvalidTransactionVisitor.
	self should: rule failWith: (rule visitMessageNotImplementedErrorDescriptionFor: DepositForInvalidVisitor)! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 15:39'!
test04AcceptImplementationMustSendRightVisit

	| rule |
	
	rule := VisitorRule on: TransactionForInvalidVisit visitedWith: TransactionVisitorForInvalidVisit.
	self should: rule failWith: (rule acceptDoesNotSendVisitMessageErrorDescriptionFor: DepositNotSendingVisit)! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 15:54'!
test05AcceptImplementationMustSendVisitWithItSelf

	| rule |
	
	rule := VisitorRule on: TransactionForInvalidVisit visitedWith: TransactionVisitorForInvalidVisit toAll: (Array with: WithdrawSendingVisitWithOtherObject).
	self should: rule failWith: (rule acceptDoesNotPassRightParameterErrorDescriptionFor: WithdrawSendingVisitWithOtherObject)! !

!VisitorImplementationTests methodsFor: 'tests' stamp: 'HernanWilkinson 12/13/2016 16:02'!
test06IsValidWithRightImplementation

	self 
		shouldnt: [  VisitorRule on: Transaction visitedWith: TransactionVisitor toAll: (Array with: Deposit with: Withdraw) ]
		raise: Error
	! !

!Transaction methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 16:03'!
accept: aVisitor

	self subclassResponsibility ! !

!Deposit methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 16:04'!
accept: aVisitor

	aVisitor visitDeposit: self.! !

!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !

!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 19:41'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !

!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/14/2011 05:54'!
value

	^ value ! !

!Withdraw methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 16:04'!
accept: aVisitor

	aVisitor visitWithdraw: self.! !

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:32'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !

!TransactionAcceptNoAbstract methodsFor: 'visitor' stamp: 'HernanWilkinson 12/13/2016 12:22'!
accept: aTransactionVisitor
! !

!TransactionForInvalidVisit methodsFor: 'visitor' stamp: 'HernanWilkinson 12/13/2016 15:41'!
accept: aVisitor

	self subclassResponsibility ! !

!DepositNotSendingVisit methodsFor: 'visitor' stamp: 'HernanWilkinson 12/13/2016 15:41'!
accept: aVisitor
! !

!TransactionForInvalidVisitor methodsFor: 'visitor' stamp: 'HernanWilkinson 12/13/2016 12:34'!
accept: aVisitor

	self subclassResponsibility ! !

!TransactionVisitor methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 17:46'!
visitDeposit: aDeposit

	self subclassResponsibility ! !

!TransactionVisitor methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 17:46'!
visitWithdraw: aWithdraw

	self subclassResponsibility ! !

!TransactionVisitorForInvalidVisit methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 15:42'!
visitDepositNotSendingVisit: aDepositNotSendingVisit! !

!TransactionVisitorForInvalidVisit methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 15:56'!
visitWithdrawSendingVisitWithOtherObject: aWithdrawSendingVisitWithOtherObject! !

!VisitorRule methodsFor: 'error messages' stamp: 'HernanWilkinson 12/13/2016 15:55'!
acceptDoesNotPassRightParameterErrorDescriptionFor: aClass 
	
	^'accept sends visit with invalid parameter in class ', aClass name ! !

!VisitorRule methodsFor: 'error messages' stamp: 'HernanWilkinson 12/13/2016 15:40'!
acceptDoesNotSendVisitMessageErrorDescriptionFor: aClass 
	
	^'accept does not send visit message on class ', aClass name! !

!VisitorRule methodsFor: 'error messages' stamp: 'HernanWilkinson 12/13/2016 17:45'!
acceptMethodIsNotAbstract
	
	^'Accept method is not abstract'! !

!VisitorRule methodsFor: 'error messages' stamp: 'HernanWilkinson 12/27/2016 20:52'!
noAcceptMessageErrorDescription
	
	^'Root of hierarchy does not define accept message'! !

!VisitorRule methodsFor: 'error messages' stamp: 'HernanWilkinson 12/13/2016 12:33'!
visitMessageNotImplementedErrorDescriptionFor: aClass 
	
	^'visit', aClass name asString,': not implemented'! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/13/2016 18:05'!
verify: visitMessage for: aSubclass sentAsParameter: messageEater

	visitMessage argument == messageEater ifFalse: [ self error: (self acceptDoesNotPassRightParameterErrorDescriptionFor: aSubclass) ]! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/27/2016 20:52'!
verifyAcceptIsCorrectOnHierarchyRoot

	| acceptMethod |

	acceptMethod := hierarchyRoot compiledMethodAt: #accept: ifAbsent: [ self error: self noAcceptMessageErrorDescription ].	
	acceptMethod isAbstract ifFalse: [ self error: self acceptMethodIsNotAbstract ]! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/13/2016 18:02'!
verifyAcceptSends: visitMessageName for: aSubclass

	| messageEater visitedObject visitMessage |

	visitedObject := aSubclass basicNew.
	messageEater := MessageEater new.
	visitedObject accept: messageEater.

	visitMessage := self verifyAcceptSent: visitMessageName for: aSubclass using: messageEater.
	self verify: visitMessage for: aSubclass sentAsParameter: messageEater! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/13/2016 18:06'!
verifyAcceptSent: visitMessageName for: aSubclass using: messageEater

	^messageEater
		firstReceivedMessageNamed: visitMessageName
		ifNone: [ self error: (self acceptDoesNotSendVisitMessageErrorDescriptionFor: aSubclass) ].
! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/13/2016 17:59'!
verifyVisitorImplements: visitMessageName for: aSubclass

	(visitorProtocol canUnderstand: visitMessageName)
		ifFalse: [ self error: (self visitMessageNotImplementedErrorDescriptionFor: aSubclass) ]! !

!VisitorRule methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 12/13/2016 17:59'!
verifyVisitsAreImplementedCorrectly
	
	subclasses do: [ :aSubclass | | visitMessageName |
		visitMessageName := ('visit' , aSubclass name , ':') asSymbol.
		self verifyVisitorImplements: visitMessageName for: aSubclass.
		self verifyAcceptSends: visitMessageName for: aSubclass ]! !

!VisitorRule methodsFor: 'initialization' stamp: 'HernanWilkinson 12/13/2016 12:05'!
initializeOn: aHierarchyRoot visitedWith: aVisitorProtocol toAll: aCollectionOfSubclasses 

	hierarchyRoot := aHierarchyRoot.
	visitorProtocol := aVisitorProtocol.
	subclasses := aCollectionOfSubclasses ! !

!VisitorRule methodsFor: 'evaluating' stamp: 'HAW 4/20/2020 07:26:09'!
value

	self verifyAcceptIsCorrectOnHierarchyRoot.
	self verifyVisitsAreImplementedCorrectly! !

!VisitorRule class methodsFor: 'instance creation' stamp: 'HernanWilkinson 12/13/2016 12:02'!
on: aHierarchyRoot visitedWith: aVisitorProtoco

	^self on: aHierarchyRoot visitedWith: aVisitorProtoco toAll: aHierarchyRoot concreteSubclasses ! !

!VisitorRule class methodsFor: 'instance creation' stamp: 'HernanWilkinson 12/13/2016 12:05'!
on: aHierarchyRoot visitedWith: aVisitorProtocol toAll: aCollectionOfSubclasses 

	^self new initializeOn: aHierarchyRoot visitedWith: aVisitorProtocol toAll: aCollectionOfSubclasses 
! !

!WithdrawSendingVisitWithOtherObject methodsFor: 'visitor protocol' stamp: 'HernanWilkinson 12/13/2016 15:54'!
accept: aVisitor

	aVisitor visitWithdrawSendingVisitWithOtherObject: 1! !

!MessageEater methodsFor: 'message handling' stamp: 'HernanWilkinson 12/13/2016 15:48'!
doesNotUnderstand: aMessage

	receivedMessages add: aMessage.
	^self! !

!MessageEater methodsFor: 'query' stamp: 'HernanWilkinson 12/13/2016 16:01'!
firstReceivedMessageNamed: aMessageName ifNone: aNoneBlock

	^receivedMessages detect: [ :aMessage | aMessage selector = aMessageName ] ifNone: aNoneBlock ! !

!MessageEater methodsFor: 'initialization' stamp: 'HernanWilkinson 12/13/2016 15:48'!
initialize

	receivedMessages := OrderedCollection new.! !

!Behavior methodsFor: '*Visitor-ImplementationRule' stamp: 'HAW 4/20/2020 07:21:14'!
concreteSubclasses
	
	^self allSubclasses reject: [ :aClass | aClass hasAbstractMethods ]! !

!Behavior methodsFor: '*Visitor-ImplementationRule' stamp: 'HAW 4/20/2020 07:21:45'!
hasAbstractMethods
	"Tells whether the receiver locally defines an abstract method, i.e., a method sending subclassResponsibility"
	
	self methodsDo: [:each | each isAbstract ifTrue: [ ^true ]].
	^false! !
