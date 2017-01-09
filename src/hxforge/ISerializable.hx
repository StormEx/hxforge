package hxforge;

#if !macro
@:autoBuild(hxforge.macro.SerializerMacro.build())
#end

interface ISerializable {
//	public function serialize<T>(cls:Class<T>, ?type:String):T;
	public function serialize(type:String):Dynamic;
//	public function deserialize(data:Dynamic, ?type:String):Void;
	public function deserialize(data:Dynamic):Void;
}