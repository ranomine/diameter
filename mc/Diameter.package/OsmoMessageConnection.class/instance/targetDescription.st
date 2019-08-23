private
targetDescription
	^(WriteStream on: String new)
	    nextPutAll: hostname;
	    nextPut: $:;
	    nextPutAll: port asString;
	    contents
