@echo off
color 0a
cd ..
@echo on
echo Psych 0.6.3 Dependencies
echo Installing correct dependencies.
haxelib install hxCodec
haxelib install Brewscript
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git polymod https://github.com/larsiusprime/polymod
haxelib git flxanimate https://github.com/ShadowMario/flxanimate dev
haxelib git flixel-addons https://github.com/HaxeFlixel/flixel-addons
haxelib git linc_luajit https://github.com/superpowers04/linc_luajit
haxelib git hxCodec https://github.com/polybiusproxy/hxCodec
haxelib install flixel-addons 3.0.2
haxelib set flixel-addons 3.0.2
haxelib install flixel-demos 2.9.0
haxelib set flixel-demos 2.9.0
haxelib install flixel-templates 2.6.6
haxelib set flixel-templates 2.6.6
haxelib install flixel-tools 1.5.1
haxelib set flixel-tools 1.5.1
haxelib install flixel-ui 2.5.0
haxelib set flixel-ui 2.5.0
haxelib install flixel 5.2.2
haxelib set flixel 5.2.2
haxelib install flxanimate 3.0.4
haxelib set flxanimate 3.0.4
haxelib install hscript 2.5.0
haxelib set hscript 2.5.0
haxelib install lime-samples 7.0.0
haxelib set lime-samples 7.0.0
haxelib insall lime 8.0.1
haxelib set lime 8.0.1
haxelib install openfl 9.2.1
haxelib set openfl 9.2.1
echo Complete!
pause
