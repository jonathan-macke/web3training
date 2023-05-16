// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice1{
    event EthTransferred(address _sender, uint256 _amount);
    address owner;
    uint256 ethAmountToSend = 0.01 ether;

    constructor{
        //initialize owner with the wallet that deployed the transaction
    }

    function addEthToSmartContract() external payable {
        //add a control to check if correct value is sent
        //emit EthTransfered event
    }

    //create transferETH method that sends ETH to another wallet
}