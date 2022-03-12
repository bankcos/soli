pragma solidity = 0.7.4;  //编译器要求
contract BankTest {  
      address public owner;    //合约创建者

      constructor(){
          owner = msg.sender;
      }

      function assign(uint x, uint y) public returns (uint){
        uint result = x + y;
      
        return result;
      }
      
      




      
      
}