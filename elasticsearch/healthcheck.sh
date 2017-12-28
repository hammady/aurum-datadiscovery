#!/bin/bash

# exit on any error
set -e

# check cluster status, otherwise fail
curl --fail --silent http://localhost:9200/_cluster/health
echo "OK"
