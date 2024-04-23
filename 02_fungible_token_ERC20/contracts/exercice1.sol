// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice1{
    event EthTransferred(address _sender, uint256 _amount);
    address owner;
    uint256 ethAmountToSend = 0.01 ether;

    constructor() {
       owner = msg.sender;
    }

    function addEthToSmartContract() external payable {
        require(msg.value == 1 ether, "Not enough mony");
        emit EthTransferred(msg.sender, msg.value);
    }

    function transfer(address _to) public {
        (bool result, ) =  payable(_to).call{value:address(this).balance}("");
        require(result);
    }
}