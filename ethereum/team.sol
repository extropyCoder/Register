import "user.sol";
contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    User[] members;
    
    enum Category {junior,middle,senior}
    uint16 minAge;
    uint16 maxAge;

    
    
    function createTeam(string _teamName,string _teamMotto,User _teacher,Category _category){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
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
