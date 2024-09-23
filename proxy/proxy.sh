#!/bin/bash

TEST_CASE_PROXY=$1

rm proxy.log

# Boot the server in a background process.
# nohup npx verdaccio@latest --config ./config.yml --listen $TEST_CASE_PROXY &
DEBUG="verdaccio:storage,verdaccio:proxy" nohup npx verdaccio@next-7 --config ./config.yml --listen $TEST_CASE_PROXY > debug.log 2> error.log &

# Wait for the server to begin listening for connections
( tail -F -n10 proxy.log & ) | fgrep -q $TEST_CASE_PROXY

cat proxy.log
