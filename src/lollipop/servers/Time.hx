package lollipop.servers;

import lollipop.bindings.GLFW;

class Time {
    private static var startTime:Float;

    // probably don't call this more than once 🤪
    public static function init():Void {
        startTime = GLFW.getTime();
    }

    public static function getSecondsElapsed():Float {
        return GLFW.getTime() - startTime;
    }

    public static function getMillisecondsElapsed():Float {
        return getSecondsElapsed() / 1000.0;
    }
}