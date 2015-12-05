
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
