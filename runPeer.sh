FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

CORE_PEER_ENDORSER_ENABLED=true \
CORE_PEER_ADDRESS=peer2:7051 \
CORE_PEER_CHAINCODELISTENADDRESS=peer2:7052 \
CORE_PEER_ID=org1-peer2 \
CORE_PEER_LOCALMSPID=Org1MSP \
CORE_PEER_GOSSIP_EXTERNALENDPOINT=peer2:7051 \
CORE_PEER_GOSSIP_USELEADERELECTION=true \
CORE_PEER_GOSSIP_ORGLEADER=false \
CORE_PEER_TLS_ENABLED=false \
CORE_PEER_TLS_KEY_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/tls/server.key \
CORE_PEER_TLS_CERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/tls/server.crt \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/tls/ca.crt \
CORE_PEER_TLS_SERVERHOSTOVERRIDE=peer2 \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/msp \
$FABRIC_PATH/peer node start
