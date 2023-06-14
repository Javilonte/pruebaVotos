● What is Solidity and what is its primary use?
Its an oriented object programing language at high level designed for smart contracts in the ethereum platform

● What are the basic data types available in Solidity?
Signed/Unsigned integers
Booleans
Addresses 
Bytes
Enums


● Explain the difference between the "memory" and "storage" keywords in Solidity.
Memory its used for temporal usage, meanwhile storage writes the information in the blockchain.
Memory is used for functions arguments and storage are the state and local variables.

● What is a modifier in Solidity? How and why is it used?
Its an special keyword that modifies the behaviour of our functions, for example in the case we need to use a function to pay, here we use the modifier "payable" to modify the behaviour and make the function payable.

● What is an event in Solidity? How is it useful?
They are an abstraction of Ethereum logging/event protocol, they are signals that stores the arguments passed in transaction logs.