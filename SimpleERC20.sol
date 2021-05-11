// SPDX-License-Identifier: MIT
// Description: Basic ERC20 contract that mints 3 million tokens 

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SimpleERC20 is ERC20 {
    constructor() ERC20("simple", "SIMP"){
        // Mint 3 million
        _mint(msg.sender, 3000000);
    }
}