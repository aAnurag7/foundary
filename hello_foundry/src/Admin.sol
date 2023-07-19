// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Admin {
    
    address public owner;

    modifier onlyOwner {
        require(msg.sender == owner, "not authorized");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function changeOwner(address _newOnwer) onlyOwner external{
        owner = _newOnwer;
    }
    
}
