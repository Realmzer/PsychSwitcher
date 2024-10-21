@echo off
color 0a
cd ..
echo Friday Night Funkin v0.5.2 Fix:
echo Correctly setting dependencies.
echo This might take a few moments depending on your internet speed.
haxelib install format 3.5.0
haxelib install hamcrest 3.0.0
haxelib install hxp 1.3.0
haxelib git FlxPartialSound https://github.com/FunkinCrew/FlxPartialSound.git a1eab7b9bf507b87200a3341719054fe427f3b15
haxelib git flixel https://github.com/FunkinCrew/flixel f2b090d6c608471e730b051c8ee22b8b378964b1
haxelib git flixel-addons https://github.com/FunkinCrew/flixel-addons 7424db4e9164ff46f224a7c47de1b732d2542dd7
haxelib git flixel-text-input https://github.com/FunkinCrew/flixel-text-input 951a0103a17bfa55eed86703ce50b4fb0d7590bc
haxelib git flxanimate https://github.com/Dot-Stuff/flxanimate 0654797e5eb7cd7de0c1b2dbaa1efe5a1e1d9412
haxelib git funkin.vis https://github.com/FunkinCrew/funkVis  22b1ce089dd924f15cdc4632397ef3504d464e90
haxelib git grig.audio https://gitlab.com/haxe-grig/grig.audio.git 57f5d47f2533fd0c3dcd025a86cb86c0dfa0b6d2
haxelib git haxeui-core https://github.com/haxeui/haxeui-core 51c23588614397089a5ce182cddea729f0be6fa0
haxelib git haxeui-flixel https://github.com/haxeui/haxeui-flixel da27e833947f32ef007ed11f523aa5524f5a5d54
haxelib git hscript https://github.com/FunkinCrew/hscript 12785398e2f07082f05034cb580682e5671442a2
haxelib git hxCodec https://github.com/FunkinCrew/hxCodec 61b98a7a353b7f529a8fec84ed9afc919a2dffdd
haxelib git hxcpp https://github.com/cortex-engine/hxcpp c6bac3d6c7d683f25104296b2f4c50f8c90b8349
haxelib git hxcpp-debug-server https://github.com/FunkinCrew/hxcpp-debugger 147294123f983e35f50a966741474438069a7a8f
haxelib git hxdiscord_rpc https://github.com/FunkinCrew/hxdiscord_rpc 82c47ecc1a454b7dd644e4fcac7e91155f176dec+
haxelib git hxjsonast https://github.com/nadako/hxjsonast/ 20e72cc68c823496359775ac1f06500e67f189d5
haxelib git json2object https://github.com/FunkinCrew/json2object a8c26f18463c98da32f744c214fe02273e1823fa
haxelib git jsonpatch https://github.com/EliteMasterEric/jsonpatch f9b83215acd586dc28754b4ae7f69d4c06c3b4d3
haxelib git jsonpath https://github.com/EliteMasterEric/jsonpath 7a24193717b36393458c15c0435bb7c4470ecdda
haxelib git lime https://github.com/FunkinCrew/lime fe3368f611a84a19afc03011353945ae4da8fffd
haxelib git mconsole https://github.com/massive-oss/mconsole 06c0499ed8f80628a0e6e55ffa32c3cbd688a838
haxelib git mcover https://github.com/massive-oss/mcover c3c47cd682b0b202a41caee95321989391b617ef
haxelib git mockatoo https://github.com/FunkinCrew/mockatoo 13d77a0a8eaf5e789ef5dae6cd33eee812deda36
haxelib git munit https://github.com/FunkinCrew/MassiveUnit f61be7f7ba796595f45023ca65164a485aba0e7e
haxelib git openfl https://github.com/FunkinCrew/openfl 8306425c497766739510ab29e876059c96f77bd2
haxelib git polymod https://github.com/larsiusprime/polymod 0fbdf27fe124549730accd540cec8a183f8652c0
haxelib git thx.core https://github.com/fponticelli/thx.core 76d87418fadd92eb8e1b61f004cff27d656e53dd
haxelib git thx.semver https://github.com/fponticelli/thx.semver bdb191fe7cf745c02a980749906dbf22719e200b
echo Finished!
pause
