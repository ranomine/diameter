parsing
decode: aByteArray
"	| length |
	length := aByteArray uint24At: 2."
	^self basicNew
		version: (aByteArray at: 1);
		diameterFlags: (aByteArray at: 5);
		commandCode: (aByteArray uint24At: 6);
		applicationId: (aByteArray unsignedLongAt: 9 bigEndian: true);
		hopByHopId: (aByteArray unsignedLongAt: 13 bigEndian: true);
		endToEndId: (aByteArray unsignedLongAt: 17 bigEndian: true);
		parseAvps: (ReadStream on: (aByteArray allButFirst: 20));
		yourself.