 contract User  {

string name;
string country;
uint age;

function User(string _name,uint _age){
    name = _name;
    age = _age;
}

function getAge() returns (uint){
    return age;
}


}


contract Teacher is User {

    function Teacher(string _name){
      
    }

}

contract Solution{
   string description;
 
    
   function Solution(string _description){
       description = _description;
   }
   
    
}


 


contract Problem {
    string description;
    uint solutionCount;

    Solution []  juniorSolutions;
    Solution []  middleSolutions;
    Solution []  highSolutions;

    mapping (address => uint) votes;    
    
    function voteJunior(uint _answerNumber){
        address user = msg.sender;
        votes[user] = _answerNumber;
    }

   function voteMiddle(uint _answerNumber){
        address user = msg.sender;
        votes[user] = _answerNumber;
    }

   function voteSenior(uint _answerNumber){
        address user = msg.sender;
        votes[user] = _answerNumber;
    }
    

    // function createSolution(string _description){
    //     Answer answer = new Answer(_description);
    //     answerCount++;
    //     answers[answerCount] = answer;
    // }
    
    
    // function getVotesForAnswer(uint _answerNumber) returns (uint){
    //     for(uint ii=0;ii<answerCount;ii++){
         
    //     }
        
        
        
    // }
    
    
}

contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    User[] members;
    
    enum Category{junior,middle,high}
    uint minAge;
    uint maxAge;
    
    
    function Team(string _teamName,string _teamMotto,Teacher _teacher){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
    }
    
    function addMembers(User [] newMembers){
            for (uint ii = 0;ii<newMembers.length;ii++){
            if ((newMembers[ii].getAge() >= minAge) && (newMembers[ii].getAge() <= maxAge)){
        members.push(newMembers[ii]);
        
            }
            }
    }
    
   
}

contract Register is named("Register")  {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    User teacher;

function Register(string _teacherName) {
    teacher = new User(_teacherName,100);
    
}



}

//Some Tests

contract Tests{
    
    function testRegister(){
    
    // create Register
    Register register = new Register("teacher");
    
        
        
    }
    
}

