package lollipop.servers;

import haxe.Log;
import haxe.PosInfos;
import cxx.DynamicToString;

class Logs {
    public static function init():Void {
        Log.trace = log;
    }

    public static function log(value:DynamicToString, info:Null<PosInfos> = null):Void {
        Sys.println('[LOG]: src/${info.className}.${info.methodName}[${info.lineNumber}]: ${value}');
    }

    public static function warn(value:DynamicToString, info:Null<PosInfos> = null):Void {
        Sys.println('[WARN]: src/${info.className}.${info.methodName}[${info.lineNumber}]: ${value}');
    }

    public static function error(value:DynamicToString, info:Null<PosInfos> = null):Void {
        Sys.println('[ERROR]: src/${info.className}.${info.methodName}[${info.lineNumber}]: ${value}');
    }
}