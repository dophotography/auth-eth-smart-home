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

```// Example usage in JavaScript
const LoginService = artifacts.require('LoginService');

const loginServiceInstance = await LoginService.deployed();
const isUserAuthenticated = await loginServiceInstance.authenticateUser(userAddress, userPassword);
```
