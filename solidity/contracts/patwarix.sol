pragma solidity ^0.4.17;

contract Property{

    //Propety Characteristics

        string public pType;
        string public pAddress;
        string public pCity;
        string public pSizeInSquareFeet;
        string public pLongitude;
        string public pLatitude;
        
        string pName; //optional used for named Propeties i.e. buildings, malls
        
        // string pKhewatNumber;
        // string pKhatoniNumber;
        // string pKhasraNumber;
        // string pGroupNumber;
        // string pMinAndSalam;
        // string pMortgage;
        // string pMortgageAwaal;
        // string pMortgageDoaym;
        // string pMortgageSoyam;
        // string pTypeOfHolding;
        // string pPatti;
        // string pChakTashkish;
        // string pConversionFactor;
        // string pRevenueUnit;
        // string pPercentageCollectionOfLandRevenue;
        // string pProffesionalAreaofVillage;
        // string pAlamat;
        // string pTotalShares;
        // string pLagan;
        // string pMazrua;

    //adresses of owners and creatorAuthority

    address public authority;
    address public owner;

    //used for temporary signatures during the transfer process
    //acting as an escrow

    address public seller;
    address public buyer;
    address public verificationAuthority;

    //Data Trails of Accounts

    address[] public chainOfOwners;
    //time public timestamp[];


    //manual documentation/files

//............................................FUNCTIONS.............................................................//
    
    //constructor creating the specific Property
    
    function Property(string _ptype, string _pAddress, string _pCity, string _pSizeInSquareFeet, string _pLatitude, string _pLongitude) public{
        
        authority= msg.sender;
        
        pType= _ptype;
        pAddress= _pAddress;
        pCity= _pCity;
        pSizeInSquareFeet= _pSizeInSquareFeet;
        pLatitude= _pLatitude;
        pLongitude= _pLongitude;
        
    }
    
    //Function to transfer the property first time to a person or company i.e. Allotment where sole power is to authority
    
    function InitialAllotment(address firstOwner) public {
        require(msg.sender==authority);
        require(owner==0); 
        
        owner= firstOwner;
    }
    
    
    
    
}