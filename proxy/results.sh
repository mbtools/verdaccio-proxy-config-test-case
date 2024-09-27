#!/bin/bash

echo "###"
echo "### LOG ###"
echo "###"

cat proxy.log

echo "###"
echo "### ERRORS ###"
echo "###"

cat error.log

echo "###"
echo "### STORAGE ###"
echo "###"

tree -s ./storage/ 
# ls -lR ./storage/

echo "###"
echo "### EXAMPLE @tsconfig/node16 ###"
echo "###"

cat ./storage/@tsconfig/node16/package.json
echo
