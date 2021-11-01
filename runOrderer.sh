FABRIC_PATH=/home/rathon/go/testnet
echo $FABRIC_PATH

ORDERER_GENERAL_LOGLEVEL=info \
ORDERER_GENERAL_LISTENADDRESS=orderer \
ORDERER_GENERAL_GENESISMETHOD=file \
ORDERER_GENERAL_GENESISFILE=$FABRIC_PATH/crypto-config/ordererOrganizations/ordererorg/orderers/orderer.ordererorg/genesis.block \
ORDERER_GENERAL_LOCALMSPID=OrdererOrgMSP \
ORDERER_GENERAL_LOCALMSPDIR=$FABRIC_PATH/crypto-config/ordererOrganizations/ordererorg/orderers/orderer.ordererorg/msp \
ORDERER_GENERAL_TLS_ENABLED=false \
ORDERER_GENERAL_TLS_PRIVATEKEY=$FABRIC_PATH/crypto-config/ordererOrganizations/ordererorg/orderers/orderer.ordererorg/tls/server.key \
ORDERER_GENERAL_TLS_CERTIFICATE=$FABRIC_PATH/crypto-config/ordererOrganizations/ordererorg/orderers/orderer.ordererorg/tls/server.crt \
ORDERER_GENERAL_TLS_ROOTCAS=[$FABRIC_PATH/crypto-config/ordererOrganizations/ordererorg/orderers/orderer.ordererorg/tls/ca.crt,$FABRIC_PATH/crypto-config/peerOrganizations/org0/peers/peer0.org0/tls/ca.crt,$FABRIC_PATH/crypto-config/peerOrganizations/org1/peers/peer2.org1/tls/ca.crt] \
CONFIGTX_ORDERER_BATCHTIMEOUT=1s \
CONFIGTX_ORDERER_ORDERERTYPE=kafka \
CONFIGTX_ORDERER_KAFKA_BROKERS=[kafka-zookeeper:9092] \
#/home/rathon/go/src/github.com/hyperledger/fabric/.build/bin/
$FABRIC_PATH/orderer
