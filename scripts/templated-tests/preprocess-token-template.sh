#!/usr/bin/env bash
mkdir -p build/template
echo "first pass"
node node_modules/.bin/c-preprocessor --config pre-firstpass-config.json template/Consts.sol build/template/Consts.sol
node node_modules/.bin/c-preprocessor --config pre-firstpass-config.json template/MainToken.sol build/template/MainToken.sol
echo "second pass"
node node_modules/.bin/c-preprocessor --config $1 build/template/Consts.sol contracts/Consts.sol
node node_modules/.bin/c-preprocessor --config $1 build/template/MainToken.sol contracts/MainToken.sol
