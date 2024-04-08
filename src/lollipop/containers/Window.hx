package lollipop.containers;

import cxx.ConstCharPtr;
import lollipop.bindings.GLFW;
import lollipop.math.Vector2;
import lollipop.bindings.GLFW.GLFWWindow;
import cxx.Ptr;

class Window extends Container {
    public var native:Ptr<GLFWWindow>;

    @:isVar public var size(get, set):Vector2<Int>;
    public var title(default, set):String;

    public function new(width:Int, height:Int, initialTitle:String) {
        super();
        
        @:bypassAccessor
        size = new Vector2(width, height);
        
        @:bypassAccessor
        title = initialTitle;
    }

    private function set_title(value:String):String {
        GLFW.setWindowTitle(native, ConstCharPtr.fromString(value));
        return title = value;
    }

    private function get_size():Vector2<Int> {
        var x:Int = 0;
        var y:Int = 0;
        GLFW.getWindowSize(native, x, y);

        size.x = x;
        size.y = y;

        return size;
    }

    private function set_size(value:Vector2<Int>):Vector2<Int> {
        GLFW.setWindowSize(native, value.x, value.y);
        return size = value;
    }
}