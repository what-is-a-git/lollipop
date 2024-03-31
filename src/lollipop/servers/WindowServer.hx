package lollipop.servers;

import lollipop.bindings.GL;
import lollipop.bindings.GLFW;
import lollipop.cxx.Helpers;
import cxx.ConstCharPtr;
import cxx.Ptr;
import lollipop.objects.Window;
import lollipop.interfaces.Server;

class WindowServer implements Server {
    public static function init():Void {
        if (GLFW.init() != GLFW.TRUE) {
			trace('Failed to start GLFW!');
		}
    }

    public static function createWindow(width:Int, height:Int, title:String):Window {
        GLFW.windowHint(GLFW.CONTEXT_VERSION_MAJOR, 3);
		GLFW.windowHint(GLFW.CONTEXT_VERSION_MINOR, 3);
		GLFW.windowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE);

		var native:Ptr<GLFWWindow> = GLFW.createWindow(width, height, ConstCharPtr.fromString(title), Helpers.c_nullptr(), Helpers.c_nullptr());

        // Slight compiler weirdness but it's fine honestly.
		if (untyped __cpp__('!{0}', native)) {
			trace('Failed to create window with GLFW!');
			Sys.exit(1);
		}

        var window:Window = new Window(width, height, title);
        window.native = native;

        GLFW.makeContextCurrent(native);
		GL.load(GLFW.getProcAddress);

        return window;
    }
}