#!/usr/bin/env bash

./node_modules/s3rver/bin/s3rver.js --hostname 0.0.0.0 --port 8000 --directory /data

# For > 3.0.0
# ./node_modules/s3rver/bin/s3rver.js --address 0.0.0.0 --port 8000 --directory /data

# # Wait for startup
# sleep 2

# # Block the process as long as the service is alive
# wait
