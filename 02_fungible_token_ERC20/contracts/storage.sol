// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {

    uint256 number;

    address owner;

    event TransferOwnership(address _newOwner);

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner {
                require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    /**
     * @dev Store value in variable
     * @param num value to store
     */
    function store(uint256 num) public payable onlyOwner{
        require(msg.value == 0.1 ether, "Invalid value");
        number = num;
    }

    /**
     * @dev Return value 
     * @return value of 'number'
     */
    function retrieve() public view returns (uint256){
        return number;
    }

   /**
     * @dev Withdraw contract balance
     */
    function withdraw() public payable onlyOwner {
        (bool os, ) = payable(owner).call{value: address(this).balance}("");
        require(os);
        // =============================================================================
    }

    function transferOwnership(address _newOwner) public onlyOwner{
        owner = _newOwner;
        emit TransferOwnership(_newOwner);
    }
}