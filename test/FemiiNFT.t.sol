//SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

import "forge-std/Test.sol";
import "../src/FemiiNFT.sol";

contract FemiiNFTTest is Test {
    FemiiNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new FemiiNFT("ipfs://test/");
    }
    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }
    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}