//SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import "forge-std/Script.sol";
import "../src/FemiiNFT.sol";

contract DeployFemiiNFT is Script {
    function run() external {
        vm.startBroadcast();
        new FemiiNFT("ipfs://bafybeicolyopnfhvveqsbi3yfsbdvqo2cs5qj6zdy4m2sh2sgo573urnpe/1.json");
        vm.stopBroadcast();
    }
}