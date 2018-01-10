package com.amanitadesign.steam;

extern class SteamEvent extends flash.events.Event {
	
	public static inline var STEAM_RESPONSE:String = "steamResponse";
	
	var response(default, null):Int;
	var req_type(default, null):SteamConstants;
	var data(default, default):Dynamic;
	
	function new(type:String, req_type:Int, response:Int, bubbles:Bool = false, cancelable:Bool = false):Void;
	
	override function clone(): flash.events.Event;
}