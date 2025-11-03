pragma solidity ^0.8.26;

import "forge-std/Test.sol";
import "../src/test_src.sol";

contract HelloTest is Test {
    function testGreet() public {
        Hello h = new Hello();
        assertEq(h.greet(), "hello");
    }
}
