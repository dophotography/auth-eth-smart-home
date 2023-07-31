require('dotenv').config()

const HDWalletProvider = require("@truffle/hdwallet-provider")
const { MNEMONIC, INFURA_API_KEY } = process.env;

const localProvider = () => new HDWalletProvider(MNEMONIC, `https://sepolia.infura.io/v3/${INFURA_API_KEY}`)

module.exports = {

  networks: {
    sepolia: {
      provider: localProvider,
      network_id: 11155111,
      gas: 5500000,        
      confirmations: 2,    
      timeoutBlocks: 200,
      skipDryRun: true,
      networkCheckTimeout: 10000,
    },
    
  },

  plugins: ['truffle-plugin-verify'],
  
  api_keys: {
    etherscan: process.env.ETHERSCAN_API_KEY,
  },

  compilers: {
    solc: {
      version: "0.8.18"
    }
  },

}
