// SPDX-License-Identifier: MIT
pragma solidity 0.8.24; 

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

/// @title Quantum Token Contract
/// @author CorporateDev99
/// @notice A standard deflationary token with modern syntax and explicit definitions.
contract QuantumToken is ERC20, ERC20Burnable {
    
    uint256 private constant INITIAL_SUPPLY = 7500000;

    constructor() ERC20("QuantumToken", "QNTM") {
        _mint(msg.sender, INITIAL_SUPPLY * (10 ** decimals()));
    }
}