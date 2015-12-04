import "team.sol";
import "solution.sol";

contract Problem {
    string public description;
    uint deadline; 
   
    Solution []  juniorSolutions;
    Solution []  middleSolutions;
    Solution []  seniorSolutions;

    mapping (address => address) juniorVotes;
    mapping (address => address) middleVotes;
    mapping (address => address) seniorVotes;
    
    modifier problemActive() {if (now<=deadline) _}
    
    function Problem(string _description,uint _deadline){
         description = _description;
         deadline = now + _deadline * 1 days;
    }
    

    function voteJunior(Solution  _solution) problemActive {
        address user = msg.sender;
        juniorVotes[user] = _solution;
    }

    function voteMiddle(Solution  _solution) problemActive{
        address user = msg.sender;
        middleVotes[user] = _solution;
    }

    function voteSenior(Solution  _solution) problemActive {
        address user = msg.sender;
        seniorVotes[user] = _solution;
    }


    function createJuniorSolution(string _description) problemActive {
        Solution newSolution =  new Solution(_description);
        juniorSolutions.push(newSolution);        
        
    }
    
    function createMiddleSolution(string _description) problemActive {
      Solution newSolution =  new Solution(_description);
      middleSolutions.push(newSolution);        
        
    }
    
    function createSeniorSolution(string _description) problemActive {
        Solution newSolution =  new Solution(_description);
        seniorSolutions.push(newSolution);        
        
    }
    
    function createSolution(string _description) private returns (Solution){
        Solution newSolution = new Solution(_description);
    }
    


    
}
