FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=/home/rathon/go/testnet/crypto-config/peerOrganizations/org0/peers/peer1.org0/msp
export CORE_PEER_ADDRESS=peer1:7051
$FABRIC_PATH/peer chaincode list -C mychannel --installed
