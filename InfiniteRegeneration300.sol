pragma solidity ^0.8.0;

contract InfiniteRegeneration300 {
    uint256 public cycle;
    uint256 public constant MAX_CYCLE = 300;

    event CycleAdvanced(uint256 indexed newCycle);

    function advanceCycle() external {
        cycle += 1;

        if (cycle > MAX_CYCLE) {
            cycle = 0;
        }

        emit CycleAdvanced(cycle);
    }
}
