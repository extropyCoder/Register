import "std.sol";
import "problem.sol";


contract Register is named("Register") ,owned {
 //   mapping(string=>address) users;
 //   mapping(address => uint) teams;
    Problem[] public problems;
    User [] public users;
    Team [] public teams;
    
    
//modifier userNotExists(string _userName ) { if (users[_userName]==address(0x0)) _ }
modifier userIsCreator() {if (msg.sender==owner) _}


// function createUser  (string _name,string _salt,string _hashPassword,string _country,uint16 _age ) userNotExists( _name) returns (address){
//     User newUser = new User(  _name, _salt, _hashPassword, _country, _age);
//     users.push(newUser);
//     return newUser;
// }



function createUser  (string _name,string _salt,string _hashPassword,string _country,uint16 _age ) returns (address){
    User newUser = new User(  _name, _salt, _hashPassword, _country, _age);
    users.push(newUser);
    return newUser;
}


function createJuniorTeam(string _teamName,string _teamMotto,User _teacher){
    Team team = new Team();
    team.createJuniorTeam( _teamName, _teamMotto, _teacher);
    teams.push(team);
}

function createMiddleTeam(string _teamName,string _teamMotto,User _teacher){
    Team team = new Team();
    team.createMiddleTeam( _teamName, _teamMotto, _teacher);
    teams.push(team);
}
function createSeniorTeam(string _teamName,string _teamMotto,User _teacher){
    Team team = new Team();
    team.createSeniorTeam( _teamName, _teamMotto, _teacher);
    teams.push(team);
}



function createProblem(string _description,uint _deadline)  returns (address){
    Problem newProblem = new Problem(_description,_deadline);
    problems.push(newProblem);
    
}
  
//   function createSolution(string _name,Team _team)  returns (address){
//     Solution newSolution = new Solution(_name,_team);
   
    
// }
      
    
    
    
}
