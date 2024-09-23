#!/bin/bash

echo ### LOG ###

cat proxy.log

echo ### DEBUG ###

cat debug.log

echo ### ERRORS ###

cat error.log

echo ### STORAGE ###

tree ./storage/ 
