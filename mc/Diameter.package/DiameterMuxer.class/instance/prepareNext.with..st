accessing
prepareNext: aData with: aStream
	"Write the data onto the stream"

	| msg |
	aData size > 65535 
	    ifTrue: 
		[self logError: 'Too much data' area: #ipa.
		self error: 'Too much data'].
	msg := MessageBuffer new.
	aStream isArray 
	    ifTrue: 
		[msg putLen16: aData size + aStream size - 1.
		msg putByteArray: aStream asByteArray]
	    ifFalse: 
		[msg putLen16: aData size.
		msg putByte: aStream].
	msg putByteArray: aData.
	^msg asByteArray
