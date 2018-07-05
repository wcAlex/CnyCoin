#install dependency:

apt-get install qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev \
libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
libssl-dev libdb++-dev libminiupnpc-dev libprotobuf-dev protobuf-compiler


# copy binary
scp -i ~/.ssh/tao-web-test.pem src/cnycoin-cli   ubuntu@54.149.87.103:/usr/bin
scp -i ~/.ssh/tao-web-test.pem src/cnycoin   ubuntu@54.149.87.103:/usr/bin


# copy systemd config.
scp -i ~/.ssh/tao-web-test.pem src/cnycoin contrib/systemd/cnycoind@.service ubuntu@54.149.87.103:/etc/systemd/system

# initial run
sudo systemctl enable cnycoind
sudo systemctl start cnycoind 
sudo systemctl status cnycoind 

# update binary
sudo systemctl stop cnycoind
systemctl daemon-reload
scp -i ~/.ssh/tao-web-test.pem src/cnycoin   ubuntu@54.149.87.103:/usr/bin
sudo systemctl start cnycoind 
sudo systemctl status cnycoind 

# logs & wallet
workdir=/home/ubuntu/.cnycoin
log=/home/ubuntu/.cnycoin/debug.log or /home/ubuntu/.cnycoin/testnet/debug.log
wallet=/home/ubuntu/.cnycoin/wallet.dat or /home/ubuntu/.cnycoin/testnet/wallet.dat

# config & parameters
/usr/bin/cnycoind -daemon -datadir=/home/ubuntu/.cnycoin -conf=/home/ubuntu/.cnycoin/cnycoin.conf

Sample config: contrib/debian/examples/cnycoin.conf

