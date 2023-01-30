#! /bin/sh
cd ../Step2_build
rm -rf *
cmake -G "MinGW Makefiles" ../Step2
cmake --build .
./Tutorial