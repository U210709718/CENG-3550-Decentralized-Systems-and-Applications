// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //telling the compiler what version we will use!
contract MyContract {
    //Variables : ways to store informations insode my smart contract to reuse it!
    // State Variables vs Local Variables :
    //1-State Variables : Scope is inside the entire contract!
    uint myUint = 1;
    function getMyUnit() public returns(uint){
        myUint++;
        return myUint;
    }


    //2-Local Variables : Variables exist inside solidity functions.
    function getValue() public pure returns(uint){
        //Local Variable Example: this var only reachable inside this function! Variable Scope!
        uint value =1;
        return value;
    }

}
