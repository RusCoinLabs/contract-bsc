///////////(((((####(#(#########(//*******//((#####((#((######((#/*/*////////// The RusCoin (RSC) crypto fund was created to invest in the purchase of shares of MOEX and Prospective tokens.
//////////((((((####(#((/////////***,*,*,***//////////((######((#(*/*//////////
//////////(((((###(/*/(/,..,*,*,**/////////**,,,,*..,*(/**(###((#(*/*////////// Management fee is 2% per year.
//////////(((((/*//*,,,*****,...................,*****,,,*//*/((#(*/*////////// Success commission 20% of the fund's profit per quarter.
//////////((/*//*,.,/*,,.........   .....   .........,,***,,*///////*////////// On BEP-20 5,000,000 RSC coins in total, 26% RSC is for the team, site, marketing. 74% RSC is for investors.
///////////*/*.,***,......  .,*****************,.. .......**,*,,(/*/*//////////
///////(/*//,,,**,.......,*,,*/((####((((((###((/*,,*,.......,**,,,//*///****// 700.000 RSC for 0.1 BNB until 11.28.2021
/////(*//,*,**,.....,*,,*/#%(*.               .,/##(****, .....,*,*,//*(/////// 1,000,000 RSC for 0.2 BNB from 12.28.2021 to 03.28.2022
//((/*/*.***,.....,***(#(*.                        ,/#(*,*,. ....,**.,(*/((((// 2,000,000 RSC for 0.4 BNB from 04.28.2022 12.28.2022
//(/*(,.,/,.....,*,/##*   *################(/*.       .(#/*,.  ,.../*. #*//////
//(*(,,**,....,***(#*     *######################/.      .      ....**,.(*///// Buy from 2 to 100 RSC - get 5% bonus in RSC
//*(,***,....,**/#/.      *######(,.....,*/#%######*.            ....***,(,(/// Buy from 100 to 1000 - get 10% bonus in RSC
///*,,*,....,**/#/.     .*(######(**,       .(######*             ,.../.,*/*(// Buy more than 1000 RSC - get 20% bonus in RSC
//(,***,....,**#(.      .(%########%/        (######*              . .***,(*(//
/*(,**,, ..,**(#*         *#####%/        .,(######/.              . .,/,,(*/// Just send BNB to the address of this contract and you will receive RSC to your wallet within 30 seconds.
/*/,**,, ..,**((,         *######################(,                , .,/,,/////
/*(***,. ..,,*((,         *##################(*.                   . .,/**(*/// We are using AI NutCracker (Stock robot) to buy MOEX (Moscow Exchange) shares.
//(,***,....,*/#/.        *#####%/ *#######*.                      . .,**,(*(// Our goal is to collect 25% of moex shares to obtain a controlling stake.
///****,....,**((*        *#####%(   *#######(.                   ....*,/,(*(//
//*(,***,....,**((*       *#####%(     ,(######(,                ....***.(*((// Creator of RusCoin fund is Alexey Bykov, Ph.D. in economics, best option trader of Russia in 2014.
/////,,**.....,*,/#/.     *#####%(       ,(#######*.            .. .,*,,///((// Team of the fund are professionals in finance, IT development, marketing and PR with 25+ experience.
//(/*/,,**,.....,**(#/.   .******,         .********.  ,//.    ....**,,//*(((//
//%%(*(,.*/,......***/#(,                           .*(/***, ....,/*..(*/#%%%// 1. Get profit due to price growth of RusCoin (limited amount, 2x offer price in every round of sales).
//////*(/.,**,......,*,*/#(*.                    ,/(/*,*,. ....,***.*(*(/////// 2. Fund investment decisions lead to an increase in token prices (80% of profit is for buyback of RSC).
////////*/*,,,**.......,*****/(((/**,,,,,,**/((//****,. .....,**,,*(*//,,,,,,// 3. Get profit from staking (payments on the 1st and 15th of each month). Read more on ruscoin.vip
////////(/*//,.,/*,....,. .,,***,,*********,,,**,.. .,....,*/*.,/(*/((/,,,,,,//
/////////*##///*,,,***,...............................,,**,,,*//*(/**********// Twitter: https://twitter.com/RusCoin20, Facebook: https://www.facebook.com/groups/ruscoin.eng/
/////////*##*/(**(/..*,,//,..,,..     .      ..,..,*/*,*,.*(/*((/(/**********// LinkedIn: https://www.linkedin.com/in/ruscoin/, Telegram: https://t.me/RusCoin_Eng
/////////*##*/###(/*///*,,.,**********************,,,,///*/((##(/(/**********//
/////////*##*/#######((/**/((/*,,.,. * ,..,.,,*/((/**/(#####(##(/(/**********// Disclaimer: Any investment in crypto tokens implies inherent risks.
/////////*##*/#######((#####((//******/******//((##(########(##(/(/**********// The fund does not extend any guarantees to the investor in the growth of the RSC price.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract RusCoin is ERC20, Ownable, ERC20Burnable, ERC20Permit {
    address public creator = 0x532f26637ae7fEb489E299C07D66dA91D187E773; // RusCoin Founder
    address public fund = 0x85CA6D97b078128fbA18a36292473985A83fBb58; // RusCoin Fund

    uint public gasPrice = 500; // BNB price
    uint public minBoughtPrice = 0.2 * 10 ** 18; // min BNB to buy RusCoin

    /* first sales round RusCoin == $50 (28.08.2021 - 28.11.2021) */
    uint public rusCoinToSell = 700000 * 10 ** decimals(); // 700 000 RusCoin
    uint public rusCoinPrice = 50; // RusCoin USDT price
    uint public start = 1630108800; // start date: 28.08.2021
    uint public end = 1638057600; // end date: 28.11.2021

    /* second sales round RusCoin == $100 (28.12.2021 - 28.03.2022) */
    // uint public rusCoinToSell = 1000000 * 10 ** decimals(); // 700 000 RusCoin for the first round of sales
    // uint public rusCoinPrice = 100; // RusCoin price
    // uint public start = 1640649600; // 28.12.2021
    // uint public end = 1648425600; // 28.03.2022

    /* third sales round RusCoin == $200 (28.04.2022 - 28.10.2022) */
    // uint public rusCoinToSell = 1000000 * 10 ** decimals(); // 700 000 RusCoin for the first round of sales
    // uint public rusCoinPrice = 100; // RusCoin price
    // uint public start = 1651104000; // 28.04.2022
    // uint public end = 1672185600; // 28.12.2022

    constructor() ERC20("RusCoin", "NSC") ERC20Permit("RusCoin") {
        _mint(creator, 1300000 * 10 ** decimals());
        _mint(fund, 3000000 * 10 ** decimals());
        _mint(address(this), 700000 * 10 ** decimals());
    }

    function decimals() public view virtual override returns (uint8) {
        return 5;
    }

    // external function to withdraw contract's BNB (for owner or creator only)
    function withdrawBalance(uint amount) public returns (bool) {

        require(owner() == msg.sender || creator == msg.sender, "Only owner and creator can call this function");

        uint balance = address(this).balance;
        require(amount <= balance, 'not enough BNB to withdraw');

        uint ownerShare = amount * 2 / 100;

        (bool success, ) = creator.call{value: ownerShare}("");
        require(success, "transaction to owner failed"); // creator's 2% transaction

        (bool success2, ) = fund.call{value: amount - ownerShare}("");
        require(success2, "transaction to the fund failed"); // transaction to the fund

        return true;
    }

    // external function to correct gas price in the contract (for owner only)
    function setGasPrice(uint _gasPrice, uint _minBoughtPrice) public onlyOwner returns (bool) {
        gasPrice = _gasPrice;
        minBoughtPrice = _minBoughtPrice;
        return true;
    }

    // external function to initialize next round of purchase (for owner only)
    function setPurchaseRound(uint _rusCoinToSell, uint _rusCoinPrice, uint _start, uint _end) public onlyOwner returns (bool) {
        rusCoinToSell = _rusCoinToSell;
        rusCoinPrice = _rusCoinPrice;
        start = _start;
        end = _end;
        return true;
    }

    receive() external payable {

        address from = msg.sender;
        uint amount = msg.value;
        uint timestamp = block.timestamp;

        require(timestamp >= start, 'RusCoin round of purchase is not started yet');

        require(timestamp < end, 'RusCoin round of purchase is done, wait for the next one');

        // minimal purchase threshold (~$100 for the first round)
        require(amount >= minBoughtPrice, 'Not enough BNB for minimal bought');

        _sellRusCoin(from, amount);
    }

    function _sellRusCoin (address from, uint amount) private {

        // calculate the number of RusCoin equivalent to this BNB amount
        // and round RusCoin's value to 2 decimals
        uint tokens = ((amount * gasPrice / rusCoinPrice / 10 ** 13) + 5) / 10 ** 3 * 10 ** 3;

        if (amount < minBoughtPrice * 10) {
            // +5% crypto back for minimal purchase
            tokens = tokens * 21 / 20;
        } else if (amount < minBoughtPrice * 100) {
            // +10% crypto back for minimal purchase (~$1000 and more for the first round)
            tokens = tokens * 11 / 10;
        } else { // amount >= minBoughtPrice * 100
            // +20% crypto back for minimal purchase (~$10000 and more for the first round)
            tokens = tokens * 6 / 5;
        }

        require(tokens <= rusCoinToSell, 'Not enough RusCoin in this round of purchase');

        require(tokens <= balanceOf(address(this)), 'Not enough RusCoin on the balance');

        _transfer(address(this), from, tokens);

        rusCoinToSell -= tokens;

        emit SellEvent(from, amount, tokens);
    }

    // external function to pay to stakeholders (for owner only)
    function payForStakes(address[] memory users, uint[] memory tokens) public onlyOwner returns (bool) {
        for (uint256 s = 0; s < tokens.length; s += 1){
            _transfer(address(this), address(users[s]), tokens[s]);
        }
        return true;
    }

    event SellEvent(address from, uint amount, uint tokens);
}
