# Second Midterm 2c 2018 – ISW1COIN Fintech

## Practical exercise

You were invited to work at a startup whose goal is to become a fintech, that is, a kind of digital bank.

The first service to implement is a cryptocurrency that will be called **ISW1COIN**.

To be able to operate with that cryptocurrency, the fintech will offer the following services:

1. `createWallet` → Creates a virtual wallet and returns the id of that wallet. Wallets are created with an initial balance of **1 ISW1COIN**. The wallet id is returned and not the wallet, so that wallets cannot be accessed from outside the fintech.
2. `balanceOf: aWalletId` → Returns the current balance of the wallet identified by the given id. For example, after creating a wallet, `#balanceOf:` should return **1\*ISW1COIN**.
3. `slowTransfer: anAmount from: aSourceWalletId to: aTargetWalletId` → Makes a slow transfer from the wallet identified by `aSourceWalletId` to the one identified by `aTargetWalletId` (the details of what this means come later).
4. `fastTransfer: anAmount from: aSourceWalletId to: aTargetWalletId` → Makes a fast transfer (the details of what this means come later).
5. `allTransactionsOf: aWalletId` → Returns the deposits and withdrawals by transfer registered in the wallet identified by `aWalletId`. Because transactions are immutable, there is no problem in returning those objects.
6. `allPendingTransactionsOf: aWalletId` → Returns the withdrawals by transfer that are still pending, that is, they are registered but cannot yet affect the balance because the crediting time has not arrived.

Transfers are made between wallets. The minimum unit is **0.000001\*ISW1COIN**.

Every new wallet is created with an initial balance of **1\*ISW1COIN** and with a unique id.

When the transfer is slow, a commission of 2% is charged and it takes 1 hour to be credited in the target wallet.

When the transfer is fast, a commission of 4% is charged and it takes 10 minutes to be credited in the target wallet.

In both cases, the commission is charged to the source wallet and the amount is debited from it immediately when the transfer is registered. During the transfer time the transferred amount is "in transit". The target wallet is credited the transferred amount, that is, it does not receive the amount minus the commission.

For this first version, transfers cannot be aborted, wallets cannot have a negative balance, and those transfers that would impact the target wallet between 23:00 hrs and 23:59:59 hrs will be rejected (we want to reserve that time window in case things have to be fixed).

### Hints

1. To create a unit that represents an ISW1COIN do:
2. `BaseUnit named: 'ISW1COIN'`
3. Remember that unit equality **is identity**, that is, a single object must be kept for that currency. Do not use a global object to do it unless it is initialized correctly when the solution is filed in.
4. To simulate the passing of time you can use the solution used in TusLibros.
5. To model the transfer, you can use the design seen in PortfolioTreePrinter about transfers, but you will see that the implementation is not exactly the same.

### Requirements

1. The class category must be called **ISW1-Fintech**.

### Examples

Initial balance of Wallet A = 1\*ISW1COIN
Initial balance of Wallet B = 1\*ISW1COIN

**18:00 hs**

Action: Wallet A transfers 0.1\*ISW1COIN by means of a slow operation (takes 1 hour)

Balance of Wallet A = (1\*ISW1COIN) - (0.1\*ISW1COIN) - (0.02 \* 0.1)\*ISW1COIN)
= 0.898\*ISW1COIN

Balance of Wallet B = 1\*ISW1COIN

All Transactions of Wallet A = { Withdrawal by transfer made at 18 hrs for 0.1\*ISW1COIN with commission of 0.02 \* 0.1\*ISW1COIN }

All Transactions of Wallet B = { Deposit by transfer made at 18 hrs for 0.1\*ISW1COIN }

Pending transactions of Wallet A = {}.

Pending transactions of Wallet B = { Deposit by transfer made at 18 hrs for 0.1\*ISW1COIN }

**19:00 hs**

Balance of Wallet A = (1\*ISW1COIN) - (0.1\*ISW1COIN) - (0.02 \* 0.1)\*ISW1COIN)
= 0.898\*ISW1COIN

Balance of Wallet B = (1 + 0.1)\*ISW1COIN
= 1.1\*ISW1COIN

All Transactions of Wallet A = { Withdrawal by transfer made at 18 hrs for 0.1\*ISW1COIN with commission of 0.02 \* 0.1\*ISW1COIN }

All Transactions of Wallet B = { Deposit by transfer made at 18 hrs for 0.1\*ISW1COIN }

Pending transactions of Wallet A = {}.

Pending transactions of Wallet B = {}
