FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/msp
export CORE_PEER_ADDRESS=peer1:7051
$FABRIC_PATH/peer chaincode invoke -o orderer:7050 -C mychannel -n testnetCC -c '{"Args":["invoke","a","b","50"]}'
