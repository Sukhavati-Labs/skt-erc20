# Sukhavati Contracts

This repository contains two contracts:

- SKT ERC20 Contract

## SKT ERC20 Contract

### Contract Details

- Name: Sukhavati Network Token
- Symbol: SKT
- Decimals: 8

The ERC20 contract uses the OpenZeppelin [ERC20PresetMinterPauser](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4-solc-0.7/contracts/presets/ERC20PresetMinterPauser.sol) contract.

OpenZeppelin contracts are community audited and considered to be safe.



### Contract Details

The signature contains the address of the participant, the number of tokens and a nonce. The contract uses `ecrecover` to verify that the signature was created by our trusted account.

If the signature is valid, the contract will transfer the tokens from a Sukhavat owned wallet to the participant.

### Running the tests

Install the dependencies:

```bash
yarn install
```

Create the .env file:

```bash
cp -v .env.example .env
```

Run the ganache-cli test rpc with a predefined mnemonic phrase:

```bash
yarn testrpc
```

Run the tests in a new terminal session:

```bash
truffle test
```

# Deploy contract 

Config deploy account 

If .env not exit please
```
cp .env.example .env
```
Find the .env to find TRUSTED_ACCOUNT config key input the deploy account private key


Config gasPrice on network 

Find the truffle-config.js file get  export object  in  follow path and default gasPrice is 1gwei

```
networks ->  live -> gasPrice
```

Deploy contract to rinkeby test network 

```bash
./node_modules/.bin/truffle migrate --reset --network rinkeby
```
Deploy contract to  main net network 

```bash
./node_modules/.bin/truffle migrate --reset --network live
```
