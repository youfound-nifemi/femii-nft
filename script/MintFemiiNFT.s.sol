//SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import "forge-std/Script.sol";
import "../src/FemiiNFT.sol";

contract MintFemiiNFT is Script {
    function run() external {
        vm.startBroadcast();
        FemiiNFT femiiNFT = FemiiNFT(0xA1D9eBf3C5F6c8b2E4F1D3A7B2C4E5F6A7B8C9D0);
        nft.mint(0x631346e48aEc1AeA78A87C8897f2c386e246D646);
        vm.stopBroadcast();
    }
}