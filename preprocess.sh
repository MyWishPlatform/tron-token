#!/usr/bin/env bash
mkdir -p build/template
echo "first pass"
node_modules/.bin/c-preprocessor --config pre-firstpass-config.json template/TemplateCrowdsale.sol build/template/TemplateCrowdsale.sol
echo "second pass"
node_modules/.bin/c-preprocessor --config c-preprocessor-config.json build/template/TemplateCrowdsale.sol contracts/TemplateCrowdsale.sol

node_modules/.bin/c-preprocessor --config c-preprocessor-config.json template/Consts.sol contracts/Consts.sol
