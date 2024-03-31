package lollipop.bindings;

import cxx.ConstCharPtr;
import cxx.Ptr;

@:include('GLFW/glfw3.h')
@:extern
class GLFW {
    // Constants / Macros //
    @:native('GLFW_TRUE')
    public extern static final TRUE:Int;
    @:native('GLFW_FALSE')
    public extern static final FALSE:Int;

    @:native('GLFW_CONTEXT_VERSION_MAJOR')
    public extern static final CONTEXT_VERSION_MAJOR:Int;
    @:native('GLFW_CONTEXT_VERSION_MINOR')
    public extern static final CONTEXT_VERSION_MINOR:Int;
    @:native('GLFW_OPENGL_PROFILE')
    public extern static final OPENGL_PROFILE:Int;
    @:native('GLFW_OPENGL_CORE_PROFILE')
    public extern static final OPENGL_CORE_PROFILE:Int;

    // Functions //

    @:native('glfwInit')
    public extern static function init():Int;

    @:native('glfwTerminate')
    public extern static function terminate():Void;

    @:native('glfwPollEvents')
    public extern static function pollEvents():Void;

    @:native('glfwGetTime')
    public extern static function getTime():Float;

    @:native('glfwSwapInterval')
    public extern static function swapInterval(interval:Int):Void;

    @:native('glfwCreateWindow')
    public extern static function createWindow(width:Int, height:Int, title:ConstCharPtr, monitor:Ptr<GLFWMonitor>, share:Ptr<GLFWWindow>):Ptr<GLFWWindow>;

    @:native('glfwDestroyWindow')
    public extern static function destroyWindow(window:Ptr<GLFWWindow>):Void;

    @:native('glfwSetWindowTitle')
    public extern static function setWindowTitle(window:Ptr<GLFWWindow>, title:ConstCharPtr):Void;

    @:native('glfwGetWindowSize')
    public extern static function getWindowSize(window:Ptr<GLFWWindow>, width:Ptr<Int>, height:Ptr<Int>):Void;

    @:native('glfwSetWindowSize')
    public extern static function setWindowSize(window:Ptr<GLFWWindow>, width:Int, height:Int):Void;

    @:native('glfwMakeContextCurrent')
    public extern static function makeContextCurrent(window:Ptr<GLFWWindow>):Void;

    @:native('glfwWindowShouldClose')
    public extern static function windowShouldClose(window:Ptr<GLFWWindow>):Bool;

    @:native('glfwWindowHint')
    public extern static function windowHint(hint:Int, value:Int):Void;

    @:native('glfwSwapBuffers')
    public extern static function swapBuffers(window:Ptr<GLFWWindow>):Void;

    @:native('glfwGetProcAddress')
    public extern static function getProcAddress(name:ConstCharPtr):Void;
}

@:include('GLFW/glfw3.h')
@:structAccess
@:native('GLFWwindow')
class GLFWWindow {}

@:include('GLFW/glfw3.h')
@:structAccess
@:native('GLFWmonitor')
class GLFWMonitor {}
