#!/usr/bin/env bash
set -eE -o pipefail
source /home/$AKASH_USER/.profile

AKASH_KEY_NAME=tempWallet
echo "Using temporary Akash Key and Wallet with name $AKASH_KEY_NAME"

yes $TEMP_WALLET_PASSWORD | akash keys add $AKASH_KEY_NAME