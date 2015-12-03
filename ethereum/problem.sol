import "team.sol";
import "solution.sol";

contract problem {
    string public description;
   
    solution []  juniorSolutions;
    solution []  middleSolutions;
    solution []  seniorSolutions;

    mapping (address => address) juniorVotes;
    mapping (address => address) middleVotes;
    mapping (address => address) seniorVotes;
    
    function setDescription(string _description){
        description = _description;
    }
    
    function voteJunior(solution  _solution){
        address user = msg.sender;
        juniorVotes[user] = _solution;
    }

    function voteMiddle(solution  _solution){
        address user = msg.sender;
        middleVotes[user] = _solution;
    }

    function voteSenior(solution  _solution){
        address user = msg.sender;
        seniorVotes[user] = _solution;
    }


    function createJuniorSolution(string _description){
        solution newSolution =  createSolution(_description);

        juniorSolutions.push(newSolution);        
        
    }
    
    function createMiddleSolution(string _description){
        solution newSolution =  createSolution(_description);

        middleSolutions.push(newSolution);        
        
    }
    
    function createSeniorSolution(string _description){
        solution newSolution =  createSolution(_description);
        seniorSolutions.push(newSolution);        
        
    }
    
    function createSolution(string _description) private returns (solution){
        solution newSolution = new solution();
        newSolution.setDescription(_description);  
    }
    
    
    
    function voteForSolution(){
        
    }
        
        

    
}
