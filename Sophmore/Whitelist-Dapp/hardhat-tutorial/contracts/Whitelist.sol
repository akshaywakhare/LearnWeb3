// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Whitelist{

    uint8 public maxWhitelistedAddresses;
 
    mapping(address => bool) public whitelistedAddresses; 
    uint8 public numAddressesWhitelisted;

  constructor(uint8 _maxWhitelistedAddress){
    maxWhitelistedAddresses=_maxWhitelistedAddress;
  }
  
   

  function addAddressToWhitelist() public {
    address _add=msg.sender;
    require(!whitelistedAddresses[_add], "User is already whitelisted");
    require(numAddressesWhitelisted<maxWhitelistedAddresses,"Max Whitelist reached");
    numAddressesWhitelisted=numAddressesWhitelisted+1;
    whitelistedAddresses[_add]=true;
  }
}