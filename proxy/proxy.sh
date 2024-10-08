#!/bin/bash

TEST_CASE_PROXY=$1

rm -f *.log

# Boot the server in a background process.
# nohup npx verdaccio@latest --config ./config.yml --listen $TEST_CASE_PROXY &
# nohup env DEBUG="express:*,verdaccio:storage*,verdaccio:proxy*,verdaccio:plugin:local-storage*,verdaccio:api*" npx verdaccio@next-7 --config ./config.yml --listen $TEST_CASE_PROXY >debug.log 2>error.log &
nohup env DEBUG="verdaccio:*,-verdaccio:core:*" npx verdaccio@8.0.0-next-8.3 --config ./config.yml >debug.log 2>error.log &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

cat proxy.log
