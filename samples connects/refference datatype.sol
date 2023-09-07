// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;



contract statusdatatype {

    
    struct refferencedata {
        string name;
        uint age;
        address acc;
    }

    refferencedata public empdata;
    refferencedata[] emps;

    function findempData(uint _i) public view returns(refferencedata memory){ 
        return emps[_i]; 
    }

    function setEmp() public {
        refferencedata memory emp1 = refferencedata("numan", 12, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
        emps.push(emp1); 
        emps.push(emp1); 
        emps.push(emp1);  
    }
}
