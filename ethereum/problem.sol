contract User {
    string name;
    string salt;
    string hashPassword;
    string country;
    uint  age;
    
    
    function User(string _name,string _salt,string _hashPassword,string _country,uint16 _age){
        name = _name;
        salt = _salt;
        hashPassword = _hashPassword;
        country = _country;
        age = _age;
    }
    
    function checkAge(uint16 _max,uint16 _min) returns (bool){
        if ((age >=_min) && (age <=_max)){
            return true;
            
        }
        else{
            return false;
        }
    }
    
    
}

contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    User[] members;
    
    enum Category {junior,middle,senior}
    Category category;
    uint16 minAge;
    uint16 maxAge;

    
    
    function createTeam(string _teamName,string _teamMotto,User _teacher,Category _category){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
        category = _category;
    }
   
    function createJuniorTeam(string _teamName,string _teamMotto,User _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.junior);
        minAge = 7;
        maxAge = 10; 
    }
    
    function createMiddleTeam(string _teamName,string _teamMotto,User _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.middle);
        minAge = 11;
        maxAge = 14; 

    }

    function createSeniorTeam(string _teamName,string _teamMotto,User _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.senior);
        minAge = 15;
        maxAge = 18; 
    }

    
    function addMembers(User [] newMembers){
            for (uint ii = 0;ii<newMembers.length;ii++){
                if(newMembers[ii].checkAge(minAge,maxAge)==true){
                 members.push(newMembers[ii]);
                }
            }
    }
    
   
}






contract Solution{
   string public name;
   Team public team;

    function Solution(string _name,Team _team){
           name = _name; 
           team = _team;

}
}

contract Problem {
    string public description;
    uint deadline; 
   
    uint public juniorSolutionCount;
    uint public middleSolutionCount;
    uint public seniorSolutionCount;
    
   
    Solution []  juniorSolutions;
    Solution []  middleSolutions;
    Solution []  seniorSolutions;

    mapping (address => address) juniorVotes;
    mapping (address => address) middleVotes;
    mapping (address => address) seniorVotes;
    
    mapping(address => uint) public solutionVotes;
    
    
    modifier problemActive() {if (now<=deadline) _}
    
    function Problem(string _description,uint _deadline){
         description = _description;
         deadline = _deadline;
    }
    

    function voteJunior(Solution  _solution,User _user)  {
        address oldVote = juniorVotes[ _user];
        solutionVotes[oldVote] --;
        juniorVotes[_user] = _solution;
        solutionVotes[_solution]++; 
    }

    function voteMiddle(Solution  _solution,User _user) {
        address oldVote = middleVotes[ _user];
        solutionVotes[oldVote] --;
        middleVotes[_user] = _solution;
        solutionVotes[_solution]++; 
    }

    function voteSenior(Solution  _solution,User _user)  {
        address oldVote = seniorVotes[ _user];
        solutionVotes[oldVote] --;
        seniorVotes[_user] = _solution;
        solutionVotes[_solution]++; 
    }


    function createJuniorSolution(string _description,Team _team) returns (address) {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution); 
        juniorSolutionCount++;
        solutionVotes[newSolution] = 0;
        return newSolution;
        
    }
        function createMiddleSolution(string _description,Team _team) returns (address) {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution);     
        middleSolutionCount++;
        solutionVotes[newSolution] = 0;
        return newSolution;
        
    }
        function createSeniorSolution(string _description,Team _team) returns (address) {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution);
        seniorSolutionCount++;
        solutionVotes[newSolution] = 0;
        return newSolution;
        
    }

    // function createSolution(string _description,Team _team) private returns (Solution){
    //     Solution newSolution = new Solution(_description,_team);
    // }
    
 
 
   function getJuniorSolution(uint _number) returns (address){
    return juniorSolutions[_number];
    
}
 
    function getMiddleSolution(uint _number) returns (address){
    return middleSolutions[_number];
    
}
   function getSeniorSolution(uint _number) returns (address){
    return seniorSolutions[_number];
    
}
   
   function getVotesForSolution(address _solution) returns (uint){
       return solutionVotes[_solution];
   }
    
}
