//SPDX-License-Identifier: MIT

pragma solidity >= 0.7.3;


// contract roughly translates to class in other programming languages
// contract has three main components - state variables, functions, events that we can broadcast
contract HelloWorld {
    
    // when this event is broadcasted everyone will know the old and new string values
    event UpdatedMessages(string oldStr, string newStr);

    // stored permanently on the blockchain
    string public message;

    // runs at deploy time and initializes the state variable to initMessage
    constructor (string memory initMessage){
        message = initMessage;
    }

    // memory keyword tells solidity to reserve memory chuck for the variable declaration
    // otherwise solidity will use the compiled storage structure that could produce unexpected results
    // public is an access specifier
    function update(string memory newMessage) public {
        string memory oldMsg = message;
        message = newMessage;
        // emits the event
        emit UpdatedMessages(oldMsg, newMessage);
    }
}