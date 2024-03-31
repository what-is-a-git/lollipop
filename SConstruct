env = Environment(
    CPPPATH=['#/build/include', '#/vendor/cross/include'],
    LIBPATH=['#/vendor/win64/lib'],
    LIBS=['glfw3dll'],
    SCONS_CXX_STANDARD='c++17',
    CXXFLAGS=['/std:c++17', '/EHsc', '/O2'],
)

env.Program(target='build/bin/Main', source=Glob('#/build/src/**.c**') + Glob('#/vendor/cross/src/**.c**'))
Command('#/build/bin/glfw3.dll', '#/vendor/win64/lib/glfw3.dll', Copy('$TARGET', '$SOURCE'))
