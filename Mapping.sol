pragma solidity ^0.5.0;
//los mapping no son iterables
contract Mapping {
    mapping(address => uint) public myMap;//retorna uint

    function get(address _addr) public view returns (uint) {
        //retorna uint que se especifica en el mapping y para acceder requiere un address
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        //para actualizar requiere los tipos indicados en el mapping
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

contract NestedMapping {
    mapping(address => mapping(uint => bool)) public nested;
    //este esta mas fumado, practicamente acceder a la propiedad de la propiedad
    /** */
    function get(address _addr1, uint _i) public view returns (bool) {
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nested[_addr1][_i];
    }
}