contract User  {

string name;
uint score;

function User(string _name){
    name = _name;
}
}


contract Teacher is User {

    function Teacher(string _name){
      
    }

}

contract Answer{
   string description;
   
   function Answer(string _description){
       description = _description;
   }
   
    
}

contract Problem {
    string description;
    uint answerCount;
    mapping(uint => Answer) answers;
    mapping (address => uint) votes;    
    
    function Vote(uint _answerNumber){
        address user = msg.sender;
        votes[user] = _answerNumber;
    }
    
    function createAnswer(string _description){
        Answer answer = new Answer(_description);
        answerCount++;
        answers[answerCount] = answer;
    }
    
    
    function getVotesForAnswer(uint _answerNumber) returns (uint){
        for(uint ii=0;ii<answerCount;ii++){
         
        }
        
        
        
    }
    
    
}

contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    User[] members;
    
    function Team(string _teamName,string _teamMotto,Teacher _teacher){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
    }
    
    function addMembers(User [] newMembers){
            for (uint ii = 0;ii<newMembers.length;ii++){
        members.push(newMembers[ii]);
        }
    }
    
   
}

contract Register is named("Register")  {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    User teacher;

function Register(string _teacherName) {
    teacher = new User(_teacherName);
    
}



}

//Some Tests

contract Tests{
    
    function testRegister(){
    
    // create Register
    Register register = new Register("teacher");
    
        
        
    }
    
}

