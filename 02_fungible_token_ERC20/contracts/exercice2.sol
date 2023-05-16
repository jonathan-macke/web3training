// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice2 {
    uint256 totalSupply;
    mapping(address => uint256) balances;
    uint256 decimals;
    uint owner;

    //6. create transfer event

    constructor(
        //1. add parameters
    ){
        //2. define supply of current token and decimals
        //3. define contract owner
    }

    //4. create modifier to check if caller is owner

    //5. adapt method so only owner can call it
    function mintToken(address _receiver, uint256 _amount) external {
        balances[_receiver] += _amount;
    }

    function transfer(address _receiver, uint256 _amount) external {
        //7. check that sender has enough tokens

        //8. send tokens to address

        //9. emit transfer event
    }
}