// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice1{
    event EthTransferred(address _sender, uint256 _amount);
    address owner;

    constructor() {
        //initialize owner with the wallet that deployed the transaction
    }

    function addEthToSmartContract() external payable {
        //add a control to check if correct value is sent
        //emit EthTransfered event
    }

    
     function transfer(address _to) public {
        //transfer eth balance to the address given in input
     }
}