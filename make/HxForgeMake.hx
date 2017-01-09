package ;

import hxmake.haxelib.HaxelibExt;
import hxmake.test.TestTask;
import hxmake.idea.IdeaPlugin;
import hxmake.haxelib.HaxelibPlugin;

using hxmake.haxelib.HaxelibPlugin;

class HxForgeMake extends hxmake.Module {
	function new() {
		config.classPath = ["src"];
		config.testPath = ["test"];
		config.devDependencies = [
			"utest" => "haxelib"
		];

		apply(HaxelibPlugin);
		apply(IdeaPlugin);

		library(
			function(ext:HaxelibExt) {
				ext.config.description = "Data serialization";
				ext.config.contributors = ["storm_ex"];
				ext.config.url = "https://github.com/StormEx/hxforge";
				ext.config.license = "MIT";
				ext.config.version = "0.0.1";
				ext.config.releasenote = "Initial release";
				ext.config.tags = ["serialization", "data", "json", "dynamic"];

				ext.pack.includes = ["src", "haxelib.json", "README.md"];
			}
		);

		var tt = new TestTask();
		tt.targets = ["neko", "swf", "js", "node", "cpp", "java", "cs", "php"];
		tt.libraries = ["hxforge"];
		task("test", tt);
	}
}