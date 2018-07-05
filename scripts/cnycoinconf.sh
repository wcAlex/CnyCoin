#!/bin/bash -ev

mkdir -p ~/.cnycoin
echo "rpcuser=username" >>~/.cnycoin/cnycoin.conf
echo "rpcpassword=`head -c 32 /dev/urandom | base64`" >>~/.cnycoin/cnycoin.conf

