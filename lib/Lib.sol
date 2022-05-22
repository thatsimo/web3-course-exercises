pragma solidity >=0.7.0 <0.9.0;

contract Ownable {
    address private _owner;
    
    constructor() {
        _owner = msg.sender;
    }

    function owner() public view virtual returns (address) {
        return _owner;
    }

    modifier onlyOwner() {
        require(msg.sender == _owner, "You're not the Owner"); 
        _;
    }
}

contract Pausable {
    bool public paused;

    modifier notPaused() {
        require(!paused, "Contract Paused");
        _;
    }
}