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
export CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/msp
export CORE_PEER_ADDRESS=peer1:7051
peer chaincode query -C mychannel -n testnetCC -c "{\"Args\":[\"query\",\"$1\"]}"
