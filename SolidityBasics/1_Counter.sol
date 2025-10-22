// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0; //telling the compiler what version we will use!

//Steps to compile the code :
//1- Compile it.
//2- Deploy it & run the transactions.


//create smart contract!!
contract Counter {
    //codes goes here!!
    //create a basic variable will be changed (set) by user by 1
    //state var stored on the blockchain!
    uint256 public count; //unit256 is the type of var, unsigned integer, an int without a sign! Which means CAN'T BE -1

    //constructor Runs only once!
    constructor() public { //will be called when contract creation!
        count =0;
    }
    //INSTADE OF INSTRUCTOR WHEN DEFINING THE VARIABLE CAN DO IT LIKE : uint public count =0; 

    //GET COUNT FUNCTION CAN BE DELETED BECAUSE OF PUBLIC KEYWORD BEFORE THE COUNT VARIABLE! SOLIDITY WILL CALL A COUNT () FUNCTION TO GET THE VALUE!! 

    //creating a READ function, which is a piece of code which will be reused multiple times!
    function getCount() public view returns (uint256) {
    //modifier added!public means we can call the function outside of the smart contract!
    //modifiers : public , internal : only called inside the smart contract!
        return count;
    }
    function incrementCount() public { //WRITE-function to set the count!
        count++; //when +1 done! we do a odification to original var! the var stored in the blockchain! WE change the blockchain !HAVE TO PAY GAS!
    }
    //READ Functions are free, WRITE Funnctions have cost(pay Cost)!

    //LAST Best-Version CODE (SIMPLIFIED) :
    //// SPDX-License-Identifier: MIT
    //pragma solidity ^0.8.0;
    //contract Counter {
            //unit public count = 0;
            //function incrementCount() public { count++}

    //}


}
//After writing this code Compile! Convert it into Machine code !
/*
6080604052348015600e575f5ffd5b505f805560bc80601d5f395ff3fe6080604052348015600e575f5ffd5b50600436106030575f3560e01c8063a87d942c146034578063e5071b8e146048575b5f5ffd5b5f5460405190815260200160405180910390f35b604e6050565b005b5f80549080605c836063565b9190505550565b5f60018201607f57634e487b7160e01b5f52601160045260245ffd5b506001019056fea2646970667358221220b0c4b428029057c2c1042781f84afa31e24749f8e8cd128da210958eac0b55b864736f6c634300081e0033
*/
