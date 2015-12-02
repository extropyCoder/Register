import "std.sol";
import "user.sol";


contract Solution{
   string description;
 
    
   function createSolution(string _description){
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

contract Register is named("Register")  {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    user teacher;

function createRegister(string _teacherName) {
    Teacher teacher = new Teacher();
    teacher.createTeacher(_teacherName);
    
}



}

//Some Tests

contract Tests{
    
    function testRegister(){
        
        
    }
    
}

