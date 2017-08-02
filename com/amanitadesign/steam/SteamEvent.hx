package com.amanitadesign.steam;

extern class SteamEvent extends flash.events.Event {
	
	var response(default, null):Int;
	var req_type(default, null):Int;
	var data(default, default):Dynamic;
	
	function new(type:String, req_type:Int, response:Int, bubbles:Bool = false, cancelable:Bool = false):Void;
	
	override function clone(): flash.events.Event;
}