# Mondrian Wallet v2

- High - 100xp
- Medium - 20xp
- Low - 2xp

- Starts: July 04, 2024 Noon UTC
- Ends: July 11, 2024 Noon UTC

- nSloc: 105

[//]: # (contest-details-open)

## About

The Mondrian Wallet team is back! And they decided "oh wow, zkSync has native account abstraction! Let's just use that. Also, we introduced a lot of bugs, so let's just make this codebase upgradeable, so that only the owner of the wallet can introduce functionality later as they see fit. Also, the NFT gimmick was silly so, let's not do that again."

If the contracts are upgradeable, we'll just be able to upgrade them if there is a bug, so no issues right? 

To *really* understand this codebase, you'll want to learn about:
- Account Abstraction
- zkSync System Contracts
- Upgradable smart contracts via UUPS

## Actions

The Mondrian Wallet v2 will allow users to have a native smart contract wallet on zkSync, it will implement all the functionality of `IAccount.sol`. 

You can learn more about about account abstraction on zkSync by watching the [account abstraction Cyfrin Updraft section](https://updraft.cyfrin.io/courses/advanced-foundry/account-abstraction/introduction).

The wallet should be able to do anything a normal EoA can do, but with limited functionality interacting with system contracts. 

## Roles

- `Owner` - The owner of the wallet, who can upgrade the wallet.
- zkSync system contracts - We don't consider these "actors" for the audit. 

[//]: # (contest-details-close)

[//]: # (getting-started-open)

# Getting Started 

## Requirements

- [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
  - You'll know you did it right if you can run `git --version` and you see a response like `git version x.x.x`
- [foundry](https://getfoundry.sh/)
  - You'll know you did it right if you can run `forge --version` and you see a response like `forge 0.2.0 (816e00b 2023-03-16T00:05:26.396218Z)`
- [foundry-zksync](https://github.com/matter-labs/foundry-zksync)
  - You'll know you did it right if you can run `forge-zksync --help` and you see `zksync` somewhere in the output

## Installation

```bash
git clone https://github.com/PatrickAlphaC/minimal-account-abstraction
cd minimal-account-abstraction
make
```

# Quickstart 

```bash
make build # this will update foundry-zksync
make test # this will run with via-ir and --system-mode=true
```

[//]: # (getting-started-close)

[//]: # (scope-open)

## Scope

```
./src/
#-- MondrianWallet2.sol
```

## Compatibilities

- solc_version: "0.8.24",
- solc_zkvm_edition: "1.0.1",
- zkSolc: "1.4.1"
- Chain(s) to deploy to:
  - zkSync Era Mainnet
- Deployment information:
  - Out of scope

[//]: # (scope-close)

[//]: # (known-issues-open)

## Known Issues

- The wallet may not work as intended with zksync system contracts. The only system contract that it is expected to work correctly with is the `DEPLOYER_CONTRACT` and the `NONCE_HOLDER_SYSTEM_CONTRACT`.
- We are using the `cyfrin/foundry-era-contracts` package, which is not what the zkSync documentation recommends. Please ignore.

[//]: # (known-issues-close)
