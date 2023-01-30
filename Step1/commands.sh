#! /bin/sh
cd ../Step1_build
rm -rf *
cmake -G "MinGW Makefiles" ../Step1
cmake --build .
./Tutorial.exe 100
./Tutorial.exe 81
./Tutorial.exe 200
./Tutorial.exe
