#!/bin/bash

TEST_CASE_PROXY=$1
DEBUG=verdaccio:*

rm proxy.log

# Boot the server in a background process.
# nohup npx verdaccio@latest --config ./config.yml --listen $TEST_CASE_PROXY &
nohup npx verdaccio@next-7 --config ./config.yml --listen $TEST_CASE_PROXY &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

echo ### LOG ###

cat proxy.log

echo ### STORAGE ###

tree /home/runner/work/verdaccio-proxy-config-test-case/verdaccio-proxy-config-test-case/proxy/storage/ >storage.log

cat storage.log
