import "std.sol";
import "user.sol";
import "problem.sol";


contract Register is named("Register") ,owned {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    Problem[] problems;
    
modifier userNotExists(string _userName ) { if (users[_userName]==address(0x0)) _ }
modifier userIsCreator() {if (msg.sender==owner) _}


function createUser  (string _name,string _salt,string _hashPassword,string _country,uint16 _age ) userNotExists( _name) returns (address){
    User newUser = new User(  _name, _salt, _hashPassword, _country, _age);
    return newUser;
}


function createProblem(string _description,uint _deadline) userIsCreator returns (address){
    Problem newProblem = new Problem(_description,_deadline);
    
}
    
}

