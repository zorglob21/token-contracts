pragma solidity ^0.8.0;

import "./IERC20.sol";
import  "./Ownable.sol";

contract rescueContractBalances {

function rescueToken(address tokenAddr, address destinationAddr) external onlyOwner{

//require(_msgSender() == admin);

IERC20 tokenContract = IERC20(tokenAddr);

uint256 fullBalance = tokenContract.balanceOf(address(this));

tokenContract.transfer(destinationAddr,fullBalance);

}


function rescueEth(uint256 amountWei, address destinationAddr) external onlyOwner{

//require(_msgSender() == admin);

payable(destinationAddr).transfer(amountWei);

}

}