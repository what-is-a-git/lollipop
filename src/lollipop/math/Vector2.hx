package lollipop.math;

abstract Vector2<T>(Array<T>) from Array<T> {
    public var x(get, set):T;

    private function get_x():T {
        return this[0];
    }

    private function set_x(value:T):T {
        return this[0] = value;
    }

    public var y(get, set):T;

    private function get_y():T {
        return this[1];
    }

    private function set_y(value:T):T {
        return this[1] = value;
    }

    public inline function new(x:T, y:T) {
        this = [x, y];
    }
}