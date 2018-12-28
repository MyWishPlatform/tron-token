const Token = artifacts.require('./MainToken.sol');

module.exports = function (deployer, network, accounts) {
    deployer.deploy(Token);
};
