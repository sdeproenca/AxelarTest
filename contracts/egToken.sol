// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract EgToken is ERC20, Ownable {
    constructor() ERC20("egToken", "EGT") {
        _mint(msg.sender, 1000000001 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function mintPublic(address to) public {
        _mint(to, 1000);
    } 
}
