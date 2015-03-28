#!/bin/bash
YESTERDAY=`date +%Y_%m_%d -d "yesterday"`
mkdir -p data
aws s3 sync s3://adxctr/logs/$YESTERDAY/impressions/ data/
