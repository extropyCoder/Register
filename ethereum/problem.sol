contract problem {
    string public description;
    uint solutionCount;

    solution []  juniorSolutions;
    solution []  middleSolutions;
    solution []  highSolutions;

    mapping (address => uint) votes;    
    
    function setDescription(string _description){
        description = _description;
    }
    
    function voteJunior(uint _answerNumber){
        address user = msg.sender;
        votes[user] = _answerNumber;
    }

   function voteMiddle(uint _answerNumber){
        address user = ms.sender;
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
