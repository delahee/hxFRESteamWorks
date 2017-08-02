package com.amanitadesign.steam;

@:fakeEnum(Int) extern enum SteamConstants {
	RESPONSE_OnUserStatsReceived				;
	RESPONSE_OnUserStatsStored					;
	RESPONSE_OnAchievementStored				;
	RESPONSE_OnGlobalStatsReceived				;
	RESPONSE_OnFindLeaderboard					;
	RESPONSE_OnUploadLeaderboardScore			;
	RESPONSE_OnDownloadLeaderboardEntries		;
	RESPONSE_OnGameOverlayActivated				;
	RESPONSE_OnFileShared						;
	RESPONSE_OnUGCDownload						;
	RESPONSE_OnPublishWorkshopFile				;
	RESPONSE_OnDeletePublishedFile				;
	RESPONSE_OnGetPublishedFileDetails			;
	RESPONSE_OnEnumerateUserPublishedFiles		;
	RESPONSE_OnEnumeratePublishedWorkshopFiles	;
	RESPONSE_OnEnumerateUserSubscribedFiles		;
	RESPONSE_OnEnumerateUserSharedWorkshopFiles	;
	RESPONSE_OnEnumeratePublishedFilesByUserAction;
	RESPONSE_OnCommitPublishedFileUpdate		;
	RESPONSE_OnSubscribePublishedFile			;
	RESPONSE_OnUnsubscribePublishedFile			;
	RESPONSE_OnGetPublishedItemVoteDetails		;
	RESPONSE_OnGetUserPublishedItemVoteDetails	;
	RESPONSE_OnUpdateUserPublishedItemVote		;
	RESPONSE_OnSetUserPublishedFileAction		;
	RESPONSE_OnGetAuthSessionTicketResponse		;
	RESPONSE_OnValidateAuthTicketResponse		;
	RESPONSE_OnDLCInstalled						;
	RESPONSE_OnMicroTxnAuthorizationResponse	;
}