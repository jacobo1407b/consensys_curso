pragma solidity ^0.5.0;

//tipos de variables en solidity

contract Primitives {
    bool public boo = true;
    uint8 public u8 = 1;
    uint public u256 = 456;
    uint public u = 123;


    int8 public i8 = -1;
    int public i256 = 456;
    int public i = -123; 

    address public addr = 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c;


    bool public defaultBoo; // false
    uint public defaultUint; // 0
    int public defaultInt; // 0
    address public defaultAddr; // 0x0000000000000000000000000000000000000000
}
