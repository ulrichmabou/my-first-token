// SPDX-License-Identifier: MIT

// Compiler version
pragma solidity ^0.8.0;

// Import the ERC-20 token standard from OpenZeppelin (OZ)
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Specify a new contract - an instance of ERC20 from OZ
// Then initialize the ERC20 smart contract
contract FPLToken is ERC20 {
    constructor(string memory _name, string memory _symbol) ERC20(_name, _symbol) {
        // Call the _mint function to mint some tokens
        // _mint takes 2 arguments - an address to mint to, and the amount of tokens to mint
        // Mint 10 tokens to msg.sender since you'll be the one deploying the contract
        _mint(msg.sender, 10 * 10 ** 18);
    }
}