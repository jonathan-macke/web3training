// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @notice Implements a basic ERC20 staking token with incentive distribution.
 */

contract DktToken is ERC20, Ownable {
    /**
     * @notice The constructor for the Staking Token.
     */
    constructor(uint256 _supply) ERC20("DKT Token", "DKT") {
        _mint(msg.sender, _supply * 1e18);
    }
}