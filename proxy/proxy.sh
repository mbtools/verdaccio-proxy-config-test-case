#!/bin/bash

TEST_CASE_PROXY=$1
VERSION=$2

rm *.log

# Boot the server in a background process.
nohup env DEBUG="express:*,verdaccio:*" npx verdaccio@$VERSION --config ./config.yml --listen $TEST_CASE_PROXY >out.log 2>debug.log &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

cat proxy.log

curl -s -o debug.json $TEST_CASE_PROXY/_debug
