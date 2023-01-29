# CMake-Tutorial
Exercises and solutions following the [official CMake Tutorial](https://cmake.org/cmake/help/latest/guide/tutorial/index.html).

# How To Run Each Tutorial
Go to each StepX folder (X stands for 1,2,3,...), open a terminal, and run the bash script `commands.sh` from the terminal.

# Peronal Notes For Each Exercise

## Exercise 1: Build A Simple Project
For simple projects like this, a CMakeLists.txt file with **three commands** is all that is required:
```
cmake_minimum_required(VERSION 3.10)
project(<project_name>)
add_executable(<filename> <source_file>)
```

> **Trick**: In Windows, the default behavior is to generate Visual Studio solutions instead of `Makefile`s. To change this, use `cmake -G "MinGW Makefiles" ../Step1` to specifiy MinGW compiler (or cygwin compiler) to produce `Makefile`s instead. See `commands.sh` in folder `Step1`.
