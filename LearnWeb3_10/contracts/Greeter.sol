//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    string greeting;

    constructor() {
        console.log("Deploying a Greeter with greeting:", greeting);
    }

    function setGreeting(string memory _greeting) public {
        console.log("%s is changing the greeting from '%s' to '%s'", msg.sender, greeting, _greeting);
        greeting = _greeting;
    }

    function greet() view public returns (string memory) {
        return greeting;
    }
}