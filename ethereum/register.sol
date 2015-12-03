import "std.sol";
import "user.sol";
import "problem.sol";


contract register is named("Register")  {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    problem[] problems;
    
modifier userNotExists(string _userName,uint _age,string _country ) { if (users[_userName]==address(0x0)) _ }

function createUser  (string _userName,uint _age,string _country ) userNotExists( _userName, _age, _country ) returns (address){
    user newUser = new user();
    newUser.createUserDetails(_userName,_age,_country);
    return newUser;
}

function createProblem(string _description){
    Problem problem = new Problem();
    problem.description = _description;
}
    
}



