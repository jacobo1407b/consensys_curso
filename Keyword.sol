pragma solidity >=0.5.0 <=0.8.0;

contract ExampleContract {
    event LogReturnValue(address indexed _from, int256 _value);

    function foo(int256 _value) public returns (int256) {
        emit LogReturnValue(msg.sender, _value);
        return _value;
    }
}
