# Contract for transferring token airdrop reward to multiple winners

This project demostrates a basic smart contract for doing a token distrbution rewards to multiple winners.

Every crypto organization or exchange often creates Marketing campaigns and Token Airdrop campaigns for community engagement and participation and selects a list of winners after the promotion activity.

Distributing token rewards to each winner can be a gas and time consuming task if it is done one by one or manually by the project owner. 

This script has a function "TransferAirDrop" which accepts an array of addresses and amount respectively and transfers the reward amount to each winner respectively in a single run.

Any project owner can deploy this contract and pass the reward erc-20 token address in its constructor. After this, the token amount allocated for distibution should be transffered to this deployed contract address.

Once this is done, the contract is ready for use by any project team to distribute rewards in bulk periodically.