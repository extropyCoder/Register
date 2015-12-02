import "std.sol";

contract user  {

string name;
string country;
uint age;

function createUserDetails(string _name,uint _age){
    name = _name;
    age = _age;
}

function getAge() returns (uint){
    return age;
}


}


contract Teacher is user {

    function createTeacher(string _name){
        name = _name;
        age = 100;
      
    }

}
