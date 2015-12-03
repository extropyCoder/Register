import "register.sol";
contract UnitTest{
    
    Register register;
    
    
    function UnitTest(){
        register = new Register();
    }
    
    function test1() returns (bool){

    }

    function test2() returns(bool){

        address user = register.createUser( "Dr Evil", 21, "BE");
        if(user==0x0){return false;}
    }
    
    
      function test3() returns(bool){

        address problem  = register.createProblem("Global Warming");
        if(problem==0x0){return false;}
    }
      
}