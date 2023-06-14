// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

    contract VotingSystem {

        struct Candidate {
            uint256 voteCount;
            bool exists;
        }

        mapping(address => bool) public hasVoted;
        mapping(string => Candidate) public candidates;

        function addCandidate(string memory name) external {
            require(!candidates[name].exists, "Candidate already exists");

            candidates[name] = Candidate(0, true);
        }
        function vote(string memory candidateName) external {
            require(candidates[candidateName].exists, "Candidate doesn't exists");
            require(!hasVoted[msg.sender], "Already voted");

            candidates[candidateName].voteCount++;
            hasVoted[msg.sender]=true;
        }
        function getVotes(string memory candidateName) external view returns(uint256){
            require(candidates[candidateName].exists, "Candidate dosesn't exist");
            return candidates[candidateName].voteCount;
        }
    }