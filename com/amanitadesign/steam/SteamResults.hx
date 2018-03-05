
package com.amanitadesign.steam;

@:enum
abstract SteamResults(Int) to Int {
	var OK 							= 1;
	var Fail 						= 2;
	var NoConnection 				= 3;	
	
	var InvalidPassword				= 5;
	//var LoggedInElsewhere			;
	//var InvalidProtocolVer			;
    //var InvalidParam				;
    //var FileNotFound				;
    //var Busy						;
    var InvalidState				= 11;
    var InvalidName					= 12;
	
    //var InvalidEmail					;
    //var DuplicateName					;
    //var AccessDenied					;
    //var Timeout						;
    //var Banned						;
    //var AccountNotFound						;					
    //var InvalidSteamID						;
    //var ServiceUnavailable						;
    //var NotLoggedOn						;
    //var Pending						;
    //var EncryptionFailure						;
    //var InsufficientPrivilege						;
    //var LimitExceeded						;
    //var Revoked						;
    //var Expired						;
    //var AlreadyRedeemed					;
    //var DuplicateRequest					;
    //var AlreadyOwned					;
    //var IPNotFound					;
    //var PersistFailed					;
    //var LockingFailed					;
    //var LogonSessionReplaced;
    //var ConnectFailed;
    //var HandshakeFailed;
    //var IOFailure;
    //var RemoteDisconnect;
    //var ShoppingCartNotFound;
    //var Blocked;
    //var Ignored;
    //var NoMatch;
    //var AccountDisabled;
    //var ServiceReadOnly;
    //var AccountNotFeatured;
    //var AdministratorOK;
    //var ContentVersion;
    //var TryAnotherCM;
    //var PasswordRequiredToKickSession;
    //var AlreadyLoggedInElsewhere;
    //var Suspended;
    //var Cancelled;
    //var DataCorruption;
    //var DiskFull;
    //var RemoteCallFailed;
    //var PasswordUnset;
    //var ExternalAccountUnlinked;
    //var PSNTicketInvalid;
    //var ExternalAccountAlreadyLinked;
    //var RemoteFileConflict;
    //var IllegalPassword;
    //var SameAsPreviousValue;
    //var AccountLogonDenied;
    //var CannotUseOldPassword;
    //var InvalidLoginAuthCode;
    //var AccountLogonDeniedNoMail;
    //var HardwareNotCapableOfIPT;
    //var IPTInitError;
    //var ParentalControlRestricted;
    //var FacebookQueryError;
    //var ExpiredLoginAuthCode;
    //var IPLoginRestrictionFailed;
    //var AccountLockedDown;
    //var AccountLogonDeniedVerifiedEmailRequired;
    //var NoMatchingURL;
    //var BadResponse;
    //var RequirePasswordReEntry;
    //var ValueOutOfRange;
}