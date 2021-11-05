FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp
export CORE_PEER_ADDRESS=peer0:7051
$FABRIC_PATH/peer chaincode instantiate -o orderer:7050 -C mychannel -n testnetCC -v 1.0 -c '{"Args":["init","a","200", "b", "300"]}' -P "OR ('Org0MSP.member', 'Org1MSP.member')"
