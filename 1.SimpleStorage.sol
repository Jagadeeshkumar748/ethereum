// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;

contract SimpleStorage{
    uint256  favoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;
    
    mapping(string=>uint256) public nameToFavoriteNumber;

    // People public person = People({favoriteNumber:1,name:"krishna"});

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrive() public view returns(uint256){
        return favoriteNumber;
    }

    function getSum(uint number1, uint number2) public pure returns(uint) {
    uint sum = number1 + number2;
    return sum;
    }

    function addPerson(uint256 _favoriteNumber,string memory _name) public{
        // People memory person = People({favoriteNumber:_favoriteNumber,name:_name});
        //people.push(person);
        
        people.push(People(_favoriteNumber,_name));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }
}
