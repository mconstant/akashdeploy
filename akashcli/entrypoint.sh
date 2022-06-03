#!/usr/bin/env bash
set -eE -o pipefail
source /home/$AKASH_USER/.profile

export AKASH_KEY_NAME=temp
echo "Using temporary Akash Key and Wallet with name $AKASH_KEY_NAME"

printf "$AKT_WALLET_SEED\n$TEMP_WALLET_PASSWORD\n$TEMP_WALLET_PASSWORD\n" | akash keys add $AKASH_KEY_NAME --recover || true
export AKASH_NET="https://raw.githubusercontent.com/ovrclk/net/master/mainnet"
export AKASH_CHAIN_ID="$(curl -s "$AKASH_NET/chain-id.txt")"
export AKASH_NODE="$(curl -s "$AKASH_NET/rpc-nodes.txt" | shuf -n 1)"
echo "AKASH_NODE is $AKASH_NODE"
#AKASH_ACCOUNT_ADDRESS="$(akash keys show $AKASH_KEY_NAME -a)"

#echo "Akash account address is $AKASH_ACCOUNT_ADDRESS"
#
export AKASH_KEYRING_BACKEND=os
#
mkdir script
#
#git clone https://github.com/slowriot/akash_minecraft.git script/.

echo "log into the container and run the deploy script"
#akash tx cert publish client --from $AKASH_KEY_NAME --gas-prices="0.025uakt" --gas="auto" --gas-adjustment=1.15
#akash tx deployment create deploy.yaml --from $AKASH_KEY_NAME --node $AKASH_NODE --chain-id $AKASH_CHAIN_ID --fees 5000uakt -y
#yes $TEMP_WALLET_PASSWORD | ./script/deploy.sh

bash


