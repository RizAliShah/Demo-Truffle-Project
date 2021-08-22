// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract First {
  
  int internal age = 30;
  int public age_1 = 40;
  int private age_2 = 50;
  int public constant AGE_3 = 60;
  
  function getAge() public view returns(int){
      return age;
  }

  function getAge_1() public view returns(int){
      return age_1;
  }
  
  function getAge_2() public view returns(int){
      return age_2;
  }

  function getAGE_3() public view returns(int){
      return AGE_3;
  }
}
