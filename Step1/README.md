# Step 1 Notes

## Exercise 1: Build A Simple Project

For simple projects like this, a CMakeLists.txt file with **three commands** is all that is required:
```
cmake_minimum_required(VERSION 3.10)
project(<project_name>)
add_executable(<filename> <source_file>)
```

> **Trick**: In Windows, the default behavior is to generate Visual Studio solutions instead of `Makefile`s. To change this, use `cmake -G "MinGW Makefiles" ../Step1` to specifiy MinGW compiler (or cygwin compiler) to produce `Makefile`s instead. See `commands.sh` in folder `Step1`.

## Exercise 3: Adding a Version Number and Configured Header File

1. Specifying version in `project()`:

A version number of the project can be added in the `CMakeLists.txt` file for tracking project versions. This is done by the syntax:
```
project(<project_name> VERSION 1.0)
```
The keyword `VERSION` immediately follows `<project_name>`, and is followed by `<major>.<minor>.<patch>.<tweak>` (you don't need everything).

2. Copying version info to the source code:

`configure_file(TutorialConfig.h.in TutorialConfig.h)` copies the contents of `TutorialConfig.h.in` (user-defined input file for the Config file) into `TutorialConfig.h` (to be included by the source file). Inside `TutorialConfig.h.in`, the `<major>` and `<minor>` version number of the project is defined with `@VAR@` type of variables:
```
// the configured options and settings for Tutorial
#define Tutorial_VERSION_MAJOR @Tutorials_VERSION_MAJOR@
#define Tutorial_VERSION_MINOR @Tutorials_VERSION_MINOR@
```
These `@VAR@` type variables are directed created in the background by CMake. The `Tutorial_` prefix is automated created by following the project name `Tutorial`. The `VERSION_MAJOR` and `VERSION_MINOR` suffixes are reserved keyword names created by CMake. If the project name is changed to `Cat`, then the above code needs to be manually changed to `@Cat_VERSION_MAJOR@` and `@Cat_VERSION_MINOR@` accordingly.

Lastly, add `#include "TutorialConfig.h"` in the source cpp file. 