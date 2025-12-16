// SPDX-License-Identifier: MIT
// pragma solidity >=0.8.18 <0.9.0; //stating our version
pragma solidity 0.8.24; //stating our version

contract SimpleStorage {
    // Basic Types: boolean, uint, int, address, bytes
    uint256 myFavoriteNumber; // 0

    uint256[] ListOfFavoriteNumbers; // [0, 78, 90]
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    //dynamic array
    Person[] public listOfPeople; // []

    //static array
    //Person[3] public listOfPeople; // []

    // chelsea -> 121
    mapping(string => uint256) public nameToFavoriteNumber;

    // Person public pat = Person(7, "Pat");
    // Person public jon = Person(7, "Jon");

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view, pure
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }

    //calldata and memory = temporary variables / storage = permament variables
    //calldata cant be modified
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        //Person memory newPerson = Person(_favoriteNumber, _name);
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
