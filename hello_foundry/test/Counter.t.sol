// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";
import "forge-std/console.sol";

contract CounterTest is Test {
    uint256 sepoliaFork;
    Counter public counter;
    string SEPOLIA_URL = vm.envString("SEPOLIA_URL");
    function setUp() public {
        counter = new Counter();
        counter.setNumber(0);
        sepoliaFork = vm.createFork(SEPOLIA_URL);
    }

    function testIncrement() public {
        counter.increment();
        console.log(SEPOLIA_URL);
        assertEq(counter.number(), 1);
    }

    function testSetNumber(uint256 x) public {
        counter.setNumber(x);
        assertEq(counter.number(), x);
    }
}
