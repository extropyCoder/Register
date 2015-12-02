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

contract register is named("Register")  {
    mapping(string=>address) users;
    mapping(address => uint) teams;
    Problem[] problems;
    
modifier userNotExists(string _userName,uint _age,string _country ) { if (users[_userName]==address(0x0)) _ }

function createUser  (string _userName,uint _age,string _country ) userNotExists( _userName, _age, _country ) returns (address){
    user newUser = new user();
    newUser.createUserDetails(_userName,_age,_country);
    
  return newUser;
}

}


