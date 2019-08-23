parsing
parseFrom: aReadStream
	| version length |
	version := aReadStream next.
	length := aReadStream uint24.
	^self basicNew
		diameterFlags: aReadStream next;
		commandCode: aReadStream uint24;
		applicationId: aReadStream uint32;
		hopByHopId: aReadStream uint32;
		endToEndId: aReadStream uint32;
		parseAvps: (aReadStream next: length - 20) readStream.