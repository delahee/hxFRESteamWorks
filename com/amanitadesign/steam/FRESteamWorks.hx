package com.amanitadesign.steam;

typedef AuthHandle = UInt;

@:enum 
abstract EUserHasLicenseResult(UInt) {
	var HasLicense = 0;
	var DoesNotHaveLicense = 1;
	var NoAuth = 2;
}

@:enum 
abstract EBeginAuthSessionResult(UInt) {
	var OK				= 0;//	Ticket is valid for this game and this Steam ID.
	var InvalidTicket	= 1;//	The ticket is invalid.
	var DuplicateRequest= 2;//	A ticket has already been submitted for this Steam ID.
	var InvalidVersion	= 3;//	Ticket is from an incompatible interface version.
	var GameMismatch	= 4;//	Ticket is not for this game.
	var ExpiredTicket	= 5;//	Ticket has expired.
}

@:enum 
abstract EFriendFlag(UInt) {
	var None					= 0x00	;// None.
	var Blocked					= 0x01	;//Users that the current user has blocked from contacting.
	var FriendshipRequested		= 0x02	;//Users that have sent a friend invite to the current user.
	var Immediate				= 0x04	;//The current user's "regular" friends.
	var ClanMember				= 0x08	;//Users that are in one of the same (small) Steam groups as the current user.
	var OnGameServer			= 0x10	;//Users that are on the same game server; as set by SetPlayedWith.
	var RequestingFriendship	= 0x80	;//Users that the current user has sent friend invites to.
	var RequestingInfo			= 0x100	;//Users that are currently sending additional info about themselves after a call to RequestUserInformation
	var Ignored					= 0x200	;//Users that the current user has ignored from contacting them.
	var IgnoredFriend			= 0x400	;//Users that have ignored the current user; but the current user still knows about them.
	var ChatMember				= 0x1000	;//Users in one of the same chats.
	var All						= 0xFFFF	;//Returns all friend flags.
}

extern class FRESteamWorks extends flash.events.EventDispatcher {
	
	//for overlay to be injected correctly, sue : 
	// static var steamApi = new FRESteamWorks(); //static var injection allow to hook the window before first render
	function new(target:flash.events.IEventDispatcher = null) : Void;

	function init()			: Bool;
	function runCallbacks()	: Bool;
	function getUserID()	: String;
	function getAppID()		: UInt;
	function dispose()		: Void;//not realling mapping Shutdown ?
	
	function getAvailableGameLanguages()		: String;
	function getCurrentGameLanguage()			: String;
	function getPersonaName()					: String;
	function restartAppIfNecessary(appID:UInt)	: Bool;
	function requestStats()						: Bool;
	function setAchievement(name:String)		: Bool; 
	function clearAchievement(name:String)		: Bool; 
	function isAchievement(name:String)			: Bool; //returns whether achievement is set, does not check if it exists
	function indicateAchievementProgress(name:String, currentProgress:Int, maxProgress:Int) : Bool;
	function getStatInt(name:String)			: Int;
	
	function getStatFloat(name:String)							: Float;
	function setStatInt(name:String, value:Int)					: Bool;
	function setStatFloat(name:String, value:Float) 			: Bool;
			
	function storeStats()										: Bool;
	function resetAllStats(achievementsToo:Bool)				: Bool;
	function requestGlobalStats(historyDays:Int)				: Bool;
	function getGlobalStatInt(name:String)						: Float;
	function getGlobalStatFloat(name:String)					: Float;
	function getGlobalStatHistoryInt(name:String, days:Int) 	: Array < Dynamic >;
	function getGlobalStatHistoryFloat(name:String, days:Int)	: Array < Dynamic >;
	 
	/****************/
	/* Leaderboards */
	/****************/
	function findLeaderboard(name:String)									: Bool;
	function findOrCreateLeaderboard(name:String, sortMethod:UInt, displayType:UInt)	
																			: Bool;
	function findLeaderboardResult()										: String;
	function getLeaderboardName(handle:String)								: String;
	function getLeaderboardEntryCount(handle:String)						: Int;
	function getLeaderboardSortMethod(handle:String)						: UInt;
	function getLeaderboardDisplayType(handle:String)						: UInt;
	function uploadLeaderboardScore(handle:String, method:UInt, score:Int, details:Array<Dynamic> = null)	
																			: Bool;
	function uploadLeaderboardScoreResult()									: UploadLeaderboardScoreResult;
	function downloadLeaderboardEntries(handle:String, request:UInt = UserStatsConstants.DATAREQUEST_GlobalAroundUser, rangeStart:Int = -4, rangeEnd:Int = 5)													   : Bool;
	function downloadLeaderboardEntriesResult(numDetails:Int = 0)		    : Array<Dynamic>;
	
	/**************************/
	/* Cloud / Remote Storage */
	/**************************/
	function getFileCount()											: Int;
	function getFileSize(name:String)								: Int;
	function fileExists(name:String)								: Bool;
	function fileWrite(name:String, data:flash.utils.ByteArray)		: Bool;
	function fileRead(name:String, data:flash.utils.ByteArray)		: Bool;
	function fileDelete(name:String)								: Bool;
	function fileShare(name:String)									: Bool;
	function fileShareResult()										: String;
	function isCloudEnabledForApp()									: Bool;
	function setCloudEnabledForApp(enabled:Bool)					: Bool;
	function getQuota()												: Array<Dynamic>;
	  
	/******************/
	/* UGC / Workshop */
	/******************/
	function UGCDownload(handle:String, priority:UInt)									: Bool;
	function UGCRead(handle:String, size:Int, offset:UInt, data:flash.utils.ByteArray)	: Bool;
	function getUGCDownloadProgress(handle:String)										: Array<Dynamic>;
	function getUGCDownloadResult(handle:String)										: DownloadUGCResult;
	function publishWorkshopFile(name:String, preview:String, appId:UInt, title:String, description:String, visibility:UInt, tags:Array<Dynamic>, fileType:UInt)																		 : Bool;
	function publishWorkshopFileResult()												: String;
	function deletePublishedFile(file:String)											: Bool;
	function getPublishedFileDetails(file:String, maxAge:UInt = 0)						: Bool;
	function getPublishedFileDetailsResult(file:String)									: FileDetailsResult;
	function enumerateUserPublishedFiles(startIndex:UInt)								: Bool;
	function enumerateUserPublishedFilesResult()										: UserFilesResult;
	function enumeratePublishedWorkshopFiles(type:UInt, start:UInt, count:UInt, days:UInt, tags:Array<Dynamic>, userTags:Array<Dynamic>)
																						: Bool;
	function enumerateUserSubscribedFiles(startIndex:UInt)								: Bool;
	function enumerateUserSubscribedFilesResult()										: SubscribedFilesResult;
	function enumerateUserSharedWorkshopFiles(steamID:String, start:UInt, required:Array<Dynamic>, excluded:Array<Dynamic>)
																						: Bool;
	function enumerateUserSharedWorkshopFilesResult()									: UserFilesResult;
	function enumeratePublishedFilesByUserAction(action:UInt, startIndex:UInt)			: Bool;
	function enumeratePublishedFilesByUserActionResult()								: FilesByUserActionResult;
	function subscribePublishedFile(file:String)										: Bool;
	function unsubscribePublishedFile(file:String)										: Bool;
	function createPublishedFileUpdateRequest(file:String)								: String;
	function updatePublishedFileFile(handle:String, file:String)						: Bool;
	function updatePublishedFilePreviewFile(handle:String, preview:String)				: Bool;
	function updatePublishedFileTitle(handle:String, title:String)						: Bool;
	function updatePublishedFileDescription(handle:String, description:String)			: Bool;
	function updatePublishedFileSetChangeDescription(handle:String, changeDesc:String)	: Bool;
	function updatePublishedFileVisibility(handle:String, visibility:UInt)				: Bool;
	function updatePublishedFileTags(handle:String, tags:Array<Dynamic>)				: Bool;
	function commitPublishedFileUpdate(handle:String)									: Bool;
	function getPublishedItemVoteDetails(file:String)									: Bool;
	function getPublishedItemVoteDetailsResult()										: ItemVoteDetailsResult;
	function getUserPublishedItemVoteDetails(file:String)								: Bool;
	function getUserPublishedItemVoteDetailsResult()									: UserVoteDetails;
	function updateUserPublishedItemVote(file:String, upvote:Bool)						: Bool;
	function setUserPublishedFileAction(file:String, action:UInt) 						: Bool;
	 
	/***********/
	/* Friends */
	/***********/
	function getFriendCount(flags:EFriendFlag)								: Int;
	function getFriendByIndex(index:Int, flags:EFriendFlag)					: String;
	function getFriendPersonaName(id:String)								: String;
	
	/******************************/
	/* Authentication & Ownership */
	/******************************/
	function getAuthSessionTicket(ticket:flash.utils.ByteArray)				: AuthHandle;
	function getAuthSessionTicketResult()									: UInt;
	function beginAuthSession(ticket:flash.utils.ByteArray, steamID:String)	: Int;
	function endAuthSession(steamID:String)									: Bool;
	function cancelAuthTicket(ticketHandle:UInt)							: Bool;
	function userHasLicenseForApp(steamID:String, appID:UInt)				: EUserHasLicenseResult;
	                                                                          
	/***********/                                                             
	/* Overlay */                                                             
	/***********/                                                             
	function activateGameOverlay(dialog:String)								: Bool;
	function activateGameOverlayToUser(dialog:String, steamId:String)		: Bool;
	function activateGameOverlayToWebPage(url:String)						: Bool;
	function activateGameOverlayToStore(appId:UInt, flag:UInt)				: Bool;
	function activateGameOverlayInviteDialog(steamIdLobby:String)			: Bool;
	function isOverlayEnabled()												: Bool; 
	function setOverlayNotificationPosition(position:UInt)					: Bool;
	
	/***********************/
	/* DLC / subscriptions */
	/***********************/
	function isSubscribedApp(appId:UInt)		: Bool;
	function isDLCInstalled(appId:UInt)			: Bool;
	function getDLCCount()						: Int;
	function installDLC(appId:UInt)				: Bool;
	function uninstallDLC(appId:UInt)			: Bool;
	function DLCInstalledResult()				: UInt;
	
	/********************/
	/* Microtransaction */
	/********************/
	function microTxnResult()					: MicroTxnAuthorizationResponse;
		 
	/**********************************/
	/* Other non-Steamworks functions */
	/**********************************/
	function getEnv(name:String)				: String;
	function setEnv(name:String, value:String)	: Bool;
}