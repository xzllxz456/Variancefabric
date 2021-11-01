FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

CORE_PEER_ENDORSER_ENABLED=true \
CORE_PEER_ADDRESS=peer1:7051 \
CORE_PEER_CHAINCODELISTENADDRESS=peer1:7052 \
CORE_PEER_ID=org0-peer1 \
CORE_PEER_LOCALMSPID=Org0MSP \
CORE_PEER_GOSSIP_EXTERNALENDPOINT=peer1:7051 \
CORE_PEER_GOSSIP_USELEADERELECTION=true \
CORE_PEER_GOSSIP_ORGLEADER=false \
CORE_PEER_TLS_ENABLED=false \
CORE_PEER_TLS_KEY_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/tls/server.key \
CORE_PEER_TLS_CERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/tls/server.crt \
CORE_PEER_TLS_ROOTCERT_FILE=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/tls/ca.crt \
CORE_PEER_TLS_SERVERHOSTOVERRIDE=peer1 \
CORE_PEER_MSPCONFIGPATH=$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer1.org0/msp \
$FABRIC_PATH/peer node start
