!classDefinition: #PortfolioTest category: 'PortfolioTimeConsuming-Ejercicio'!
TestCase subclass: #PortfolioTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 18:28:42'!
registerDepositFor: amount into: account
	
	^Deposit register: amount on: account.! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:20:55'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated 

	| account |
	account := ReceptiveAccount new.

	self assert: 0 equals: account balance 
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:21:05'!
test02DepositIncreasesBalanceOnTransactionValue 

	| account |
	account := ReceptiveAccount  new.
	Deposit register: 100 on: account.
		
	self assert: 100 equals: account balance ! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:21:13'!
test03WithdrawDecreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	Withdraw register: 50 on: account.
		
	self assert: 50 equals: account balance 
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:21:25'!
test03_01WithdrawValueMustBePositive 

	| account withdrawValue |
	
	account := ReceptiveAccount new.
	withdrawValue := 50.
	
	self assert: (Withdraw register: withdrawValue on: account) value equals: withdrawValue 
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:21:38'!
test04PortfolioBalanceIsSumOfManagedAccountsBalance

	| account1 account2 complexPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	 	
	Deposit register: 100 on: account1.
	Deposit register: 200 on: account2.
		
	self assert: 300 equals: complexPortfolio balance ! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:21:50'!
test05PortfolioCanManagePortfolios

	| account1 account2 account3 complexPortfolio composedPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	Deposit register: 100 on:account1.
	Deposit register: 200 on: account2.
	Deposit register: 300 on: account3.

	self assert: 600 equals: composedPortfolio balance .! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:32:05'!
test06ReceptiveAccountKnowsRegisteredTransactions 

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit := Deposit register: 100 on: account.
	withdraw := Withdraw register: 50 on: account.
		
	self assert: (account hasRegistered: deposit).
	self assert: (account hasRegistered: withdraw).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:32:05'!
test07ReceptiveAccountDoNotKnowNotRegisteredTransactions

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit :=  Deposit for: 100.
	withdraw := Withdraw for: 50.
		
	self deny: (account hasRegistered: deposit).
	self deny: (account hasRegistered:withdraw).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:32:05'!
test08PortfolioKnowsTransactionsRegisteredByItsManagedAccounts 

	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 deposit2 deposit3 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	deposit1 := Deposit register: 100 on: account1.
	deposit2 := Deposit register: 200 on: account2.
	deposit3 := Deposit register: 300 on: account3.
		
 	self assert: (composedPortfolio hasRegistered: deposit1).
	self assert: (composedPortfolio hasRegistered: deposit2).
	self assert: (composedPortfolio hasRegistered: deposit3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:31:24'!
test10ReceptiveAccountManageItSelf 

	| account1 |
	
	account1 := ReceptiveAccount new.
		
	self assert: (account1 doesManage: account1).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:31:24'!
test11ReceptiveAccountDoNotManageOtherAccount

	| account1 account2 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
		
	self deny: (account1 doesManage: account2).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:31:24'!
test12PortfolioManagesComposedAccounts

	| account1 account2 account3 complexPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
		
	self assert: (complexPortfolio doesManage: account1).
	self assert: (complexPortfolio doesManage: account2).
	self deny: (complexPortfolio doesManage: account3).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:31:24'!
test13PortfolioManagesComposedAccountsAndPortfolios 

	| account1 account2 account3 complexPortfolio composedPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	self assert: (composedPortfolio doesManage: account1).
	self assert: (composedPortfolio doesManage: account2).
	self assert: (composedPortfolio doesManage: account3).
	self assert: (composedPortfolio doesManage: complexPortfolio).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:22:56'!
test14AccountKnowsItsTransactions 

	| account1 deposit1 |
	
	account1 := ReceptiveAccount new.
	
	deposit1 := Deposit register: 100 on:account1.
		
	self assert: 1 equals: account1 transactions size.
	self assert: (account1 transactions includes: deposit1).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/18/2011 17:15'!
test15PortfolioTransactionsIsTheUnionOftsAccountsTransactions 

	| account1 account2 account3 complexPortfolio account composedPortfolio deposit1 deposit2 deposit3 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	deposit1 := Deposit register: 100 on: account1.
	deposit2 := Deposit register: 200 on: account2.
	deposit3 := Deposit register: 300 on: account3.
		
	self assert: 3 = composedPortfolio transactions size .
	self assert: (composedPortfolio transactions includes: deposit1).
	self assert: (composedPortfolio transactions includes: deposit2).
	self assert: (composedPortfolio transactions includes: deposit3).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:23:16'!
test16PortfolioKnowsItsAccountsTransactions 

	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	deposit1 := Deposit register: 100 on: account1.
		
	self assert: 1 equals: (composedPortfolio transactionsOf:account1) size.
	self assert: ((composedPortfolio transactionsOf: account1) includes:deposit1).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:23:26'!
test17PortfolioKnowsItsPortfoliosTransactions 

	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 deposit2 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	deposit1 := Deposit register: 100 on: account1.
	deposit2 := Deposit register: 100 on: account2.
	Deposit register: 100 on: account3.
		
	self assert: 2 equals: (composedPortfolio transactionsOf:complexPortfolio) size.
	self assert: ((composedPortfolio transactionsOf:complexPortfolio) includes:deposit1).
	self assert: ((composedPortfolio transactionsOf:complexPortfolio) includes:deposit2).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:24'!
test18PortfolioCanNotAnswerTransactionsOfNotManagedAccounts 

	| account1 account2 account3 complexPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
		
	self 
		should: [ complexPortfolio transactionsOf:account3 ] 
		raise: Error 
		withExceptionDo: [ :accountNotManaged |
			self assert: Portfolio accountNotManagedMessageDescription = accountNotManaged messageText ]
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 5/8/2018 16:24:31'!
test19CanNotCreatePortfoliosWithRepeatedAccount 

	| account1 |

	account1 := ReceptiveAccount new.
	self 
		should: [ Portfolio with: account1 with: account1 ]
		raise: Error
		withExceptionDo: [ :invalidPortfolio |
			self assert: Portfolio accountAlreadyManagedErrorMessage  = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 18:22:55'!
test20CanNotCreatePortfoliosWithAccountsManagedByOtherManagedPortfolio 

	| account1 account2 account3 complexPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio withAll: (Array with: account1 with: account2 with: account3).

	self 
		should: [ Portfolio withAll: (Array with: complexPortfolio with: account1) ]
		raise: Error
		withExceptionDo: [ :invalidPortfolio |
			self assert: Portfolio accountAlreadyManagedErrorMessage = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 18:23:08'!
test20_01CanNotCreatePortfoliosWithPortfoliosThatManagedSameAccounts

    | account1 account2 account3 complexPortfolio1 complexPortfolio2 |
    
    account1 := ReceptiveAccount new.
    account2 := ReceptiveAccount new.
    account3 := ReceptiveAccount new.    
    complexPortfolio1 := Portfolio withAll: (Array with: account1 with: account2).
    complexPortfolio2 := Portfolio withAll: (Array with: account3 with: account1).


    self 
        should: [ Portfolio with: complexPortfolio1 with: complexPortfolio2 ]
        raise: Error
        withExceptionDo: [ :invalidPortfolio |
            self assert: Portfolio accountAlreadyManagedErrorMessage = invalidPortfolio messageText ] ! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:35:21'!
test21TransferShouldWithdrawFromFromAccountAndDepositIntoToAccount

	| fromAccount toAccount |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	self registerTransferOf: 100 from: fromAccount to: toAccount.
		
	self assert: -100 equals: fromAccount balance.
	self assert:  100 equals: toAccount balance.! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:43:51'!
test21_01TransferShouldRegistersATransferDepositOnToAccount

	| fromAccount toAccount transfer |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	transfer := self registerTransferOf: 100 from: fromAccount to: toAccount.
		
	self assert: (toAccount hasRegistered: transfer depositLeg).
	self assert: transfer value equals: transfer depositLeg value! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:43:34'!
test21_02TransferShouldRegistersATransferWithdrawOnFromAccount

	| fromAccount toAccount transfer |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	transfer := self registerTransferOf: 100 from: fromAccount to: toAccount.
		
	self assert: (fromAccount hasRegistered: transfer withdrawLeg).
	self assert: transfer value equals: transfer withdrawLeg value! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:46:25'!
test21_03TransferLegsKnowTransfer

	| fromAccount toAccount transfer |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	transfer := self registerTransferOf: 100 from: fromAccount to: toAccount.
		
	self assert: transfer depositLeg transfer equals: transfer withdrawLeg transfer.
	self assert: transfer equals: transfer depositLeg transfer.
	self assert: transfer equals: transfer withdrawLeg transfer.
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:36:20'!
test22AccountSummaryShouldProvideHumanReadableTransactionsDetail

	| fromAccount toAccount fromAccountLines toAccountLines|

	fromAccount := ReceptiveAccount new.
	toAccount := ReceptiveAccount new.
	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	self registerTransferOf: 100 from: fromAccount to: toAccount.
	
	fromAccountLines := self accountSummaryLinesOf: fromAccount.
	toAccountLines := self accountSummaryLinesOf: toAccount.
	
	self assert: 3 equals: fromAccountLines size.
	self assert: 'Deposito por 100' equals: (fromAccountLines at: 1).
	self assert: 'Extraccion por 50' equals: (fromAccountLines at: 2).
	self assert: 'Transferencia por -100' equals: (fromAccountLines at: 3).
	
	self assert: 1 equals: toAccountLines size.
	self assert: 'Transferencia por 100' equals: (toAccountLines at: 1).
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:36:40'!
test23ShouldBeAbleToBeQueryTransferNet

	| fromAccount toAccount |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	self registerTransferOf: 100 from: fromAccount to: toAccount.
	self registerTransferOf: 250 from: toAccount to: fromAccount.
		
	self assert: 150 equals: (self accountTransferNetOf: fromAccount).
	self assert: -150 equals: (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:34:21'!
test24CertificateOfDepositShouldWithdrawInvestmentValue

	| account toAccount |
	account := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 1000 on: account.
	Withdraw register: 50 on: account.
	self registerTransferOf: 100 from: account to: toAccount.
	self registerCertificateOfDepositOf: 100 during: 30 at: 1/10 on: account.
		
	self assert: 100 equals: (self investmentNetOf:account).
	self assert: 750 equals: account balance.! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:33:28'!
test25ShouldBeAbleToQueryInvestmentEarnings

	| account investmentEarnings |
	
	account := ReceptiveAccount new. 
		
	self registerCertificateOfDepositOf: 100 during: 30 at: 1/10 on: account.
	self registerCertificateOfDepositOf: 100 during: 60 at: 15/100 on: account.

	investmentEarnings := 
		(100*((1/10)/360)*30) +
		(100*((15/100)/360)*60).
		
	self assert: investmentEarnings equals: (self investmentEarningsOf: account).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:34:12'!
test26AccountSummaryShouldWorkWithCertificateOfDeposit

	| fromAccount toAccount lines |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	self registerTransferOf: 100 from: fromAccount to: toAccount.
	self registerCertificateOfDepositOf: 1000 during: 30 at: 1/10 on: fromAccount.
		
	lines := self accountSummaryLinesOf: fromAccount.
		
	self assert: 4 equals: lines size.
	self assert: 'Deposito por 100' equals:  (lines at: 1).
	self assert: 'Extraccion por 50' equals:  (lines at: 2).
	self assert: 'Transferencia por -100' equals: (lines at: 3).
	self assert: 'Plazo fijo por 1000 durante 30 dias a una tna de 10%' equals: (lines at: 4).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:34:57'!
test27ShouldBeAbleToBeQueryTransferNetWithCertificateOfDeposit

	| fromAccount toAccount |
	
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	self registerTransferOf: 100 from: fromAccount to: toAccount.
	self registerTransferOf: 250 from: toAccount to: fromAccount.
	self registerCertificateOfDepositOf: 1000 during: 30 at: 1/10 on: fromAccount.
		
	self assert: 150 equals: (self accountTransferNetOf: fromAccount).
	self assert: -150 equals: (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:46:56'!
test28PortfolioTreePrinterPrintsTheCompositeInDepthFirstOrder

	| account1 account2 account3 complexPortfolio composedPortfolio accountNames lines |
	
	account1 := ReceptiveAccount new. 
	account2 := ReceptiveAccount new. 
	account3 := ReceptiveAccount new. 
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.

	accountNames := Dictionary new.
	accountNames at: composedPortfolio put: 'composedPortfolio'.
	accountNames at: complexPortfolio put: 'complexPortfolio'.
	accountNames at: account1 put: 'account1'.
	accountNames at: account2 put: 'account2'.
	accountNames at: account3 put: 'account3'.
		
	lines := self portofolioTreeOf: composedPortfolio namingAccountWith: accountNames.
		
	self assert: 5 equals: lines size.
	self assert: 'composedPortfolio' equals: (lines at: 1).
	self assert: ' complexPortfolio' equals: (lines at: 2).
	self assert: '  account1' equals: (lines at: 3).
	self assert: '  account2' equals: (lines at: 4).
	self assert: ' account3' equals: (lines at: 5).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 10/18/2018 16:47:19'!
test29ReversePortfolioTreePrinterPrintsTheCompositeStartingFromTheLeaves

	| account1 account2 account3 complexPortfolio composedPortfolio accountNames lines |
	account1 := ReceptiveAccount new. 
	account2 := ReceptiveAccount new. 
	account3 := ReceptiveAccount new. 
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.

	accountNames := Dictionary new.
	accountNames at: composedPortfolio put: 'composedPortfolio'.
	accountNames at: complexPortfolio put: 'complexPortfolio'.
	accountNames at: account1 put: 'account1'.
	accountNames at: account2 put: 'account2'.
	accountNames at: account3 put: 'account3'.
		
	lines := self reversePortofolioTreeOf: composedPortfolio namingAccountWith: accountNames.
		
	self assert: 5 equals: lines size.
	self assert: ' account3' equals: (lines at: 1).
	self assert: '  account2' equals: (lines at: 2).
	self assert: '  account1' equals: (lines at: 3).
	self assert: ' complexPortfolio' equals: (lines at: 4).
	self assert: 'composedPortfolio' equals: (lines at: 5).
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 8/13/2017 17:52:44'!
test30AccountSummaryWithInvestmentEarningsShouldNotTakeTooLong

	| fromAccount toAccount lines |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	CertificateOfDeposit register: 1000 during: 360 at: 1/10 on: fromAccount.
		
	self 
		should: [ lines := (AccountSummaryWithInvestmentEarnings for: fromAccount) lines ]
		notTakeMoreThanMilliseconds: 1100.	
		
	self assert: 5 = lines size.
	self assert: 'Deposito por 100' =  (lines at: 1).
	self assert: 'Extraccion por 50' =  (lines at: 2).
	self assert: 'Transferencia por -100' = (lines at: 3).
	self assert: 'Plazo fijo por 1000 durante 360 dias a una tna de 10%' = (lines at: 4).
	self assert: 'Ganancias por 100' = (lines at: 5).
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 8/13/2017 17:52:59'!
test31AccountSummaryWithInvestmentFullInfoShouldNotTakeTooLong

	| fromAccount toAccount lines |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	CertificateOfDeposit register: 1000 during: 360 at: 1/10 on: fromAccount.
		
	self 
		should: [ lines := (AccountSummaryWithAllInvestmentInformation for: fromAccount) lines ]
		notTakeMoreThanMilliseconds: 1100.
		
	self assert: 6 = lines size.
	self assert: 'Deposito por 100' =  (lines at: 1).
	self assert: 'Extraccion por 50' =  (lines at: 2).
	self assert: 'Transferencia por -100' = (lines at: 3).
	self assert: 'Plazo fijo por 1000 durante 360 dias a una tna de 10%' = (lines at: 4).
	self assert: 'Ganancias por 100' = (lines at: 5).
	self assert: 'Inversiones por 1000' = (lines at: 6)! !


!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 05:40'!
accountSummaryLinesOf: aReceptiveAccount 
	
	| summary |
	
	summary := AccountSummary for: aReceptiveAccount.
	^ summary lines
! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:58'!
accountTransferNetOf: aReceptiveAccount 
	
	^ (AccountTransferNetVisitor for: aReceptiveAccount) value! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:58'!
investmentEarningsOf: aReceptiveAccount 
	
	^ (InvestmentEarningVisitor for: aReceptiveAccount) value! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:58'!
investmentNetOf: aReceptiveAccount 
	
	^ (InvestmentNetVisitor for: aReceptiveAccount) value! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:31'!
portofolioTreeOf: aPortfolio namingAccountWith: aDictionary 
	
	^ (PortfolioTreePrinter of: aPortfolio namingAccountsWith: aDictionary) lines! !

!PortfolioTest methodsFor: 'test support' stamp: 'HAW 10/24/2018 12:40:59'!
registerCertificateOfDepositOf: anAmount during: aNumberOfDays at: anInteresRate on: anAccount

	CertificateOfDeposit register: anAmount during: aNumberOfDays at: anInteresRate on: anAccount ! !

!PortfolioTest methodsFor: 'test support' stamp: 'HAW 10/24/2018 12:38:33'!
registerTransferOf: anAmount from: fromAccount to: toAccount

	^Transfer register: anAmount from: fromAccount to: toAccount! !

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:42'!
reversePortofolioTreeOf: aPortfolio namingAccountWith: aDictionary 
	
	^ (ReversePortfolioTreePrinter of: aPortfolio namingAccountsWith: aDictionary ) lines! !


!PortfolioTest methodsFor: 'asserting' stamp: 'HAW 8/13/2017 17:58:44'!
should: aBlock notTakeMoreThanMilliseconds: aTimeInMillis

	self assert: aBlock timeToRun <= aTimeInMillis ! !


!classDefinition: #AccountSummaryWithAllInvestmentInformation category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #AccountSummaryWithAllInvestmentInformation
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountSummaryWithAllInvestmentInformation methodsFor: 'initialization' stamp: 'HernanWilkinson 7/17/2011 23:56'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!AccountSummaryWithAllInvestmentInformation methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/17/2011 23:58'!
lines 

	| lines investmentEarnings |
	
	investmentEarnings := InvestmentNetVisitor for: account.
	lines := (AccountSummaryWithInvestmentEarnings for: account) lines.
	lines add: 'Inversiones por ', investmentEarnings value printString.
	
	 ^ lines! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummaryWithAllInvestmentInformation class' category: 'PortfolioTimeConsuming-Ejercicio'!
AccountSummaryWithAllInvestmentInformation class
	instanceVariableNames: ''!

!AccountSummaryWithAllInvestmentInformation class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/17/2011 23:56'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountSummaryWithInvestmentEarnings category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #AccountSummaryWithInvestmentEarnings
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountSummaryWithInvestmentEarnings methodsFor: 'initialization' stamp: 'HernanWilkinson 7/17/2011 23:52'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!AccountSummaryWithInvestmentEarnings methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/17/2011 23:53'!
lines 

	| lines investmentEarnings |
	
	investmentEarnings := InvestmentEarningVisitor for: account.
	lines := (AccountSummary for: account) lines.
	lines add: 'Ganancias por ', investmentEarnings value printString.
	
	 ^ lines! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummaryWithInvestmentEarnings class' category: 'PortfolioTimeConsuming-Ejercicio'!
AccountSummaryWithInvestmentEarnings class
	instanceVariableNames: ''!

!AccountSummaryWithInvestmentEarnings class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/17/2011 23:51'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountTransaction category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountTransaction methodsFor: 'evaluating' stamp: 'HAW 10/18/2018 20:20:37'!
affectBalance: currentBalance  

	self subclassResponsibility ! !

!AccountTransaction methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:48'!
value

	self subclassResponsibility ! !


!AccountTransaction methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:23:29'!
accept: anAccountTransactionVisitor

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'HAW 10/18/2018 21:06:37'!
for: anAmount

	self subclassResponsibility ! !


!AccountTransaction class methodsFor: 'registering' stamp: 'HAW 10/18/2018 19:48:18'!
register: aValue on: account

	| transaction |
	
	transaction := self for: aValue.
	account register: transaction.
		
	^ transaction! !


!classDefinition: #CertificateOfDeposit category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransaction subclass: #CertificateOfDeposit
	instanceVariableNames: 'value tna numberOfDays account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!CertificateOfDeposit methodsFor: 'accessing' stamp: 'HernanWilkinson 7/14/2011 06:23'!
days
	
	^numberOfDays ! !

!CertificateOfDeposit methodsFor: 'accessing' stamp: 'HernanWilkinson 7/14/2011 05:14'!
earnings

	^ value*(tna/360)*numberOfDays
	! !

!CertificateOfDeposit methodsFor: 'accessing' stamp: 'HernanWilkinson 7/14/2011 06:24'!
tna
	^ tna! !

!CertificateOfDeposit methodsFor: 'accessing' stamp: 'HernanWilkinson 7/14/2011 06:13'!
value

	^ value! !


!CertificateOfDeposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
accept: aTransactionVisitor

	^ aTransactionVisitor visitCertificateOfDeposit: self! !


!CertificateOfDeposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:16'!
initializeFor: aValue during: aNumberOfDay at: aTNA on: anAccount

	value := aValue.
	numberOfDays := aNumberOfDay.
	tna := aTNA.
	account := anAccount ! !


!CertificateOfDeposit methodsFor: 'evaluating' stamp: 'HAW 10/24/2018 12:41:35'!
affectBalance: currentBalance

	^currentBalance - self value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CertificateOfDeposit class' category: 'PortfolioTimeConsuming-Ejercicio'!
CertificateOfDeposit class
	instanceVariableNames: ''!

!CertificateOfDeposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:12'!
for: aValue during: aNumberOfDay at: aTNA on: anAccount

	^ self new initializeFor: aValue during: aNumberOfDay at: aTNA on: anAccount! !

!CertificateOfDeposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:09'!
register: aValue during: aNumberOfDay at: aTNA on: anAccount

	| certificateOfDeposit |
	
	certificateOfDeposit := self for: aValue during: aNumberOfDay at: aTNA on: anAccount.
	anAccount register: certificateOfDeposit.
	
	^ certificateOfDeposit   ! !


!classDefinition: #Deposit category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !


!Deposit methodsFor: 'value' stamp: 'HAW 10/18/2018 20:37:28'!
affectBalance: currentBalance  

	^currentBalance + self value! !

!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !


!Deposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
accept: aTransactionVisitor

	^ aTransactionVisitor visitDeposit: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: 'PortfolioTimeConsuming-Ejercicio'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #TransferLeg category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransaction subclass: #TransferLeg
	instanceVariableNames: 'transfer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!TransferLeg methodsFor: 'transfer' stamp: 'HAW 10/18/2018 21:05:34'!
transfer

	^transfer ! !


!TransferLeg methodsFor: 'initialization' stamp: 'HAW 10/18/2018 21:07:15'!
initializeRelatedTo: aTransfer 
	
	transfer := aTransfer ! !


!TransferLeg methodsFor: 'evaluating' stamp: 'HAW 10/18/2018 20:35:56'!
value

	^transfer value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferLeg class' category: 'PortfolioTimeConsuming-Ejercicio'!
TransferLeg class
	instanceVariableNames: ''!

!TransferLeg class methodsFor: 'instance creation' stamp: 'HAW 10/18/2018 21:07:07'!
relatedTo: aTransfer 
	
	^self new initializeRelatedTo: aTransfer ! !


!classDefinition: #TransferDeposit category: 'PortfolioTimeConsuming-Ejercicio'!
TransferLeg subclass: #TransferDeposit
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!TransferDeposit methodsFor: 'evaluating' stamp: 'HAW 10/18/2018 20:34:58'!
affectBalance: currentBalance

	^currentBalance + self value! !


!TransferDeposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
accept: aTransactionVisitor

	 ^ aTransactionVisitor visitTransferDeposit: self! !


!classDefinition: #TransferWithdraw category: 'PortfolioTimeConsuming-Ejercicio'!
TransferLeg subclass: #TransferWithdraw
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!TransferWithdraw methodsFor: 'evaluating' stamp: 'HAW 10/18/2018 20:34:40'!
affectBalance: currentBalance

	^currentBalance - self value! !


!TransferWithdraw methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
accept: aTransactionVisitor

	 ^ aTransactionVisitor visitTransferWithdraw: self! !


!classDefinition: #Withdraw category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !


!Withdraw methodsFor: 'value' stamp: 'HAW 10/18/2018 20:36:35'!
affectBalance: currentBalance  

	^currentBalance - self value! !

!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/14/2011 05:54'!
value

	^ value ! !


!Withdraw methodsFor: 'visiting' stamp: 'HAW 10/24/2018 12:40:17'!
accept: anAccountTransactionVisitor

	anAccountTransactionVisitor visitWithdraw: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: 'PortfolioTimeConsuming-Ejercicio'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !


!classDefinition: #AccountTransactionVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #AccountTransactionVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountTransactionVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:54'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	self subclassResponsibility ! !

!AccountTransactionVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:54'!
visitDeposit: aDeposit  
	
	self subclassResponsibility ! !

!AccountTransactionVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitTransferDeposit: aTransferDeposit  
	
	self subclassResponsibility ! !

!AccountTransactionVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitTransferWithdraw: aTransferWithdraw 
	
	self subclassResponsibility ! !

!AccountTransactionVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
visitWithdraw: aWithdraw 
	
	self subclassResponsibility ! !


!classDefinition: #AccountSummary category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransactionVisitor subclass: #AccountSummary
	instanceVariableNames: 'account lines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountSummary methodsFor: 'visiting' stamp: 'HAW 8/13/2017 17:57:33'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	lines add: 
		'Plazo fijo por ', aCertificateOfDeposit value printString, 
		' durante ', aCertificateOfDeposit days printString, 
		' dias a una tna de ', (aCertificateOfDeposit tna * 100) printString, '%'! !

!AccountSummary methodsFor: 'visiting' stamp: 'HAW 8/13/2017 17:57:37'!
visitDeposit: aDeposit 
	
	lines add: 'Deposito por ', aDeposit value printString ! !

!AccountSummary methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitTransferDeposit: aTransferDeposit 
	
	^ lines add: 'Transferencia por ', aTransferDeposit value  printString ! !

!AccountSummary methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferWithdraw: aTransferWithdraw 
	
	^ lines add: 'Transferencia por ', aTransferWithdraw value negated printString ! !

!AccountSummary methodsFor: 'visiting' stamp: 'HAW 8/13/2017 17:57:45'!
visitWithdraw: aWithdraw 

	lines add: 'Extraccion por ', aWithdraw value printString ! !


!AccountSummary methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/17/2011 23:59'!
lines
	
	(Delay forSeconds: 1) wait.
	
	lines := OrderedCollection new.
	
	account visitTransactionsWith: self.
	
	^ lines! !


!AccountSummary methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:41'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount 
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummary class' category: 'PortfolioTimeConsuming-Ejercicio'!
AccountSummary class
	instanceVariableNames: ''!

!AccountSummary class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:40'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountTransferNetVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransactionVisitor subclass: #AccountTransferNetVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!AccountTransferNetVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:07'!
value 

	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value  ! !


!AccountTransferNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	! !

!AccountTransferNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitDeposit: aDeposit 
	
	! !

!AccountTransferNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferDeposit: aTransferDeposit 

	value := value + aTransferDeposit value! !

!AccountTransferNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferWithdraw: aTransferWithdraw 
	
	value := value - aTransferWithdraw value! !

!AccountTransferNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
visitWithdraw: aWithdraw 
	
	! !


!AccountTransferNetVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:04'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransferNetVisitor class' category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransferNetVisitor class
	instanceVariableNames: ''!

!AccountTransferNetVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:04'!
for: aReceptiveAccount 
	
	^self new initializeFor: aReceptiveAccount   ! !


!classDefinition: #BalanceVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransactionVisitor subclass: #BalanceVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!BalanceVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 05:59'!
value 

	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value! !


!BalanceVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	value := value - aCertificateOfDeposit value! !

!BalanceVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitDeposit: aDeposit 
	
	^ value := value + aDeposit value! !

!BalanceVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferDeposit: aTransferDeposit 
	
	value := value + aTransferDeposit value! !

!BalanceVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferWithdraw: aTransferWithdraw 
	
	value := value - aTransferWithdraw value! !

!BalanceVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
visitWithdraw: aWithdraw 
	
	value := value - aWithdraw value! !


!BalanceVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:58'!
initializeOf: aReceptiveAccount 
	
	account := aReceptiveAccount ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'BalanceVisitor class' category: 'PortfolioTimeConsuming-Ejercicio'!
BalanceVisitor class
	instanceVariableNames: ''!

!BalanceVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:58'!
of: aReceptiveAccount 

	^ self new initializeOf: aReceptiveAccount ! !


!classDefinition: #InvestmentEarningVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransactionVisitor subclass: #InvestmentEarningVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!InvestmentEarningVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	value := value + aCertificateOfDeposit earnings ! !

!InvestmentEarningVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitDeposit: aDeposit  ! !

!InvestmentEarningVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:57'!
visitTransferDeposit: aTransferDeposit    ! !

!InvestmentEarningVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:57'!
visitTransferWithdraw: aTransferWithdraw      ! !

!InvestmentEarningVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:57'!
visitWithdraw: aWithdraw  ! !


!InvestmentEarningVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/18/2011 00:00'!
value

	(Delay forSeconds: 1) wait.
	
	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value  ! !


!InvestmentEarningVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:17'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentEarningVisitor class' category: 'PortfolioTimeConsuming-Ejercicio'!
InvestmentEarningVisitor class
	instanceVariableNames: ''!

!InvestmentEarningVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:17'!
for: aReceptiveAccount 
	
	^ self new initializeFor: aReceptiveAccount   ! !


!classDefinition: #InvestmentNetVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
AccountTransactionVisitor subclass: #InvestmentNetVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!InvestmentNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	value := value + aCertificateOfDeposit value! !

!InvestmentNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitDeposit: aDeposit 
	! !

!InvestmentNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:57'!
visitTransferDeposit: aTransferDeposit  ! !

!InvestmentNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
visitTransferWithdraw: aTransferWithdraw 
	! !

!InvestmentNetVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
visitWithdraw: aWithdraw 
	! !


!InvestmentNetVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/18/2011 00:00'!
value

	(Delay forSeconds: 1) wait.
	
	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value  ! !


!InvestmentNetVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:11'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentNetVisitor class' category: 'PortfolioTimeConsuming-Ejercicio'!
InvestmentNetVisitor class
	instanceVariableNames: ''!

!InvestmentNetVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:11'!
for: aReceptiveAccount 
	
	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #ReversePortfolioTreePrinter category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #ReversePortfolioTreePrinter
	instanceVariableNames: 'portfolio accountNames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!ReversePortfolioTreePrinter methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:48'!
lines
	
	^ (PortfolioTreePrinter of: portfolio namingAccountsWith: accountNames) lines reverse! !


!ReversePortfolioTreePrinter methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:47'!
initializeOf: aPortfolio namingAccountsWith: aDictionary 
	
	portfolio := aPortfolio.
	accountNames := aDictionary ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReversePortfolioTreePrinter class' category: 'PortfolioTimeConsuming-Ejercicio'!
ReversePortfolioTreePrinter class
	instanceVariableNames: ''!

!ReversePortfolioTreePrinter class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:47'!
of: aPortfolio namingAccountsWith: aDictionary 
	
	^ self new initializeOf: aPortfolio namingAccountsWith: aDictionary 
	! !


!classDefinition: #SummarizingAccount category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #SummarizingAccount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!SummarizingAccount methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:31:24'!
doesManage: anAccount

	self subclassResponsibility ! !

!SummarizingAccount methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:32:05'!
hasRegistered: aTransaction

	self subclassResponsibility ! !


!SummarizingAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:34'!
balance

	self subclassResponsibility ! !

!SummarizingAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:35'!
transactions

	self subclassResponsibility ! !


!SummarizingAccount methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 07:00'!
accept: aSummarizingAccountVisitor

	self subclassResponsibility ! !


!classDefinition: #Portfolio category: 'PortfolioTimeConsuming-Ejercicio'!
SummarizingAccount subclass: #Portfolio
	instanceVariableNames: 'accounts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!Portfolio methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:31:24'!
anyManagedAccountManages: anAccount 

	^accounts anySatisfy: [ :managedAccount | (managedAccount doesManage: anAccount) or: [ anAccount doesManage: managedAccount ] ] ! !

!Portfolio methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:31:24'!
doesManage: anAccount

	^ self = anAccount  or: [ self anyManagedAccountManages: anAccount ]! !

!Portfolio methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:32:05'!
hasRegistered: aTransaction

	^ accounts anySatisfy: [ :anAccount | anAccount hasRegistered: aTransaction ]  ! !


!Portfolio methodsFor: 'transactions' stamp: 'HAW 8/13/2017 17:47:44'!
balance

	^ accounts sum: [ :account | account balance ]
! !

!Portfolio methodsFor: 'transactions' stamp: 'HAW 9/25/2017 19:40:20'!
transactions 

	^ accounts 
		inject: OrderedCollection new 
		into: [ :transactions :account | transactions addAll: account transactions. transactions ]
	! !

!Portfolio methodsFor: 'transactions' stamp: 'HAW 10/18/2018 16:31:24'!
transactionsOf: anAccount 

	^ (self doesManage: anAccount)
		ifTrue: [ anAccount transactions ] 
		ifFalse: [ self error: self class accountNotManagedMessageDescription]
	! !


!Portfolio methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 19:19'!
initializeWithAll: aCollectionOfAccounts

	accounts := aCollectionOfAccounts   ! !


!Portfolio methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:35'!
accept: aSummarizingAccountVisitor

	^ aSummarizingAccountVisitor visitPortfolio: self ! !

!Portfolio methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:36'!
visitAccountsWith: aPortfolioTreePrinter 
	
	accounts do: [ :anAccount | anAccount accept: aPortfolioTreePrinter ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portfolio class' category: 'PortfolioTimeConsuming-Ejercicio'!
Portfolio class
	instanceVariableNames: ''!

!Portfolio class methodsFor: 'instance creation' stamp: 'HAW 5/8/2018 16:33:13'!
with: leftAccount with: rightAccount

	^ self withAll: (Array with: leftAccount with: rightAccount)! !

!Portfolio class methodsFor: 'instance creation' stamp: 'HAW 5/8/2018 16:40:55'!
withAll: aCollectionOfAccounts

	self checkCreationPreconditions: aCollectionOfAccounts.
	
	^self new initializeWithAll: aCollectionOfAccounts ! !


!Portfolio class methodsFor: 'assertions' stamp: 'HAW 10/18/2018 16:31:24'!
check: sourceAccount doesNotManagaAnyOf: aCollectionOfAccounts

	^ aCollectionOfAccounts do: [ :targetAccount | 
			(sourceAccount = targetAccount) not ifTrue: [ 
				(sourceAccount doesManage: targetAccount) ifTrue: [ self error: self accountAlreadyManagedErrorMessage ] ] ]! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:21'!
checkAccountsAreUnique: aCollectionOfAccounts

	aCollectionOfAccounts asSet size = aCollectionOfAccounts size
		ifFalse: [ self error: self accountAlreadyManagedErrorMessage ]! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:21'!
checkCreationPreconditions: aCollectionOfAccounts

	self checkAccountsAreUnique: aCollectionOfAccounts.
	self checkNoCircularReferencesIn: aCollectionOfAccounts! !

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:22'!
checkNoCircularReferencesIn: aCollectionOfAccounts

	aCollectionOfAccounts do: [ :sourceAccount | self check: sourceAccount doesNotManagaAnyOf: aCollectionOfAccounts ]! !


!Portfolio class methodsFor: 'error messages' stamp: 'HernanWilkinson 7/13/2011 19:28'!
accountAlreadyManagedErrorMessage

	^ 'Account already managed'! !

!Portfolio class methodsFor: 'error messages' stamp: 'HernanWilkinson 7/13/2011 19:27'!
accountNotManagedMessageDescription
	
	^ 'Account not managed'! !


!classDefinition: #ReceptiveAccount category: 'PortfolioTimeConsuming-Ejercicio'!
SummarizingAccount subclass: #ReceptiveAccount
	instanceVariableNames: 'transactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:35'!
initialize

	super initialize.
	transactions := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'transactions' stamp: 'HAW 10/18/2018 20:20:37'!
balance

	^ transactions inject: 0 into: [ :balance :transaction | transaction affectBalance: balance ]! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
register: aTransaction

	transactions add: aTransaction 
! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
transactions 

	^ transactions copy! !


!ReceptiveAccount methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:31:24'!
doesManage: anAccount

	^ self = anAccount 
! !

!ReceptiveAccount methodsFor: 'testing' stamp: 'HAW 10/18/2018 16:32:05'!
hasRegistered: aTtransaction

	^ transactions includes: aTtransaction 
! !


!ReceptiveAccount methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:36'!
accept: aSummarizingAccountVisitor

	^ aSummarizingAccountVisitor visitReceptiveAccount: self! !

!ReceptiveAccount methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitTransactionsWith: aTransactionVisitor

	transactions do: [ :aTransaction | aTransaction accept: aTransactionVisitor ]! !


!classDefinition: #SummarizingAccountVisitor category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #SummarizingAccountVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!SummarizingAccountVisitor methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:29:17'!
visitPortfolio: aPortfolio
	
	self subclassResponsibility ! !

!SummarizingAccountVisitor methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:29:33'!
visitReceptiveAccount: aReceptiveAccount 
	
	self subclassResponsibility ! !


!classDefinition: #PortfolioTreePrinter category: 'PortfolioTimeConsuming-Ejercicio'!
SummarizingAccountVisitor subclass: #PortfolioTreePrinter
	instanceVariableNames: 'portfolio accountNames lines spaces'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!PortfolioTreePrinter methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:37'!
visitPortfolio: aPortfolio
	
	lines add: (self lineFor: aPortfolio).
	spaces := spaces + 1.
	aPortfolio visitAccountsWith: self.
	spaces := spaces - 1! !

!PortfolioTreePrinter methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:38'!
visitReceptiveAccount: aReceptiveAccount 
	
	lines add: (self lineFor: aReceptiveAccount)! !


!PortfolioTreePrinter methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:33'!
lines
	
	lines := OrderedCollection new.
	spaces := 0.
	
	portfolio accept: self.
	
	^ lines ! !


!PortfolioTreePrinter methodsFor: 'evaluating - private' stamp: 'HernanWilkinson 7/14/2011 06:39'!
lineFor: aSummarizingAccount

	| stream |
	
	stream := WriteStream on: String new.
	spaces timesRepeat: [ stream nextPut: $ .].
	stream nextPutAll: (accountNames at: aSummarizingAccount).
	
	^ stream contents! !


!PortfolioTreePrinter methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:32'!
initializeOf: aPortfolio namingAccountsWith: aDictionary 
	
	portfolio := aPortfolio.
	accountNames := aDictionary ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PortfolioTreePrinter class' category: 'PortfolioTimeConsuming-Ejercicio'!
PortfolioTreePrinter class
	instanceVariableNames: ''!

!PortfolioTreePrinter class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:31'!
of: aPortfolio namingAccountsWith: aDictionary 
	
	^ self new initializeOf: aPortfolio namingAccountsWith: aDictionary 
	! !


!classDefinition: #Transfer category: 'PortfolioTimeConsuming-Ejercicio'!
Object subclass: #Transfer
	instanceVariableNames: 'value depositLeg withdrawLeg'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-Ejercicio'!

!Transfer methodsFor: 'initialization' stamp: 'HAW 10/18/2018 21:08:52'!
initializeOf: anAmount 
	
	value := anAmount.
	depositLeg := TransferDeposit relatedTo: self .
	withdrawLeg := TransferWithdraw relatedTo: self 
	
	! !


!Transfer methodsFor: 'legs' stamp: 'HAW 10/18/2018 20:53:34'!
depositLeg
	
	^depositLeg! !

!Transfer methodsFor: 'legs' stamp: 'HAW 10/18/2018 20:53:26'!
withdrawLeg
	
	^withdrawLeg! !


!Transfer methodsFor: 'evaluating' stamp: 'HAW 10/18/2018 21:08:33'!
value

	^value ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Transfer class' category: 'PortfolioTimeConsuming-Ejercicio'!
Transfer class
	instanceVariableNames: ''!

!Transfer class methodsFor: 'instance creation' stamp: 'HAW 10/18/2018 21:07:39'!
of: anAmount 

	^self new initializeOf: anAmount ! !


!Transfer class methodsFor: 'registering' stamp: 'HAW 10/18/2018 20:50:53'!
register: anAmount from: fromAccount to: toAccount 

	|transfer |
	
	transfer := self of: anAmount.
	fromAccount register: transfer withdrawLeg.
	toAccount register: transfer depositLeg.
	
	^transfer! !
