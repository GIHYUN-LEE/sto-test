pragma solidity ^0.8.26;

import "forge-std/Script.sol";
import "../src/test_src.sol";

contract DeployHello is Script {
    function run() external {
        uint256 pk = vm.envUint("DEPLOYER_PK");
        vm.startBroadcast(pk);
        Hello h = new Hello();
        vm.stopBroadcast();
        console.log("Hello deployed at:", address(h));
    }
}
