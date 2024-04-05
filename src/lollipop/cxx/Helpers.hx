package lollipop.cxx;

/**
 * Basically just a class for compiler hacks. Oh well!
 */
extern class Helpers {
    @:nativeFunctionCode('NULL')
    public static function c_null():Dynamic;
}
