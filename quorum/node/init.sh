#!/bin/bash


echo "Copying Constellation keys /data"
echo ${CONSTELLATION_PUB} > /data/constellation.pub
echo ${CONSTELLATION_KEY} > /data/constellation.key

echo "init genesis.json"
/usr/local/bin/geth --datadir $HOME/.ethereum init $HOME/.ethereum/geth/genesis.json

echo "Copying public nodekey to geth path"
echo ${NODEKEY} > $HOME/.ethereum/geth/nodekey

export QUORUM_IP=$(hostname -I | xargs)
echo $QUORUM_IP $BOOTNODE_IP
chmod +x /data/start_geth.sh
/usr/bin/supervisord -c /etc/supervisor/supervisord.conf -n