// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct donerList{
    string name;
    uint age;
    string add;
    uint donation;
}

contract statusdatatype {
    mapping (address=>donerList) public accountInfo;

    function donate( string memory _name ,
    uint _age ,
    string memory _add ,
    uint _donation ) public { 
        accountInfo[msg.sender] = donerList(_name,_age,_add, accountInfo[msg.sender].donation+_donation);
    }
}
