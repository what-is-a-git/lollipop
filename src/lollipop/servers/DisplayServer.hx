package lollipop.servers;

import lollipop.containers.Window;
import lollipop.bindings.GL;
import lollipop.bindings.GLFW;
import cxx.ConstCharPtr;
import cxx.Ptr;

class DisplayServer {
    public static function init():Void {
        if (GLFW.init() != GLFW.TRUE) {
            Logs.error('Failed to start GLFW!');
            Sys.exit(1);
		}
    }

    public static function dispose():Void {
        Logs.log('Terminating GLFW.');
        GLFW.terminate();
    }

    public static function createWindow(width:Int, height:Int, title:String):Window {
        GLFW.windowHint(GLFW.CONTEXT_VERSION_MAJOR, 3);
		GLFW.windowHint(GLFW.CONTEXT_VERSION_MINOR, 3);
		GLFW.windowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE);

		var native:Ptr<GLFWWindow> = GLFW.createWindow(width, height, ConstCharPtr.fromString(title), Ptr.Null, Ptr.Null);

        // Slight compiler weirdness but it's fine honestly.
		if (untyped __cpp__('!{0}', native)) {
			Logs.error('Failed to create window with GLFW!');
			Sys.exit(1);
		}

        var window:Window = new Window(width, height, title);
        window.native = native;

        GLFW.makeContextCurrent(native);
		GL.load(GLFW.getProcAddress);
        GLFW.swapInterval(0);

        return window;
    }

    public static function destroyWindow(window:Window):Void {
        GLFW.destroyWindow(window.native);
    }

    public static function windowShouldClose(window:Window):Bool {
        return GLFW.windowShouldClose(window.native);
    }

    public static function pollWindowEvents():Void {
        GLFW.pollEvents();
    }

    public static function presentWindow(window:Window):Void {
        GLFW.swapBuffers(window.native);
    }
}