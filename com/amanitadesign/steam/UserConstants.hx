package com.amanitadesign.steam;

@:fakeEnum(Int) extern enum UserConstants {
	BEGINAUTH_OK						;
	BEGINAUTH_InvalidTicket				;
	BEGINAUTH_DuplicateRequest			;
	BEGINAUTH_InvalidVersion			;
	BEGINAUTH_GameMismatch				;
	BEGINAUTH_ExpiredTicket				;
		
	LICENSE_HasLicense					;
	LICENSE_DoesNotHaveLicense			;
	LICENSE_NoAuth						;

	SESSION_OK							;
	SESSION_UserNotConnectedToSteam		;
	SESSION_NoLicenseOrExpired			;
	SESSION_VACBanned					;
	SESSION_LoggedInElseWhere			;
	SESSION_VACCheckTimedOut			;
	SESSION_AuthTicketCanceled			;
	SESSION_AuthTicketInvalidAlreadyUsed;
	SESSION_AuthTicketInvalid			;

	AUTHTICKET_Invalid					;
}