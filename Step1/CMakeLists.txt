################### Bare Minimum CMake Setup ####################
### No linking libraries, just one source code main.cpp file. ###
#################################################################
# cmake_minimum_required(VERSION 3.10)
# project(Tutorial)
# add_executable(Tutorial tutorial.cxx)

# TODO 1: Set the minimum required version of CMake to be 3.10
cmake_minimum_required(VERSION 3.10)

# TODO 2: Create a project named Tutorial
# Start a project, right after cmake_minimum_required()
project(Tutorial)

# TODO 7: Set the project version number as 1.0 in the above project command

# TODO 6: Set the variable CMAKE_CXX_STANDARD to 11
#         and the variable CMAKE_CXX_STANDARD_REQUIRED to True
set(CMAKE_CXX_STANDARD 11)              # set before add_executable. Options: 98, 11, 14, 17, 20
set(CMAKE_CXX_STANDARD_REQUIRED True)   # set before add_executable

# TODO 8: Use configure_file to configure and copy TutorialConfig.h.in to
#         TutorialConfig.h

# TODO 3: Add an executable called Tutorial to the project
# Hint: Be sure to specify the source file as tutorial.cxx
add_executable(Tutorial tutorial.cxx)

# TODO 9: Use target_include_directories to include ${PROJECT_BINARY_DIR}