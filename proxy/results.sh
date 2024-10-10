#!/bin/bash

TEST_CASE_PROXY=$1

echo "###"
echo "### VERDACCIO LOG ###"
echo "###"

cat proxy.log

echo "###"
echo "### STORAGE CONTENT ###"
echo "###"

tree -s ./storage/ 
# ls -lR ./storage/

echo "###"
echo "### DEBUG LOG ###"
echo "###"

cat debug.log

echo "###"
echo "### NPM CONFIG ###"
echo "###"

npm config list -l

echo "###"
echo "### NPM CACHE ###"
echo "###"

npm cache ls

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
