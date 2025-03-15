ln -s $PWD/bitcoin-28.0/bin/* /usr/local/bin/
mkdir -p ~/.bitcoin

cat <<EOF > ~/.bitcoin/bitcoin.conf
[regtest]
regtest=1
rpcuser=user
rpcpassword=password
rpcport=8332
rpcallowip=127.0.0.1
server=1
EOF

echo $(bitcoin-cli --version)
