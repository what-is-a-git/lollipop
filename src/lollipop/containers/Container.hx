package lollipop.containers;

class Container {
    public var children:Array<Container> = [];

    public function new() {}

    public function step(delta:Float):Void {}

    public function draw():Void {}

    public function add(child:Container):Void {
        if (children.contains(child)) {
            return;
        }

        children.push(child);
    }

    public function remove(child:Container):Void {
        children.remove(child);
    }
}
