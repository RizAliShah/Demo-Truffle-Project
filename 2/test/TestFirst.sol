// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/First.sol";


contract TestFirst {
    
    function testage() public {
    
        First meta = First(DeployedAddresses.First());
        meta.getAge();
        Assert.equal(meta.getAge(), "30", "Age is not equal to 30");
    }
}