import "team.sol";
import "solution.sol";

contract Problem {
    string public description;
   
    Solution []  juniorSolutions;
    Solution []  middleSolutions;
    Solution []  seniorSolutions;

    mapping (address => address) juniorVotes;
    mapping (address => address) middleVotes;
    mapping (address => address) seniorVotes;
    
    function Problem(string _description){
         description = _description;
    }
    

    function voteJunior(Solution  _solution){
        address user = msg.sender;
        juniorVotes[user] = _solution;
    }

    function voteMiddle(Solution  _solution){
        address user = msg.sender;
        middleVotes[user] = _solution;
    }

    function voteSenior(Solution  _solution){
        address user = msg.sender;
        seniorVotes[user] = _solution;
    }


    function createJuniorSolution(string _description){
        Solution newSolution =  new Solution(_description);
        juniorSolutions.push(newSolution);        
        
    }
    
    function createMiddleSolution(string _description){
      Solution newSolution =  new Solution(_description);
      middleSolutions.push(newSolution);        
        
    }
    
    function createSeniorSolution(string _description){
        Solution newSolution =  new Solution(_description);
        seniorSolutions.push(newSolution);        
        
    }
    
    function createSolution(string _description) private returns (Solution){
        Solution newSolution = new Solution(_description);
    }
    
    
    
    function voteForSolution(){
        
    }
        
        

    
}
