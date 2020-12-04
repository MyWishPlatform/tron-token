#!/usr/bin/env bash
set -e
rm -rf build
rm -f contracts/MainToken.sol
source $(dirname "$0")/templated-tests/preprocess-token-template.sh $1
node_modules/.bin/tronbox compile --all
yarn combine
yarn fix-erc20
