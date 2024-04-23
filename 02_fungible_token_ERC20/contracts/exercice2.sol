// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract exercice2 {
    mapping(address => uint256) balances;
    address owner;

    event TransferEvent(address _from, address _to, uint _amount);

    constructor(){
       owner = msg.sender;
    }

    //3. create modifier to check if caller is owner
    modifier onlyOwner(){
        require(msg.sender == owner, "only owner can invoke function");
        _;
    }

    function mintToken(address _receiver, uint256 _amount) external onlyOwner {
        balances[_receiver] += _amount;
    }

    function transfer(address _receiver, uint256 _amount) external {

        require(balances[msg.sender] >= _amount, "not enough balance");

        balances[msg.sender] -= _amount;
        balances[_receiver] += _amount;

        emit TransferEvent(msg.sender, _receiver, _amount);
    }

    function balance(address _address) public view returns (uint) {
        return balances[_address];
    }
}