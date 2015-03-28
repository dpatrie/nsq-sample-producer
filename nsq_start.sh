#!/bin/bash
mkdir -p logs/
cd bin
./nsqlookupd >> ../logs/nsqlookupd.log 2>&1 &
./nsqd --lookupd-tcp-address=127.0.0.1:4160 >> ../logs/nsqd.log 2>&1 &
./nsqadmin --lookupd-http-address=127.0.0.1:4161 >> ../logs/nsqadmin.log 2>&1 &

echo "NSQAdmin available at http://localhost:4171/"
echo ""
