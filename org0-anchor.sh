FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH
export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp
export CORE_PEER_ADDRESS=peer0:7051
$FABRIC_PATH/peer channel create -o orderer:7050 -c mychannel -f Org0MSPanchors.tx
