# nsq-sample-producer
Sample producer for proof of concept

## Prerequisite
Having the [aws-cli tool](http://aws.amazon.com/cli/) installed and configured with the ADX creds.
On Ubuntu:
sudo apt-get install aws-cli
aws configure

## Steps

- Download some sample data. Use this to download yesterday's impressions logs.
    ./download_sample_data.sh
- Setup NSQ
    ./nsq_setup.sh
- Start NSQ
    ./nsq_start.sh
- Send the sample data on NSQ
    ./send_sample_data_to_nsq.sh
- Optionally consume the data
    ./consumer.sh
- Stop NSQ
    ./nsq_stop.sh

You'll be able to access NSQAdmin on http://localhost:4171.
