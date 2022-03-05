pragma solidity >=0.5.0 <0.9.0;

import './Ownable.sol';

contract Destructible is Ownable {
    
    constructor (){ }

    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
    
    function destroyAndSend(address _recipient) public onlyOwner {
        selfdestruct(_recipient);
    }
}