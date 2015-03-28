#!/bin/bash
echo "Publishing on 'sample-producer' topic"
for file in data/*.bz2
do
    echo "Sending $file..."
    echo ""
    bzcat $file | bin/to_nsq -nsqd-tcp-address=127.0.0.1:4150 -topic=sample-producer
    echo ""
done
