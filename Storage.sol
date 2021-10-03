pragma solidity ^0.5.0;

contract DataLocations{
    uint[] public arr;
    mapping(uint => address) map;
    struct MyStruct {
        uint foo;
    }
    mapping(uint => MyStruct) myStructs;

    function f() public view {

        _f(arr, map, myStructs[1]);
        MyStruct storage myStruct = myStructs[1];

        MyStruct memory myMemStruct = MyStruct(0);
    }

    function _f(
        uint[] storage _arr,
        mapping(uint => address) storage _map,
        MyStruct storage _myStruct
    ) internal pure {
        
    }

    function g(uint[] memory _arr) public pure returns (uint[] memory) {

    }

    function h(uint[] calldata _arr) pure external {
        
    }
}

