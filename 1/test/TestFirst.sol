// SPDX-License-Identifier: MIT
// pragma solidity >=0.4.22 <0.9.0;
pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/First.sol";

contract TestFirst {
  function testfirst() public {
    MetaCoin meta = MetaCoin(DeployedAddresses.MetaCoin());

    First meta = First(DeployedAddresses.First());

    Assert.equal(meta.showMessage(), "Hello World", "Hello World String value test");
  }
}