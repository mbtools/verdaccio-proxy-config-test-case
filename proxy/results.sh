#!/bin/bash

TEST_CASE_PROXY=$1

echo "###"
echo "### LOG ###"
echo "###"

cat proxy.log

echo "###"
echo "### STORAGE ###"
echo "###"

tree -s ./storage/ 
# ls -lR ./storage/

echo "###"
echo "### DEBUG ###"
echo "###"

cat debug.log

echo "###"
echo "### NPM CONFIG ###"
echo "###"

npm config list -l

exit #>>>>>>>>

echo "###"
echo "### ENV ###"
echo "###"

env | sort

echo "###"
echo "### EXAMPLE @tsconfig/node16 ###"
echo "###"

cat ./storage/@tsconfig/node16/package.json
echo
