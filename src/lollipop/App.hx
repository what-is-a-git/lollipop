package lollipop;

import lollipop.servers.Engine;

class App {
    public function new(width:Int, height:Int, initialTitle:String) {
        Engine.init({
            width: width,
            height: height,
            initialTitle: initialTitle
        });
    }
}
