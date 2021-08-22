pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/extensions/ERC20Pausable.sol";

contract myDemoToken is ERC20, Ownable, ERC20Burnable, Pausable{
    using SafeMath for uint;
    uint public cap;
    
    constructor() ERC20("myDemoToken", "MDT") public{
        uint initialSupply = 10000 * (10 ** decimals());
        cap = initialSupply.mul(2);
        _mint(msg.sender, initialSupply);
    }
    
    function generateTokens(address account, uint amount) public whenNotPaused onlyOwner{
        require(account != address(0), "Invalid address");
        require(amount > 0, "Invalid Amount");
        require(totalSupply().add(amount) < cap, "Overlimit Token: Token generation failed!");
        _mint(account, amount);
    }
    
    function stopTransaction() public whenNotPaused onlyOwner{
        _pause;
    }
    
    function startTransaction() public whenPaused onlyOwner{
        _unpause;
    }
}