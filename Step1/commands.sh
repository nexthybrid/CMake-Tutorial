cd ../Step1_build
rm -rf *
cmake -G "MinGW Makefiles" ../Step1
cmake --build .
./Tutorial.exe 100
./Tutorial.exe 81
./Tutorial 200