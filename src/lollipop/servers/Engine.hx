package lollipop.servers;

import lollipop.objects.Window;
import lollipop.bindings.GL;

class Engine {
	public static var mainWindow:Window;

	public static function init(params:EngineInitParameters):Void {
		DisplayServer.init();
		mainWindow = DisplayServer.createWindow(params.width, params.height, params.initialTitle);

		Time.init();

		var running:Bool = true;
		var previousTime:Float = Time.getSecondsElapsed();
		var elapsed:Float = 0.0;

		while (running) {
			DisplayServer.pollWindowEvents();

			elapsed = Time.getSecondsElapsed() - previousTime;
			previousTime = Time.getSecondsElapsed();

			if (DisplayServer.windowShouldClose(mainWindow)) {
				running = false;
			}

			GL.clear(GL.COLOR_BUFFER_BIT);
			DisplayServer.presentWindow(mainWindow);
		}

		DisplayServer.destroyWindow(mainWindow);
		DisplayServer.dispose();
	}
}

typedef EngineInitParameters = {
	var width:Int;
	var height:Int;
	var initialTitle:String;
}
