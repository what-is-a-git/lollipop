package lollipop;

import lollipop.bindings.GL;
import lollipop.cxx.Helpers;
import cxx.Ptr;
import cxx.ConstCharPtr;
import lollipop.bindings.GLFW;
import lollipop.interfaces.Server;

class Engine implements Server {
	public static function init():Void {
		if (GLFW.init() != GLFW.TRUE) {
			trace('Failed to start GLFW!');
		}

		GLFW.windowHint(GLFW.CONTEXT_VERSION_MAJOR, 3);
		GLFW.windowHint(GLFW.CONTEXT_VERSION_MINOR, 3);
		GLFW.windowHint(GLFW.OPENGL_PROFILE, GLFW.OPENGL_CORE_PROFILE);

		var window:Ptr<GLFWWindow> = GLFW.createWindow(640, 480, ConstCharPtr.fromString('Lollipop Haxe Testing'), Helpers.c_nullptr(), Helpers.c_nullptr());

		// Slight compiler weirdness but it's fine honestly.
		if (untyped __cpp__('!{0}', window)) {
			trace('Failed to create window with GLFW!');
			return;
		}

		GLFW.makeContextCurrent(window);
		GL.load(GLFW.getProcAddress);
		
		GLFW.swapInterval(0);

		var running:Bool = true;
		var previousTime:Float = GLFW.getTime();
		var elapsed:Float = 0.0;
		var frames:Int = 0;
		var fpsTimer:Float = 0.0;

		while (running) {
			GLFW.pollEvents();

			elapsed = GLFW.getTime() - previousTime;
			previousTime = GLFW.getTime();
			fpsTimer += elapsed;
			
			if (fpsTimer >= 1.0) {
				trace(frames);
				fpsTimer = 0.0;
				frames = 0;
			}

			frames++;
			
			if (GLFW.windowShouldClose(window)) {
				running = false;
			}

			GL.clear(GL.COLOR_BUFFER_BIT);
			GLFW.swapBuffers(window);
		}

		GLFW.destroyWindow(window);
		GLFW.terminate();
	}
}
