package lollipop.servers;

import lollipop.objects.Window;
import lollipop.bindings.GL;
import lollipop.bindings.GLFW;
import lollipop.interfaces.Server;

class Engine implements Server {
	public static var window:Window;

	public static function init(params:EngineInitParameters):Void {
		WindowServer.init();
		window = WindowServer.createWindow(params.width, params.height, params.initialTitle);
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
			
			if (GLFW.windowShouldClose(window.native)) {
				running = false;
			}

			GL.clear(GL.COLOR_BUFFER_BIT);
			GLFW.swapBuffers(window.native);
		}

		GLFW.destroyWindow(window.native);
		GLFW.terminate();
	}
}

typedef EngineInitParameters = {
	var width:Int;
	var height:Int;
	var initialTitle:String;
}
