# Smart Home Login Service

This repository contains a Truffle smart contract serving as the backend for a login service in a smart home application.

## Smart Contract

The `LoginService` smart contract handles user authentication for the smart home application. It provides secure login functionality using Ethereum accounts.

### Installation

Make sure you have [Truffle](https://www.trufflesuite.com/truffle) installed.

```bash
# Clone the repository
git clone https://github.com/ohanovdmytro/auth-eth-smart-home.git

# Navigate to the project directory
cd path/to/project

# Install Truffle dependencies
npm install -g truffle
npm install
```

### Usage
Deploy the smart contract to a local development blockchain or a testnet.
 ```bash
# Compile the smart contract
truffle compile

# Migrate the smart contract to the blockchain
truffle migrate
```
## Smart Home App

### Smart Home Application Integration

Integrate the smart contract into your smart home application's backend. Use the contract functions to authenticate users securely.

### Example usage in JavaScript
```javascript
const Web3 = require('web3');
const web3 = new Web3('http://localhost:8545'); // Replace with your Ethereum node URL

const LoginSystemContract = artifacts.require('LoginSystem'); // Assuming you have the truffle artifacts available

async function main() {
  const accounts = await web3.eth.getAccounts();

  // Deploy the LoginSystem contract
  const loginSystemInstance = await LoginSystemContract.new();

  // Connect wallet for user1
  await loginSystemInstance.connectWallet({ from: accounts[0] });

  // Set house name for user1
  await loginSystemInstance.setHouseName('User1House', { from: accounts[0] });

  // Get house name for user1
  const houseName = await loginSystemInstance.getHouseName({ from: accounts[0] });

  // Check if user1 is logged in
  const isUserLoggedIn = await loginSystemInstance.isUserLoggedIn({ from: accounts[0] });
}

main();

```
