help()
{
    echo "Usage: $0 [variable]"
}

if [ $# -ne 1 ]
then
    help
    exit 0
fi

FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

export CORE_PEER_LOCALMSPID="Org0MSP"
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp
export CORE_PEER_ADDRESS=peer0:7051
$FABRIC_PATH/peer chaincode query -C mychannel -n testnetCC -c "{\"Args\":[\"query\",\"$1\"]}"
