# Issue for Exercise 2

As of now, the code does not compile. It seems that the compiler cannot find the local folder `MathFunctions`, and threw:
```
C:/PROGRA~1/MINGW-~1/mingw64/bin/../lib/gcc/x86_64-w64-mingw32/8.1.0/../../../../x86_64-w64-mingw32/bin/ld.exe: cannot find -lMathFunctions
collect2.exe: error: ld returned 1 exit status
mingw32-make.exe[2]: *** [CMakeFiles\Tutorial.dir\build.make:105: Tutorial.exe] Error 1
mingw32-make.exe[1]: *** [CMakeFiles\Makefile2:114: CMakeFiles/Tutorial.dir/all] Error 2
mingw32-make.exe: *** [Makefile:102: all] Error 2
./commands.sh: line 6: ./Tutorial.exe: No such file or directory
```

This bug is TBD. Moving on now to the next tutorial.