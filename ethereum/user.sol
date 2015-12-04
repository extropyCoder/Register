
contract User {
    string name;
    string salt;
    string hashPassword;
    
    function User(string _name,string _salt,string _hashPassword){
        name = _name;
        salt = _salt;
        hashPassword = _hashPassword;
        
    }
    
}


contract Child is User {


string country;
uint public age;

function Child(string _name,string _salt,string _hashPassword,uint _age,string _country){
    name = _name;
    salt = _salt;
    hashPassword = _hashPassword;
    age = _age;
    country = _country; 
}

function getAge() returns (uint){
    return age;
}


}

contract Teacher is Child {

    function Teacher(string _name,string _salt,string _hashPassword,string _country){
    name = _name;
    salt = _salt;
    hashPassword = _hashPassword;
    country = _country; 

        age = 100;  
    }



}
