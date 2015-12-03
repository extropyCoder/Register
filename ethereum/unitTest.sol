import "register.sol";
contract UnitTest{
    function test1() returns (bool){
        address register = new Register();
        if(register==0x0){return false;}
        else {return true;}
    }
}