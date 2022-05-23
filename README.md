# CHARUSAT-Nft
CHARUSAR-Nft is a NFT Marketplace for anyone built with Polygon, Solidity, IPFS, & Next.js. Mint, Buy, Sell NFT items in minutes using Polygon Blockchain with low Gas Fee.

## Running this project

### Add Mumbai testnet  
Step 1: Click on the dropdown menu on top of the MetaMask wallet extension.

  <img style="display: block;-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://miro.medium.com/max/892/1*zqBQfBc0fxasaB9WMvz5Gg.png">
Step 2: Click on “Add Network” and add the following parameters in the blank space.

Network Name: Mumbai Testnet

New RPC URL: https://rpc-mumbai.maticvigil.com/

Chain ID: 80001

Currency Symbol: MATIC

Block Explorer URL: https://polygonscan.com/
<img style="display: block;-webkit-user-select: none;margin: auto;cursor: zoom-in;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://miro.medium.com/max/1400/1*2I3Y9kIJ_JcSCpcR5rjEnA.png" width="884" height="614">

Step 3: Click on “Save” and you’re good to go.

<img alt="" class="cf kj kk" src="https://miro.medium.com/max/1400/1*IHO9FnakeQRz42R0pWQsNA.png" width="700" height="249" role="presentation">


#### Local setup

To run this project locally, follow these steps.

1. Clone the project locally, change into the directory, and install the dependencies:

```sh
git clone https://github.com/rdodiya/CHARUSAT-Nft.git

cd CHARUSAT-Nft

# install using NPM or Yarn
npm install

# or

yarn
```

2. Start the local Hardhat node

```sh
npx hardhat node
```

3. With the network running, deploy the contracts to the local network in a separate terminal window

```sh
npx hardhat run scripts/deploy.js --network localhost
```
Or
 
 deploy the contracts to the mumbai network in a separate terminal window

```sh
npx hardhat run scripts/deploy.js --network mumbai
```
4. Start the app

```
npm run dev
```

### Configuration

To deploy to Polygon test or main networks, update the configurations located in __hardhat.config.js__ to use a private key and, optionally, deploy to a private RPC like Infura.

```javascript
/* hardhat.config.js */
require("@nomiclabs/hardhat-waffle")
const privateKey =""//Add your private key of metamask
const projectID=""//Add project Id of Infura
module.exports = { 
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
      chainId: 1337
    },
//  unused configuration commented out for now
    mumbai: {
      url: 'https://polygon-mumbai.infura.io/v3/${projectID}',
      accounts: [privateKey]
    },
    mainnet:{
      url: 'https://polygon-mainnet.infura.io/v3/${projectID}',
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
```

If using Infura, update __.infuraid__ with your [Infura](https://infura.io/) project ID.
