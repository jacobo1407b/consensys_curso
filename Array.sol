pragma solidity ^0.5.0;
//los arreglos pueden ser estaticos o dinamicos
contract Array {
    uint[] public arr;//dinamico
    uint[] public arr2 = [1, 2, 3];
    uint[10] public myFixedSizeArr;//static con 10

    function get(uint i) public view returns (uint) {
        //funcion para obtener un valor especifico en una posicion dada
        return arr[i];
    }
    function getArr() public view returns (uint[] memory) {
        //obtener arreglo competo
        return arr;
    }
    /**al igual que en JS la API de los array igual esta disponible en solidity */
    function push(uint i) public {
        //agregar al principio
        arr.push(i);
    }

    function pop() public {
        //eliminar el ultimo
        arr.pop();
    }

    function getLength() public view returns (uint) {
        //obtener longitud de un arreglo
        return arr.length;
    }

    function remove(uint index) public {
        //eliminar en una posicion dada
        delete arr[index];
    }
}

contract CompactArray {
    uint[] public arr;
    function remove(uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }

    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);
        // [1, 2, 3, 4]

        remove(1);
        // [1, 4, 3]

        remove(2);
        // [1, 4]
    }
}
