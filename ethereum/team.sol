import "user.sol";
contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    Child[] members;
    
    enum Category {junior,middle,senior}
    uint minAge;
    uint maxAge;

    
    
    function createTeam(string _teamName,string _teamMotto,Teacher _teacher,Category _category){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
    }
   
    function createJuniorTeam(string _teamName,string _teamMotto,Teacher _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.junior);
        minAge = 7;
        maxAge = 10; 
    }
    
    function createMiddleTeam(string _teamName,string _teamMotto,Teacher _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.middle);
        minAge = 11;
        maxAge = 14; 

    }

    function createSeniorTeam(string _teamName,string _teamMotto,Teacher _teacher){
        createTeam( _teamName, _teamMotto, _teacher,Category.senior);
        minAge = 15;
        maxAge = 18; 
    }

    
    function addMembers(Child [] newMembers){
            for (uint ii = 0;ii<newMembers.length;ii++){
            if ((newMembers[ii].getAge() >= minAge) && (newMembers[ii].getAge() <= maxAge)){
                members.push(newMembers[ii]);
                }
            }
    }
    
   
}
