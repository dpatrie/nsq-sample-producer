#!/bin/bash
echo "Setting up NSQ..."
echo ""
rm -fr bin/
wget 'https://s3.amazonaws.com/bitly-downloads/nsq/nsq-0.3.2.linux-amd64.go1.4.1.tar.gz'
tar --strip-components=1 -xvf nsq-0.3.2.linux-amd64.go1.4.1.tar.gz nsq-0.3.2.linux-amd64.go1.4.1/bin/
rm -f nsq-*.tar.gz
