# hxFRESteamWorks
Haxe/Flash+AIR bindings for https://github.com/Ventero/FRESteamWorks

If it doesn't work...

- At compile time, make sure you have the ane in an -extdir directive with ADT
- At run time, if you have a #3500 error, ake sure you have steam_api.dll near your ADT executable.
- At run time, if you have a "Steam_init" returning false, make sure you have steam_api.txt in the game directory
