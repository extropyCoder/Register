import "std.sol";
import "user.sol";
import "problem.sol";


contract Register is named("Register") ,owned {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    Problem[] problems;
    
modifier userNotExists(string _userName,uint _age,string _country ) { if (users[_userName]==address(0x0)) _ }
modifier userIsCreator() {if (msg.sender==owner) _}


function createUser  (string _userName,uint _age,string _country ) userNotExists( _userName, _age, _country ) returns (address){
    User newUser = new User(_userName,_age,_country);
    return newUser;
}


function createProblem(string _description) userIsCreator returns (address){
    Problem newProblem = new Problem(_description);
    
}
    
}


