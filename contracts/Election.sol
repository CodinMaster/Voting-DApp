pragma solidity 0.5.8;

contract Election {

  //model a candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  //store candidates
  //key is id here
  mapping(uint => Candidate) public candidates; //fetch candidates. public: auto getter function

  //store candidates count
  uint public candidatesCount;

  constructor () public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate (string memory _name) private {
    candidatesCount++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}