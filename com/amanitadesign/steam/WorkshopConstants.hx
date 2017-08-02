package com.amanitadesign.steam;

extern class WorkshopConstants {
		public static inline var FILETYPE_Community					:Int = 0;
		public static inline var FILETYPE_Microtransaction			:Int = 1;
		public static inline var FILETYPE_Collection				:Int = 2;
		public static inline var FILETYPE_Art						:Int = 3;
		public static inline var FILETYPE_Video						:Int = 4;
		public static inline var FILETYPE_Screenshot				:Int = 5;
		public static inline var FILETYPE_Game						:Int = 6;
		public static inline var FILETYPE_Software					:Int = 7;
		public static inline var FILETYPE_Concept					:Int = 8;
		public static inline var FILETYPE_WebGuide					:Int = 9;
		public static inline var FILETYPE_IntegratedGuide			:Int = 10;
		public static inline var FILETYPE_Merch						:Int = 11;
		public static inline var FILETYPE_ControllerBinding			:Int = 11;
                      
		public static inline var ENUMTYPE_RankedByVote				:Int = 0;
		public static inline var ENUMTYPE_Recent					:Int = 1;
		public static inline var ENUMTYPE_Trending					:Int = 2;
		public static inline var ENUMTYPE_FavoritesOfFriends		:Int = 3;
		public static inline var ENUMTYPE_VotedByFriends			:Int = 4;
		public static inline var ENUMTYPE_ContentByFriends			:Int = 5;
		public static inline var ENUMTYPE_RecentFromFollowedUsers	:Int = 6;
                      
		public static inline var FILEACTION_Played					:Int = 0;
		public static inline var FILEACTION_Completed				:Int = 1;
						
		public static inline var VISIBILITY_Public					:Int = 0;
		public static inline var VISIBILITY_FriendsOnly				:Int = 1;
		public static inline var VISIBILITY_Private					:Int = 2;

		// Deprecated, use FriendConstants.STOREFLAG_* instead.
		public static inline var OVERLAYSTOREFLAG_None				:Int = 0;
		public static inline var OVERLAYSTOREFLAG_AddToCart			:Int = 1;
		public static inline var OVERLAYSTOREFLAG_AddToCartAndShow	:Int = 2;
                      
		public static inline var WORKSHOPVOTE_Unvoted				:Int = 0;
		public static inline var WORKSHOPVOTE_VoteFor				:Int = 1;
		public static inline var WORKSHOPVOTE_VoteAgainst			:Int = 2;
							
		public static inline var FILEUPDATEHANDLE_Invalid			:String = "18446744073709551615"; // 0xffffffffffffffffull
		public static inline var UGCHANDLE_Invalid					:String = "18446744073709551615"; // 0xffffffffffffffffull
		public static inline var PUBLISHEDFILEID_Invalid			:String = "0";
	}