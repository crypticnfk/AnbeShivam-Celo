
# AnbeShivam

A decentralized and completely transparent project funding platform.


## Tech Stack Used

- Truffle Suite
- Celo ContractKit
- IPFS
- Openzeppelin contracts
- Next js
- react-bootstrap

## AnbeShivam Smart Contract Deployments

**Alfajores Testnet**

| Contract | Deployed address  |
| :----- | :- |
| [AnbeShivamMain Contract](https://alfajores-blockscout.celo-testnet.org/address/0x6A17D1b1E31A8473Fccf21b7FAB82757139520f1) | `0x6A17D1b1E31A8473Fccf21b7FAB82757139520f1` |
| [GODS Token Contract](https://alfajores-blockscout.celo-testnet.org/address/0x56BFF24b2e1B4bf865df01826A6aC0c60a0082af) | `0x56BFF24b2e1B4bf865df01826A6aC0c60a0082af`|
| [AnbeShivam NFT Contract](https://alfajores-blockscout.celo-testnet.org/address/0x27163f2Df1d3B1B34FB946d84F7CC0b5E527671d) | `0x27163f2Df1d3B1B34FB946d84F7CC0b5E527671d`|



## Run Locally


### Pre-Requisites

- truffle
- ganache-cli

  
Clone the project

```bash
  git clone git@github.com:crypticnfk/AnbeShivam.git
```

Go to the project directory

```bash
  cd AnbeShivam

```


### Setting up a local Block Chain Server
Install dependencies

```bash
  npm install
```

Compile Smart Contracts

```bash
  truffel Compile
```

Run ganache (a local block chain)

```bash
  ganache-cli
```  

Run migrations to deploy the smart contracts to ganache


```bash
  truffle migrate
```  

### Setting up the client
 
Go to the client directory

```bash
  cd client

```
Install dependencies

```bash
  npm install

```

Starting a dev server

```bash
  npm run dev

```
Visit http://localhost:3000/ to view the app


## Running Tests

To run tests, run the following command

```bash
  truffle test
```

## Contribute

Contributions are what makes the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

 1. Fork the Project
 2.  Create your Feature Branch (git checkout -b feature/AmazingFeature)
 3. Commit your Changes (git commit -m 'Add some AmazingFeature')
 4.  Push to the Branch (git push origin feature/AmazingFeature)
 5. Open a Pull Request

  
## Authors

- [@abhigamez](https://github.com/abhinav-TB)
- [@crypticnfk](https://github.com/crypticnfk)
- [@Navneeth87](https://github.com/Navneeth87)
- [@HishamHR5](https://github.com/HishamHR5)
- [@aZrael936](https://github.com/aZrael936)

  
## Feedback

If you have any feedback, please reach out to us at cryptomaniac@anbeshivam.com

  
## License

[MIT](https://choosealicense.com/licenses/mit/)

  
