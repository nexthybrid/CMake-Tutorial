# CMake-Tutorial
Exercises and solutions following the [official CMake Tutorial](https://cmake.org/cmake/help/latest/guide/tutorial/index.html).

# How To Run Each Tutorial
Go to each StepX folder (X stands for 1,2,3,...), open a terminal, and run the bash script `commands.sh` from the terminal.

# Personal Learning Dictionary
|**Term**                           |**Meaning**  |
|:----------------------------------|:--------|
|add_executable()                   |create executable from source file |
|add_library()                      |create a library from source file  |
|add_subdirectory()                 |add a subdirectory to the build    |
|cmake_minimum_required()           |specify CMake version requirement  |
|configure_file()                   |copy file and substitute variables of @VAR@ type into real values  |
|project()                          |create a project to be built       |
|target_include_directories()       |specify where to find headers to include  |
|target_link_libraries()            |link the libraries to the executable  |



# Peronal Notes For Each Exercise

The notes for each exercise is located inside each StepX folder (X = 1,2,...).

# Tricks Not Mentioned In Tutorial

1. Functions like `target_include_directories()` and `target_link_libraries()` takes directories as inputs. These can be in the form of `${<keyword>}` or `"${<keyword>}"`, where `<keyword>` is a CMake keyword such as `PROJECT_SOURCE_DIR`, `PROJECT_BINARY_DIR`, etc. The use of `" "` seems to be optional.