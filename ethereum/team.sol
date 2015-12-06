contract User {
    string name;
    string salt;
    string hashPassword;
    string country;
    uint  age;
    
    
    function User(string _name,string _salt,string _hashPassword,string _country,uint16 _age){
        name = _name;
        salt = _salt;
        hashPassword = _hashPassword;
        country = _country;
        age = _age;
    }
    
    function checkAge(uint16 _max,uint16 _min) returns (bool){
        if ((age >=_min) && (age <=_max)){
            return true;
            
        }
        else{
            return false;
        }
    }
    
    
}

contract Team {
    string teamName;
    string teamMotto;
    uint teamScore;
    User[] members;
    
    enum Category {junior,middle,senior}
    Category category;
    uint16 minAge;
    uint16 maxAge;

    
    
    function createTeam(string _teamName,string _teamMotto,User _teacher,Category _category){
        teamName = _teamName;
        teamMotto = _teamMotto;
        members.push(_teacher);
        category = _category;
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

