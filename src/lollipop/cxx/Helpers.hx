package lollipop.cxx;

import cxx.Ptr;

/**
 * Basically just a class for compiler hacks. Oh well!
 */
extern class Helpers {
    @:nativeFunctionCode('NULL')
    public static function c_nullptr():Ptr<Dynamic>;

    @:nativeFunctionCode('NULL')
    public static function c_null():Dynamic;
}
