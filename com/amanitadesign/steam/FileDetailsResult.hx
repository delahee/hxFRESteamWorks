package com.amanitadesign.steam;

extern class FileDetailsResult {
	var result				: Int;
	var file				: String;
	var creatorAppID		: UInt;
	var consumerAppID		: UInt;
	var title				: String;
	var description			: String;
	var fileHandle			: String;
	var previewFileHandle	: String;
	var owner				: String;
	var timeCreated			: UInt;
	var timeUpdated			: UInt;
	var visibility			: Int;
	var banned				: Bool;
	var tags				: String;
	var tagsTruncated		: Bool;
	var fileName			: String;
	var fileSize			: Int;
	var previewFileSize		: Int;
	var url					: String;
	var fileType			: Int;
}