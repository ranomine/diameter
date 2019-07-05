logging
formatForLogging
	^String streamContents: [:stream |
		stream
			nextPutAll: self class printString;
			nextPut: $)]