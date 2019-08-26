logging
formatForLogging
	^String streamContents: [:stream |
		stream
			nextPutAll: self class printString;
			nextPutAll: '(remoteHostName=';
			nextPutAll: remoteHostName;
			nextPut: $)]