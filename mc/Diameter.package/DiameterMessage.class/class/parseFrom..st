parsing
parseFrom: aReadStream
	| version length |
	version := aReadStream next.
	length := aReadStream nextUint24.
	^self basicNew
		diameterFlags: aReadStream next;
		commandCode: aReadStream nextUint24;
		applicationId: aReadStream nextUint32;
		hopByHopId: aReadStream nextUint32;
		endToEndId: aReadStream nextUint32;
		parseAvps: (aReadStream next: length - 20) readStream.