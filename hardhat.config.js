/* hardhat.config.js */
require("@nomiclabs/hardhat-waffle")
const privateKey ="a6ed4cb3996f85a6a4571e96bd245bd3f06b7e17057cc1dc9f508f7858a42076"
const projectID="cad7320f0282463aaa88bdd93b09639e"
module.exports = {
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337
    },
//  unused configuration commented out for now
    mumbai: {
      url: 'https://polygon-mumbai.infura.io/v3/cad7320f0282463aaa88bdd93b09639e',
      accounts: [privateKey]
    },
    mainnet:{
      url: 'https://polygon-mainnet.infura.io/v3/cad7320f0282463aaa88bdd93b09639e',
      accounts: [privateKey]
    },
  },
  solidity: {
    version: "0.8.4",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}