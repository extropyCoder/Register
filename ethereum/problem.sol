import "team.sol";
contract Solution{
   string name;
   Team team;

    function Solution(string _name,Team _team){
           name = _name; 
           team = _team;

}
}

contract Problem {
    string public description;
    uint deadline; 
   
    uint public juniorSolutionCount;
    
   
    Solution []  juniorSolutions;
    Solution []  middleSolutions;
    Solution []  seniorSolutions;

    mapping (address => address) juniorVotes;
    mapping (address => address) middleVotes;
    mapping (address => address) seniorVotes;
    
    modifier problemActive() {if (now<=deadline) _}
    
    function Problem(string _description,uint _deadline){
         description = _description;
         deadline = _deadline;
    }
    

    function voteJunior(Solution  _solution)  {
        address user = msg.sender;
        juniorVotes[user] = _solution;
    }

    function voteMiddle(Solution  _solution) {
        address user = msg.sender;
        middleVotes[user] = _solution;
    }

    function voteSenior(Solution  _solution)  {
        address user = msg.sender;
        seniorVotes[user] = _solution;
    }


    function createJuniorSolution(string _description,Team _team)  {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution); 
        juniorSolutionCount++;
        
    }
        function createMiddleSolution(string _description,Team _team)  {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution);        
        
    }
        function createSeniorSolution(string _description,Team _team)  {
        Solution newSolution =  new Solution(_description,_team);
        juniorSolutions.push(newSolution);        
        
    }

    function createSolution(string _description,Team _team) private returns (Solution){
        Solution newSolution = new Solution(_description,_team);
    }
    
 
 
   function getJuniorSolution(uint _number) returns (address){
    return juniorSolutions[_number];
    
}
   
   
    
}
