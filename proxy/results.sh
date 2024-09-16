#!/bin/bash

echo ### LOG ###

cat proxy.log

echo ### STORAGE ###

tree /home/runner/work/verdaccio-proxy-config-test-case/verdaccio-proxy-config-test-case/proxy/storage/ >storage.log

cat storage.log
