package com.amanitadesign.steam;

@:enum
abstract SteamConstants(Int){
	var  RESPONSE_OnUserStatsReceived					= 0;
	var  RESPONSE_OnUserStatsStored						= 1;
	var  RESPONSE_OnAchievementStored					= 2;
	var  RESPONSE_OnGlobalStatsReceived					= 3;
	var  RESPONSE_OnFindLeaderboard						= 4;
	var  RESPONSE_OnUploadLeaderboardScore				= 5;
	var  RESPONSE_OnDownloadLeaderboardEntries			= 6;
	var  RESPONSE_OnGameOverlayActivated				= 7;
	var  RESPONSE_OnFileShared							= 8;
	var  RESPONSE_OnUGCDownload							= 9;
	var  RESPONSE_OnPublishWorkshopFile					= 10;
	var  RESPONSE_OnDeletePublishedFile					= 11;
	var  RESPONSE_OnGetPublishedFileDetails				= 12;
	var  RESPONSE_OnEnumerateUserPublishedFiles			= 13;
	var  RESPONSE_OnEnumeratePublishedWorkshopFiles		= 14;
	var  RESPONSE_OnEnumerateUserSubscribedFiles		= 15;
	var  RESPONSE_OnEnumerateUserSharedWorkshopFiles	= 16;
	var  RESPONSE_OnEnumeratePublishedFilesByUserAction = 17;
	var  RESPONSE_OnCommitPublishedFileUpdate			= 18;
	var  RESPONSE_OnSubscribePublishedFile				= 19;
	var  RESPONSE_OnUnsubscribePublishedFile			= 20;
	var  RESPONSE_OnGetPublishedItemVoteDetails			= 21;
	var  RESPONSE_OnGetUserPublishedItemVoteDetails		= 22;
	var  RESPONSE_OnUpdateUserPublishedItemVote			= 23;
	var  RESPONSE_OnSetUserPublishedFileAction			= 24;
	var  RESPONSE_OnGetAuthSessionTicketResponse		= 25;
	var  RESPONSE_OnValidateAuthTicketResponse			= 26;
	var  RESPONSE_OnDLCInstalled						= 27;
	var  RESPONSE_OnMicroTxnAuthorizationResponse		= 28;
}