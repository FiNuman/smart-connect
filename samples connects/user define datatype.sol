// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract statusdatatype{


     enum setdataStatus{
         pending,
         shiped,
         accepted,
         rejected,
         calcel
     }
  
     setdataStatus status;

     function getstatus() public  view returns (setdataStatus){
         return status;
     }

     function setStatus(setdataStatus _statusFromUser) public {
         status = _statusFromUser;
     }

    function _delete() public {
        delete  status ;
     }

}
