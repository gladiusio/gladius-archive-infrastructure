pragma solidity ^0.4.0;


contract ClientDB {
    struct Pool {
        address poolAddress;
        bool isPool;
    }

    mapping (address => Pool) clientToPool;

    // Sets the senders pool to "poolAddress"
    function setClientPool(address poolAddress) public {
        clientToPool[msg.sender] = (Pool({poolAddress : poolAddress, isPool : true})
        );
    }

    // Gets the pool associated with the client
    function getClientPool(address client) public constant returns (address){
        if (clientToPool[client].isPool)
            return clientToPool[client].poolAddress;
        else
            return address(0);
    }
}