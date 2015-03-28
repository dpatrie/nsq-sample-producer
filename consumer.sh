#!/bin/bash
mkdir -p consumed/
bin/nsq_to_file -topic="sample-producer" -lookupd-http-address="http://localhost:4161" -output-dir="consumed/"
