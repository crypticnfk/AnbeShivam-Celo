// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

import "./AnbeShivamNFT.sol";
import "./AnbeShivamInvestorToken.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AnbeShivamMain is Ownable {
    address GODSContract;
    address NFTContract;

    uint public totalVotes;

    struct Content {
        uint id;
        uint receivedFunds;
        uint matchedFunds;
        uint votes;
        string name;
        string fileURL;
        address payable creator;
    }

    Content[] public contents;

    event newContentAdded(uint, string, string);
    event viewedContent(Content, address);
    event projectFunded(uint, uint, address);

    function setContractAddresses(
        address _GODSContract, 
        address _NFTContract
    ) 
        external 
        onlyOwner 
    {
        GODSContract = _GODSContract;
        NFTContract = _NFTContract;
    }

    function returnContentCount() external view returns (uint) {
        return contents.length;
    } 

    function addContent(string memory _name, string memory _fileURL) external payable {
        require(msg.value >= 2 ether, "Insufficient amount");
        contents.push(Content(contents.length, 0, 0, 0, _name, _fileURL, payable(msg.sender)));
        emit newContentAdded(
            contents.length - 1,
            contents[contents.length - 1].name,
            contents[contents.length - 1].fileURL
        );
    }

    function investFunds(uint _contentID, string memory _metadata) external payable {
        require(msg.value >= 1 ether, "Invalid amount");
        require(msg.sender != contents[_contentID].creator, "Creator cannot vote");
        contents[_contentID].receivedFunds += msg.value;
        contents[_contentID].votes += 1;
        totalVotes += 1;
        AnbeShivamInvestorToken(GODSContract).mint(msg.sender, msg.value);
        AnbeShivamNFT(NFTContract).safeMint(msg.sender, _metadata);
        emit projectFunded(_contentID, msg.value, msg.sender);
    }

    function withdrawFunds(uint _contentID) external {
        require(msg.sender == contents[_contentID].creator, "Not creator");
        uint totalFunds = contents[_contentID].receivedFunds + contents[_contentID].matchedFunds + 2 ether;
        contents[_contentID].receivedFunds = 0;
        contents[_contentID].matchedFunds = 0;
        contents[_contentID].creator.transfer(totalFunds);
    }
}