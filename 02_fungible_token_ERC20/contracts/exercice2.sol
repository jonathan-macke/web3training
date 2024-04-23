// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice2 {
    mapping(address => uint256) balances;
    address owner;

    //3. create transfer event

    constructor(){
        owner = msg.sender;
    }

    //1. create modifier to check if caller is owner

    //2. adapt method so only owner can call it
    function mintToken(address _receiver, uint256 _amount) external {
        balances[_receiver] += _amount;
    }

    function transfer(address _receiver, uint256 _amount) external {
        //4. check that sender has enough tokens

        //5. send tokens to address - ie decrement balance for sender, increment balance for receiver

        //6. emit transfer event
    }

     function balance(address _address) public view returns (uint) {
        //7. return the balance for the given address
     }
}