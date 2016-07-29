#!/usr/bin/env bash
set -e

cf api $CF_API

echo "Logging in....."
cf auth $CF_USER $CF_PASS

echo "Targeting org and space"
cf target -o $CF_ORG -s $CF_SPACE

cf push $CF_APP -f $CF_MANIFEST -n $CF_HOSTNAME -p $CF_PATH
