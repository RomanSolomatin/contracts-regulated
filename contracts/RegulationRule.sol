pragma solidity ^0.4.23;
pragma experimental ABIEncoderV2;

import "./KycProvider.sol";

/**
 * @title Represents regulation rule (law)
 */
contract RegulationRule {
    /**
     * @dev Regulated tokens should call this when new tokens are minted
     */
    function onMint(address _address, uint256 _amount, KycProvider.Investor investor);

    /**
     * @dev Regulated tokens should call this when tokens are to be transferred from investor's account
     */
    function onTransferFrom(address _address, uint256 _amount, KycProvider.Investor _investor);

    /**
     * @dev Regulated tokens should call this when tokens are to be transferred to investor's account
     */
    function onTransferTo(address _address, uint256 _amount, KycProvider.Investor _investor);



    /**
     * @dev only for tests. web3 doesn't support tuple encoding
     */
    function onMint(address _address, uint256 _amount, uint256 _jurisdiction, bytes32 _data) {
        onMint(_address, _amount, KycProvider.Investor(_jurisdiction, _data));
    }

    /**
     * @dev only for tests. web3 doesn't support tuple encoding
     */
    function onTransferFrom(address _address, uint256 _amount, uint256 _jurisdiction, bytes32 _data) {
        onTransferFrom(_address, _amount, KycProvider.Investor(_jurisdiction, _data));
    }

    /**
     * @dev only for tests. web3 doesn't support tuple encoding
     */
    function onTransferTo(address _address, uint256 _amount, uint256 _jurisdiction, bytes32 _data) {
        onTransferTo(_address, _amount, KycProvider.Investor(_jurisdiction, _data));
    }
}
