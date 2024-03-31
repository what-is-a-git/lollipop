# lollipop/vendor

folder that contains all neccessary files for external libraries (ex: glfw for window management)

## folder structure

there are folders for each platform with libraries available and are stored as such:

- \[platform\]
    * /include
        * folder for all headers for this platform
    * /lib
        * folder for all lib files (.lib, .a, .dll, .so, etc) for this platform
    * /src
        * folder for all source files to be compiled into the program for this platform

## platforms

- cross
    * stands for "cross platform" and contains files that are included and used on all supported platforms
- win64
    * files for specifically windows 64 bit builds
