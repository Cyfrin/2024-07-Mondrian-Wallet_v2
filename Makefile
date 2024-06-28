-include .env

.PHONY: all test clean deploy fund help install snapshot format anvil scopefile flatten encryptKey

all: remove install build

# Clean the repo
clean :; forge clean

# Remove modules
remove :; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "modules"

install :; forge install foundry-rs/forge-std@v1.8.2 --no-commit && forge install openzeppelin/openzeppelin-contracts@v5.0.2 --no-commit && forge install eth-infinitism/account-abstraction@v0.7.0 --no-commit && forge install cyfrin/foundry-era-contracts@0.0.3 --no-commit && forge install cyfrin/foundry-devops@0.2.2 --no-commit && forge install openzeppelin/openzeppelin-contracts-upgradeable@v5.0.2 --no-commit

build:; foundryup-zksync && forge build --zksync 

test :; forge test --zksync --system-mode=true

