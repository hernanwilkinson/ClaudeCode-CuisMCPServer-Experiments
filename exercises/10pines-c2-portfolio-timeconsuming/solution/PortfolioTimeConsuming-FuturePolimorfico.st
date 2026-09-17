!classDefinition: #PortfolioTest category: #'PortfolioTimeConsuming-FuturePolimorfico'!
TestCase subclass: #PortfolioTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 18:44'!
test01ReceptiveAccountHaveZeroAsBalanceWhenCreated 

	| account |
	account := ReceptiveAccount new.

	self assert: 0 = account balance .
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 18:45'!
test02DepositIncreasesBalanceOnTransactionValue 

	| account |
	account := ReceptiveAccount  new.
	Deposit register: 100 on: account.
		
	self assert: 100 = account balance .
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 05:34'!
test03WithdrawDecreasesBalanceOnTransactionValue 

	| account |
	
	account := ReceptiveAccount new.
	Deposit register: 100 on: account.
	Withdraw register: 50 on: account.
		
	self assert: 50 = account balance .
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 9/28/2017 15:58:35'!
test03_01WithdrawValueMustBePositive 

	| account withdrawValue |
	
	account := ReceptiveAccount new.
	withdrawValue := 50.
	self assert: (Withdraw register: withdrawValue on: account) value equals: withdrawValue 
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 18:48'!
test04PortfolioBalanceIsSumOfManagedAccountsBalance

	| account1 account2 complexPortfolio |
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	 	
	Deposit register: 100 on: account1.
	Deposit register: 200 on: account2.
		
	self assert:300 = complexPortfolio balance .
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 18:53'!
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

	self assert: 600 = composedPortfolio balance .! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:26'!
test06ReceptiveAccountKnowsRegisteredTransactions 

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit := Deposit register: 100 on: account.
	withdraw := Withdraw register: -50 on: account.
		
	self assert: (account registers: deposit).
	self assert: (account registers: withdraw).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:26'!
test07ReceptiveAccountDoNotKnowNotRegisteredTransactions

	| account deposit withdraw |
	
	account := ReceptiveAccount new.
	deposit :=  Deposit for: 100.
	withdraw := Withdraw for: -50.
		
	self deny: (account registers: deposit).
	self deny: (account registers:withdraw).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:51'!
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
		
 	self assert: (composedPortfolio registers: deposit1).
	self assert: (composedPortfolio registers: deposit2).
	self assert: (composedPortfolio registers: deposit3).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:00'!
test10ReceptiveAccountManageItSelf 

	| account1 |
	account1 := ReceptiveAccount new.
		
	self assert: (account1 manages:account1).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:01'!
test11ReceptiveAccountDoNotManageOtherAccount

	| account1 account2 |
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
		
	self deny: (account1 manages: account2).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:02'!
test12PortfolioManagesComposedAccounts

	| account1 account2 account3 complexPortfolio |
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
		
	self assert: (complexPortfolio manages: account1).
	self assert: (complexPortfolio manages: account2).
	self deny: (complexPortfolio manages: account3).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/13/2011 19:03'!
test13PortfolioManagesComposedAccountsAndPortfolios 

	| account1 account2 account3 complexPortfolio composedPortfolio |
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	self assert: (composedPortfolio manages: account1).
	self assert: (composedPortfolio manages: account2).
	self assert: (composedPortfolio manages: account3).
	self assert: (composedPortfolio manages: complexPortfolio).
! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:28'!
test14AccountKnowsItsTransactions 

	| account1 deposit1 |
	
	account1 := ReceptiveAccount new.
	
	deposit1 := Deposit register: 100 on:account1.
		
	self assert: 1=account1 transactions size .
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

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:23'!
test16PortfolioKnowsItsAccountsTransactions 

	| account1 account2 account3 complexPortfolio composedPortfolio deposit1 |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	account3 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.
	composedPortfolio := Portfolio with: complexPortfolio with: account3.
		
	deposit1 := Deposit register: 100 on: account1.
		
	self assert: 1= (composedPortfolio transactionsOf:account1) size .
	self assert: ((composedPortfolio transactionsOf: account1) includes:deposit1).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/12/2011 13:23'!
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
		
	self assert: 2 = (composedPortfolio transactionsOf:complexPortfolio) size .
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

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 5/8/2018 16:50:02'!
test19CanNotCreatePortfoliosWithRepeatedAccount 

	| account1 |
	
	account1 := ReceptiveAccount new.
	self 
		should: [ Portfolio with: account1 with: account1 ]
		raise: Error
		withExceptionDo: [ :invalidPortfolio |
			self assert: Portfolio accountAlreadyManagedErrorMessage  = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 5/8/2018 16:50:06'!
test20CanNotCreatePortfoliosWithAccountsManagedByOtherManagedPortfolio 

	| account1 account2 complexPortfolio |
	
	account1 := ReceptiveAccount new.
	account2 := ReceptiveAccount new.
	complexPortfolio := Portfolio with: account1 with: account2.

	self 
		should: [ Portfolio with: complexPortfolio with: account1 ]
		raise: Error
		withExceptionDo: [ :invalidPortfolio |
			self assert: Portfolio accountAlreadyManagedErrorMessage = invalidPortfolio messageText ]! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 5/8/2018 16:49:34'!
test20_01CanNotCreatePortfoliosWithAccountsManagedByOtherManagedPortfolioTwo

    | account1 account2 account3 complexPortfolio1 complexPortfolio2 |
    
    account1 := ReceptiveAccount new.
    account2 := ReceptiveAccount new.
    account3 := ReceptiveAccount new.    
    complexPortfolio1 := Portfolio with: account1 with: account2.
    complexPortfolio2 := Portfolio with: account3 with: account1.

    self 
        should: [ Portfolio with: complexPortfolio1 with: complexPortfolio2 ]
        raise: Error
        withExceptionDo: [ :invalidPortfolio |
            self assert: Portfolio accountAlreadyManagedErrorMessage = invalidPortfolio messageText ] ! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 05:27'!
test21TransferShouldWithdrawFromFromAccountAndDepositIntoToAccount

	| fromAccount toAccount |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	Transfer register: 100 from: fromAccount to: toAccount.
		
	self assert: -100 = fromAccount balance.
	self assert:  100 = toAccount balance.! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 9/28/2017 15:58:21'!
test21_01TransferIsReachedFromTransacctions

	| fromAccount toAccount transfer |

	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new.

	transfer := Transfer register: 100 from: fromAccount to: toAccount.
		
	self assert:  100 = transfer value.
	self assert: fromAccount transactions first transfer equals: transfer.
	self assert: toAccount transactions first transfer equals: transfer.
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 9/28/2017 16:05:26'!
test22AccountSummaryShouldProvideHumanReadableTransactionsDetail

	| fromAccount toAccount fromAccountLines toAccountLines|

	fromAccount := ReceptiveAccount new.
	toAccount := ReceptiveAccount new.
	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	
	fromAccountLines := self accountSummaryLinesOf: fromAccount.
	toAccountLines := self accountSummaryLinesOf: toAccount.
	
	self assert: 3 = fromAccountLines size.
	self assert: 'Deposito por 100' = (fromAccountLines at: 1).
	self assert: 'Extraccion por 50' = (fromAccountLines at: 2).
	self assert: 'Transferencia por -100' = (fromAccountLines at: 3).
	
	self assert: 1 = toAccountLines size.
	self assert: 'Transferencia por 100' = (toAccountLines at: 1).
	! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test23ShouldBeAbleToBeQueryTransferNet

	| fromAccount toAccount |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	Transfer register: 250 from: toAccount to: fromAccount.
		
	self assert: 150 = (self accountTransferNetOf: fromAccount).
	self assert: -150 = (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test24CertificateOfDepositShouldWithdrawInvestmentValue

	| account toAccount |
	account := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 1000 on: account.
	Withdraw register: 50 on: account.
	Transfer register: 100 from: account to: toAccount.
	CertificateOfDeposit register: 100 during: 30 at: 1/10 on: account.
		
	self assert: 100 =(self investmentNetOf:account).
	self assert: 750 = account balance.! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test25ShouldBeAbleToQueryInvestmentEarnings

	| account investmentEarnings |
	account := ReceptiveAccount new. 
		
	CertificateOfDeposit register: 100 during: 30 at: 1/10 on: account.
	CertificateOfDeposit register: 100 during: 60 at: 15/100 on: account.

	investmentEarnings := 
		(100*((1/10)/360)*30) +
		(100*((15/100)/360)*60).
		
	self assert: investmentEarnings = (self investmentEarningsOf: account).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HAW 8/13/2017 17:58:22'!
test26AccountSummaryShouldWorkWithCertificateOfDeposit

	| fromAccount toAccount lines |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	CertificateOfDeposit register: 1000 during: 30 at: 1/10 on: fromAccount.
		
	lines := self accountSummaryLinesOf: fromAccount.
		
	self assert: 4 = lines size.
	self assert: 'Deposito por 100' =  (lines at: 1).
	self assert: 'Extraccion por 50' =  (lines at: 2).
	self assert: 'Transferencia por -100' = (lines at: 3).
	self assert: 'Plazo fijo por 1000 durante 30 dias a una tna de 10%' = (lines at: 4).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 7/14/2011 06:58'!
test27ShouldBeAbleToBeQueryTransferNetWithCertificateOfDeposit

	| fromAccount toAccount |
	fromAccount := ReceptiveAccount new. 
	toAccount := ReceptiveAccount new. 

	Deposit register: 100 on: fromAccount.
	Withdraw register: 50 on: fromAccount.
	Transfer register: 100 from: fromAccount to: toAccount.
	Transfer register: 250 from: toAccount to: fromAccount.
	CertificateOfDeposit register: 1000 during: 30 at: 1/10 on: fromAccount.
		
	self assert: 150 = (self accountTransferNetOf: fromAccount).
	self assert: -150 = (self accountTransferNetOf: toAccount).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:29'!
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
		
	self assert: 5 = lines size.
	self assert: 'composedPortfolio' = (lines at: 1).
	self assert: ' complexPortfolio' = (lines at: 2).
	self assert: '  account1' = (lines at: 3).
	self assert: '  account2' = (lines at: 4).
	self assert: ' account3' = (lines at: 5).! !

!PortfolioTest methodsFor: 'tests' stamp: 'HernanWilkinson 9/26/2011 16:30'!
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
		
	self assert: 5 = lines size.
	self assert: ' account3' = (lines at: 1).
	self assert: '  account2' = (lines at: 2).
	self assert: '  account1' = (lines at: 3).
	self assert: ' complexPortfolio' = (lines at: 4).
	self assert: 'composedPortfolio' = (lines at: 5).
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

!PortfolioTest methodsFor: 'test support' stamp: 'HernanWilkinson 7/14/2011 06:42'!
reversePortofolioTreeOf: aPortfolio namingAccountWith: aDictionary 
	
	^ (ReversePortfolioTreePrinter of: aPortfolio namingAccountsWith: aDictionary ) lines! !


!PortfolioTest methodsFor: 'asserting' stamp: 'HAW 8/13/2017 17:58:44'!
should: aBlock notTakeMoreThanMilliseconds: aTimeInMillis

	self assert: aBlock timeToRun <= aTimeInMillis ! !


!classDefinition: #AccountSummaryWithAllInvestmentInformation category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #AccountSummaryWithAllInvestmentInformation
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!AccountSummaryWithAllInvestmentInformation methodsFor: 'initialization' stamp: 'HernanWilkinson 7/17/2011 23:56'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!AccountSummaryWithAllInvestmentInformation methodsFor: 'evaluating' stamp: 'HAW 5/15/2018 07:39:09'!
lines 

	| lines investmentEarnings readySemaphore |
	
	"Esta implementacion no esta usando el future para que vean como seria la solucion sin
	usarlo - Hernan"
	readySemaphore := Semaphore new.
	
	[investmentEarnings := (InvestmentNetVisitor for: account) value.
	readySemaphore signal ] fork.

	lines := (AccountSummaryWithInvestmentEarnings for: account) lines.
	readySemaphore wait.
	lines add: 'Inversiones por ', investmentEarnings printString.
	
	 ^ lines! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummaryWithAllInvestmentInformation class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountSummaryWithAllInvestmentInformation class
	instanceVariableNames: ''!

!AccountSummaryWithAllInvestmentInformation class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/17/2011 23:56'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountSummaryWithInvestmentEarnings category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #AccountSummaryWithInvestmentEarnings
	instanceVariableNames: 'account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!AccountSummaryWithInvestmentEarnings methodsFor: 'initialization' stamp: 'HernanWilkinson 7/17/2011 23:52'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!AccountSummaryWithInvestmentEarnings methodsFor: 'evaluating' stamp: 'HAW 5/15/2018 07:42:54'!
lines 

	| lines investmentEarnings |
	
	investmentEarnings := Future evaluating: [ (InvestmentEarningVisitor for: account) value ].
	
	lines := (AccountSummary for: account) lines.
	lines add: 'Ganancias por ', investmentEarnings printString.
	
	 ^ lines! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummaryWithInvestmentEarnings class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountSummaryWithInvestmentEarnings class
	instanceVariableNames: ''!

!AccountSummaryWithInvestmentEarnings class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/17/2011 23:51'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountTransaction category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #AccountTransaction
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!AccountTransaction methodsFor: 'balance' stamp: 'HAW 5/15/2018 07:22:52'!
affectBalance: aBalance

	"Dejo este mensaje son sus implementaciones en las subclasses para que vean como seria esta solucion
	aunque no se use - Hernan"
	self subclassResponsibility ! !

!AccountTransaction methodsFor: 'balance' stamp: 'HernanWilkinson 7/14/2011 06:48'!
value

	self subclassResponsibility ! !


!AccountTransaction methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:23:29'!
accept: anAccountTransactionVisitor

	self subclassResponsibility ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransaction class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction class
	instanceVariableNames: ''!

!AccountTransaction class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !


!classDefinition: #CertificateOfDeposit category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction subclass: #CertificateOfDeposit
	instanceVariableNames: 'value tna numberOfDays account'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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


!CertificateOfDeposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:16'!
initializeFor: aValue during: aNumberOfDay at: aTNA on: anAccount

	value := aValue.
	numberOfDays := aNumberOfDay.
	tna := aTNA.
	account := anAccount ! !


!CertificateOfDeposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
accept: aTransactionVisitor

	^ aTransactionVisitor visitCertificateOfDeposit: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CertificateOfDeposit class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
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


!classDefinition: #Deposit category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction subclass: #Deposit
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!Deposit methodsFor: 'value' stamp: 'HernanWilkinson 7/13/2011 18:38'!
value

	^ value! !


!Deposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:45'!
initializeFor: aValue

	value := aValue ! !


!Deposit methodsFor: 'balance' stamp: 'HernanWilkinson 9/6/2016 19:49'!
affectBalance: aBalance

	^aBalance + value! !


!Deposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
accept: aTransactionVisitor

	^ aTransactionVisitor visitDeposit: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Deposit class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Deposit class
	instanceVariableNames: ''!

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:38'!
for: aValue

	^ self new initializeFor: aValue ! !

!Deposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 19:41'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !


!classDefinition: #TransferDeposit category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction subclass: #TransferDeposit
	instanceVariableNames: 'transfer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!TransferDeposit methodsFor: 'balance' stamp: 'HernanWilkinson 9/6/2016 19:50'!
affectBalance: aBalance

	^aBalance + self value! !


!TransferDeposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:53'!
initializeOf: aTransfer

	transfer := aTransfer.
! !

!TransferDeposit methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:53'!
value 

	^ transfer value! !


!TransferDeposit methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
accept: aTransactionVisitor

	 ^ aTransactionVisitor visitTransferDeposit: self! !


!TransferDeposit methodsFor: 'accessing' stamp: 'HAW 9/28/2017 15:59:29'!
transfer
	
	^transfer! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferDeposit class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
TransferDeposit class
	instanceVariableNames: ''!

!TransferDeposit class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:52'!
of: aTransfer 

	^ self new initializeOf: aTransfer ! !


!classDefinition: #TransferWithdraw category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction subclass: #TransferWithdraw
	instanceVariableNames: 'transfer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!TransferWithdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:53'!
initializeOf: aTransfer

	transfer := aTransfer.
	! !

!TransferWithdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 05:53'!
value 

	^ transfer value! !


!TransferWithdraw methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:53'!
accept: aTransactionVisitor

	 ^ aTransactionVisitor visitTransferWithdraw: self! !


!TransferWithdraw methodsFor: 'accessing' stamp: 'HAW 9/28/2017 15:59:20'!
transfer
	
	^transfer! !


!TransferWithdraw methodsFor: 'balance' stamp: 'HernanWilkinson 9/6/2016 19:50'!
affectBalance: aBalance

	^aBalance - self value! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'TransferWithdraw class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
TransferWithdraw class
	instanceVariableNames: ''!

!TransferWithdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:53'!
of: aTransfer 

	^ self new initializeOf: aTransfer! !


!classDefinition: #Withdraw category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransaction subclass: #Withdraw
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!Withdraw methodsFor: 'value' stamp: 'HernanWilkinson 7/14/2011 05:54'!
value

	^ value ! !


!Withdraw methodsFor: 'balance' stamp: 'HernanWilkinson 9/6/2016 19:50'!
affectBalance: aBalance

	^aBalance - value! !


!Withdraw methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:46'!
initializeFor: aValue

	value := aValue ! !


!Withdraw methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
accept: aTransactionVisitor

	^ aTransactionVisitor visitWithdraw: self! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Withdraw class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Withdraw class
	instanceVariableNames: ''!

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 18:33'!
for: aValue

	^ self new initializeFor: aValue ! !

!Withdraw class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:32'!
register: aValue on: account

	| withdraw |
	
	withdraw := self for: aValue.
	account register: withdraw.
		
	^ withdraw! !


!classDefinition: #AccountTransactionsVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #AccountTransactionsVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!AccountTransactionsVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:54'!
visitCertificateOfDeposit: aCertificateOfDeposit 
	
	self subclassResponsibility ! !

!AccountTransactionsVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:54'!
visitDeposit: aDeposit  
	
	self subclassResponsibility ! !

!AccountTransactionsVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitTransferDeposit: aTransferDeposit  
	
	self subclassResponsibility ! !

!AccountTransactionsVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:56'!
visitTransferWithdraw: aTransferWithdraw 
	
	self subclassResponsibility ! !

!AccountTransactionsVisitor methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:55'!
visitWithdraw: aWithdraw 
	
	self subclassResponsibility ! !


!classDefinition: #AccountSummary category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransactionsVisitor subclass: #AccountSummary
	instanceVariableNames: 'account lines'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountSummary class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountSummary class
	instanceVariableNames: ''!

!AccountSummary class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:40'!
for: aReceptiveAccount 

	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #AccountTransferNetVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransactionsVisitor subclass: #AccountTransferNetVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!AccountTransferNetVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:04'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


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

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AccountTransferNetVisitor class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransferNetVisitor class
	instanceVariableNames: ''!

!AccountTransferNetVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:04'!
for: aReceptiveAccount 
	
	^self new initializeFor: aReceptiveAccount   ! !


!classDefinition: #BalanceVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransactionsVisitor subclass: #BalanceVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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

!classDefinition: 'BalanceVisitor class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
BalanceVisitor class
	instanceVariableNames: ''!

!BalanceVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:58'!
of: aReceptiveAccount 

	^ self new initializeOf: aReceptiveAccount ! !


!classDefinition: #InvestmentEarningVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransactionsVisitor subclass: #InvestmentEarningVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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


!InvestmentEarningVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:17'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!InvestmentEarningVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/18/2011 00:00'!
value

	(Delay forSeconds: 1) wait.
	
	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value  ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentEarningVisitor class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
InvestmentEarningVisitor class
	instanceVariableNames: ''!

!InvestmentEarningVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:17'!
for: aReceptiveAccount 
	
	^ self new initializeFor: aReceptiveAccount   ! !


!classDefinition: #InvestmentNetVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
AccountTransactionsVisitor subclass: #InvestmentNetVisitor
	instanceVariableNames: 'account value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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


!InvestmentNetVisitor methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:11'!
initializeFor: aReceptiveAccount 
	
	account := aReceptiveAccount ! !


!InvestmentNetVisitor methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/18/2011 00:00'!
value

	(Delay forSeconds: 1) wait.
	
	value := 0.
	
	account visitTransactionsWith: self.
	
	^ value  ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'InvestmentNetVisitor class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
InvestmentNetVisitor class
	instanceVariableNames: ''!

!InvestmentNetVisitor class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:11'!
for: aReceptiveAccount 
	
	^ self new initializeFor: aReceptiveAccount ! !


!classDefinition: #ReversePortfolioTreePrinter category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #ReversePortfolioTreePrinter
	instanceVariableNames: 'portfolio accountNames'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!ReversePortfolioTreePrinter methodsFor: 'evaluating' stamp: 'HernanWilkinson 7/14/2011 06:48'!
lines
	
	^ (PortfolioTreePrinter of: portfolio namingAccountsWith: accountNames) lines reverse! !


!ReversePortfolioTreePrinter methodsFor: 'initialization' stamp: 'HernanWilkinson 7/14/2011 06:47'!
initializeOf: aPortfolio namingAccountsWith: aDictionary 
	
	portfolio := aPortfolio.
	accountNames := aDictionary ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ReversePortfolioTreePrinter class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
ReversePortfolioTreePrinter class
	instanceVariableNames: ''!

!ReversePortfolioTreePrinter class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:47'!
of: aPortfolio namingAccountsWith: aDictionary 
	
	^ self new initializeOf: aPortfolio namingAccountsWith: aDictionary 
	! !


!classDefinition: #SummarizingAccount category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #SummarizingAccount
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!SummarizingAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:34'!
manages: anAccount

	self subclassResponsibility ! !

!SummarizingAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:34'!
registers: aTransaction

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


!classDefinition: #Portfolio category: #'PortfolioTimeConsuming-FuturePolimorfico'!
SummarizingAccount subclass: #Portfolio
	instanceVariableNames: 'accounts'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!Portfolio methodsFor: 'testing' stamp: 'HAW 5/8/2018 16:49:15'!
anyManagedAccountManages: anAccount 

	^accounts anySatisfy: [ :managedAccount | (managedAccount manages: anAccount) or: [ anAccount manages: managedAccount ] ] ! !

!Portfolio methodsFor: 'testing' stamp: 'HAW 5/8/2018 16:49:05'!
manages: anAccount

	^ self = anAccount  or: [ self anyManagedAccountManages: anAccount ]! !

!Portfolio methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 19:20'!
registers: aTransaction

	^ accounts anySatisfy: [ :anAccount | anAccount registers: aTransaction ]  ! !


!Portfolio methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 19:19'!
initializeWithAll: aCollectionOfAccounts

	accounts := aCollectionOfAccounts   ! !


!Portfolio methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 19:20'!
balance

	^ accounts inject: 0 into: [ :balance :account | balance + account balance ]
! !

!Portfolio methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 19:23'!
transactions 

	^ accounts inject: OrderedCollection new into: [ :transactions :account | transactions addAll: account transactions. transactions ]
	! !

!Portfolio methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 19:27'!
transactionsOf: anAccount 

	^ (self manages: anAccount)
		ifTrue: [ anAccount transactions ] 
		ifFalse: [ self error: self class accountNotManagedMessageDescription]
	! !


!Portfolio methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:35'!
accept: aSummarizingAccountVisitor

	^ aSummarizingAccountVisitor visitPortfolio: self ! !

!Portfolio methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:36'!
visitAccountsWith: aPortfolioTreePrinter 
	
	accounts do: [ :anAccount | anAccount accept: aPortfolioTreePrinter ]! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Portfolio class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Portfolio class
	instanceVariableNames: ''!

!Portfolio class methodsFor: 'assertions' stamp: 'HernanWilkinson 9/18/2011 17:22'!
check: sourceAccount doesNotManagaAnyOf: aCollectionOfAccounts

	^ aCollectionOfAccounts do: [ :targetAccount | 
			(sourceAccount = targetAccount) not ifTrue: [ 
				(sourceAccount manages: targetAccount) ifTrue: [ self error: self accountAlreadyManagedErrorMessage ] ] ]! !

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


!Portfolio class methodsFor: 'instance creation' stamp: 'HAW 5/8/2018 16:48:08'!
with: leftAccount with: rightAccount

	^ self withAll: (Array with: leftAccount with: rightAccount)! !

!Portfolio class methodsFor: 'instance creation' stamp: 'HAW 5/8/2018 16:48:32'!
withAll: aCollectionOfAccounts

	self checkCreationPreconditions: aCollectionOfAccounts.
	
	^self new initializeWithAll: aCollectionOfAccounts ! !


!classDefinition: #ReceptiveAccount category: #'PortfolioTimeConsuming-FuturePolimorfico'!
SummarizingAccount subclass: #ReceptiveAccount
	instanceVariableNames: 'transactions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!ReceptiveAccount methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 18:35'!
initialize

	super initialize.
	transactions := OrderedCollection new.! !


!ReceptiveAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:37'!
manages: anAccount

	^ self = anAccount 
! !

!ReceptiveAccount methodsFor: 'testing' stamp: 'HernanWilkinson 7/13/2011 18:37'!
registers: aTtransaction

	^ transactions includes: aTtransaction 
! !


!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/14/2011 05:57'!
balance

	^ (BalanceVisitor of: self) value
! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
register: aTransaction

	transactions add: aTransaction 
! !

!ReceptiveAccount methodsFor: 'transactions' stamp: 'HernanWilkinson 7/13/2011 18:37'!
transactions 

	^ transactions copy! !


!ReceptiveAccount methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:36'!
accept: aSummarizingAccountVisitor

	^ aSummarizingAccountVisitor visitReceptiveAccount: self! !

!ReceptiveAccount methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:52'!
visitTransactionsWith: aTransactionVisitor

	transactions do: [ :aTransaction | aTransaction accept: aTransactionVisitor ]! !


!classDefinition: #SummarizingAccountVisitor category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #SummarizingAccountVisitor
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!SummarizingAccountVisitor methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:29:17'!
visitPortfolio: aPortfolio
	
	self subclassResponsibility ! !

!SummarizingAccountVisitor methodsFor: 'visiting' stamp: 'HAW 5/15/2018 07:29:33'!
visitReceptiveAccount: aReceptiveAccount 
	
	self subclassResponsibility ! !


!classDefinition: #PortfolioTreePrinter category: #'PortfolioTimeConsuming-FuturePolimorfico'!
SummarizingAccountVisitor subclass: #PortfolioTreePrinter
	instanceVariableNames: 'portfolio accountNames lines spaces'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

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


!PortfolioTreePrinter methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:37'!
visitPortfolio: aPortfolio
	
	lines add: (self lineFor: aPortfolio).
	spaces := spaces + 1.
	aPortfolio visitAccountsWith: self.
	spaces := spaces - 1! !

!PortfolioTreePrinter methodsFor: 'visiting' stamp: 'HernanWilkinson 7/14/2011 06:38'!
visitReceptiveAccount: aReceptiveAccount 
	
	lines add: (self lineFor: aReceptiveAccount)! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PortfolioTreePrinter class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
PortfolioTreePrinter class
	instanceVariableNames: ''!

!PortfolioTreePrinter class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 06:31'!
of: aPortfolio namingAccountsWith: aDictionary 
	
	^ self new initializeOf: aPortfolio namingAccountsWith: aDictionary 
	! !


!classDefinition: #Transfer category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Object subclass: #Transfer
	instanceVariableNames: 'value sourceAccount targetAccount'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!Transfer methodsFor: 'value' stamp: 'HernanWilkinson 7/14/2011 05:55'!
value

	 ^ value! !


!Transfer methodsFor: 'legs' stamp: 'HernanWilkinson 7/14/2011 05:52'!
depositLeg
	
	^ TransferDeposit of: self ! !

!Transfer methodsFor: 'legs' stamp: 'HernanWilkinson 7/14/2011 05:52'!
withdrawLeg
	
	^ TransferWithdraw of: self ! !


!Transfer methodsFor: 'initialization' stamp: 'HernanWilkinson 7/13/2011 19:43'!
initializeFor: aValue from: aSourceAccount to: aTargetAccount

	value := aValue.
	sourceAccount := aSourceAccount.
	targetAccount := aTargetAccount! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Transfer class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Transfer class
	instanceVariableNames: ''!

!Transfer class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/13/2011 19:41'!
for: aValue from: sourceAccount to: targetAccount

	^ self new initializeFor: aValue from: sourceAccount to: targetAccount! !

!Transfer class methodsFor: 'instance creation' stamp: 'HernanWilkinson 7/14/2011 05:19'!
register: aValue from: sourceAccount to: targetAccount

	| transfer |
	
	transfer := self for: aValue from: sourceAccount to: targetAccount.
	sourceAccount register: transfer withdrawLeg.
	targetAccount register: transfer depositLeg.
	
	^ transfer ! !


!classDefinition: #Future category: #'PortfolioTimeConsuming-FuturePolimorfico'!
ProtoObject subclass: #Future
	instanceVariableNames: 'readySemaphore value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PortfolioTimeConsuming-FuturePolimorfico'!

!Future methodsFor: 'initialization' stamp: 'HernanWilkinson 9/13/2016 19:00'!
initializeEvaluating: aBlock

	readySemaphore := Semaphore new.
	[ value := aBlock value.
	readySemaphore signal ] fork.
	! !


!Future methodsFor: 'evaluating' stamp: 'HernanWilkinson 9/13/2016 19:00'!
value

	readySemaphore wait.
	^value! !


!Future methodsFor: 'message forwarding' stamp: 'HernanWilkinson 9/13/2016 19:03'!
doesNotUnderstand: aMessage

	^aMessage sendTo: self value ! !


!Future methodsFor: 'object protocol' stamp: 'HAW 8/13/2017 18:12:56'!
inspectorClass
	"Answer the class of the inspector to be used on the receiver.  Called by inspect; 
	use basicInspect to get a normal (less useful) type of inspector."

	^ Inspector! !

!Future methodsFor: 'object protocol' stamp: 'HAW 8/13/2017 18:12:37'!
instVarAt: index put: anObject
	"Primitive. Store a value into a fixed variable in an object. The numbering of the
	 variables corresponds to the named instance variables, followed by the indexed
	 instance variables. Fail if the index is not an Integer or is not the index of a fixed
	 variable. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 174 error: ec>
	self primitiveFailed! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Future class' category: #'PortfolioTimeConsuming-FuturePolimorfico'!
Future class
	instanceVariableNames: ''!

!Future class methodsFor: 'instance creation' stamp: 'HernanWilkinson 9/13/2016 18:59'!
evaluating: aBlock

	 ^self new initializeEvaluating: aBlock! !
