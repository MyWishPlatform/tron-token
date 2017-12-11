pragma solidity ^0.4.0;

import "./MainCrowdsale.sol";

contract TemplateCrowdsale is MainCrowdsale {

    function TemplateCrowdsale()
        MainCrowdsale(
            START_TIME,
            END_TIME,
            SOFT_CAP_TOKENS,
            HARD_CAP_TOKENS,
            RATE,
            TOKEN_DECIMALS,
            "TOKEN_NAME",
            "TOKEN_SYMBOL",
            COLD_WALLET
        )
    {}
}