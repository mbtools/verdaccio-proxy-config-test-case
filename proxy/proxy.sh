#!/bin/bash

TEST_CASE_PROXY=$1
VERSION=$2

rm -f *.log

# Boot the server in a background process.
nohup env DEBUG="verdaccio:*" npx verdaccio@$VERSION --config ./config.yml > debug.log 2>&1 &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

cat proxy.log
