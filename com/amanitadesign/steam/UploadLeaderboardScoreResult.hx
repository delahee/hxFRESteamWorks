
package com.amanitadesign.steam;

extern class UploadLeaderboardScoreResult {
	var success				:Bool;
	var leaderboardHandle	:String;
	var score				:Int;
	var scoreChanged		:Bool;
	var newGlobalRank		:Int;
	var previousGlobalRank	:Int;
}