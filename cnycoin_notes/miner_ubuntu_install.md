#install dependency:

apt-get install qt4-qmake libqt4-dev build-essential libboost-dev libboost-system-dev \
libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev \
libssl-dev libdb++-dev libminiupnpc-dev libprotobuf-dev protobuf-compiler


# copy binary
scp -i ~/.ssh/tao-web-test.pem src/peercoin-cli   ubuntu@54.149.87.103:/usr/bin
scp -i ~/.ssh/tao-web-test.pem src/peercoin   ubuntu@54.149.87.103:/usr/bin


# copy systemd config.
scp -i ~/.ssh/tao-web-test.pem src/peercoin contrib/systemd/peercoind@.service ubuntu@54.149.87.103:/etc/systemd/system

# initial run
sudo systemctl enable peercoind
sudo systemctl start peercoind 
sudo systemctl status peercoind 

# update binary
sudo systemctl stop peercoind
systemctl daemon-reload
scp -i ~/.ssh/tao-web-test.pem src/peercoin   ubuntu@54.149.87.103:/usr/bin
sudo systemctl start peercoind 
sudo systemctl status peercoind 

# logs & wallet
workdir=/home/ubuntu/.peercoin
log=/home/ubuntu/.peercoin/debug.log or /home/ubuntu/.peercoin/testnet/debug.log
wallet=/home/ubuntu/.peercoin/wallet.dat or /home/ubuntu/.peercoin/testnet/wallet.dat

# config & parameters
/usr/bin/peercoind -daemon -datadir=/home/ubuntu/.peercoin -conf=/home/ubuntu/.peercoin/peercoin.conf

Sample config: contrib/debian/examples/peercoin.conf

