
 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ownerable{
    address public owner;

    constructor(){
        owner = msg.sender;
    }


    modifier onlyOwner(){
        require(msg.sender == owner, "not owner");
        _;
    }

    function setOwner(address _newowner) public onlyOwner(){
        require(_newowner != address(0),"invalid address");
        owner = _newowner;
    }

    function anyone() public {
        //code
    }
}
