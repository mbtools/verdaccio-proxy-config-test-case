#!/bin/bash

TEST_CASE_PROXY=$1
DEBUG=verdaccio:*

# Boot the server in a background process.
nohup npx verdaccio@latest --config ./config.yml --listen $TEST_CASE_PROXY &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

cat proxy.log
