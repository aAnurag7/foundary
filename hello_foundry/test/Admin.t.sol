// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Admin.sol";

contract AdminTest is Test {
    uint256 sepoliaFork;
    Admin public admin;
    string SEPOLIA_URL = vm.envString("SEPOLIA_URL");
    function setUp() public {
        admin = new Admin();
    }

    function testFuzz_setOwner(address x) public {
        admin.changeOwner(x);
        assertEq(admin.owner(), x);
    }
}
