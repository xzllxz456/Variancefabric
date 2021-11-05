FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

CORE_PEER_LOCALMSPID="Org0MSP" \
#CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer0.org0/tls/ca.crt \
#CORE_PEER_TLS_ROOTCERT_FILE=/home/rathon/go/testnet/crypto-config/peerOrganizations/org0/peers/peer0.org0/msp/cacerts/ca.crt \
#CORE_PEER_TLS_ROOTCERT_FILE=/home/rathon/go/testnet/crypto-config/peerOrganizations/org0/users/Admin@org0/msp/cacerts/ca.crt \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/msp/cacerts/ca.crt \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/users/Admin@org0/msp \
CORE_PEER_ADDRESS=peer0:7051 \
/home/rathon/go/testnet/peer channel join -b mychannel.block
#--outputBlock mychannel.block  --cafile ${PWD}/crypto-config/ordererorg/orderers/orderer.ordererorg/msp/admincerts/Admin@ordererorg-cert.pem

