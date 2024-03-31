package lollipop.bindings;

import cxx.num.UInt8;
import cxx.Ptr;
import cxx.ConstCharPtr;

@:include('stb/image.h')
@:cppFileCode('#define STB_IMAGE_IMPLEMENTATION')
@:extern
class StbImage {
    @:native('stbi_load')
    public extern static function load(file:ConstCharPtr, width:Ptr<Int>, height:Ptr<Int>, originalChannels:Ptr<Int>, outputChannels:Int):Ptr<UInt8>;
}
