import "std.sol";

contract User  {

string name;
string country;
uint age;

function User(string _name,uint _age,string _country){
    name = _name;
    age = _age;
    country = _country; 
}

function getAge() returns (uint){
    return age;
}


}

contract Teacher is User {

    function createTeacher(string _name){
        name = _name;
        age = 100;
      
    }

}
