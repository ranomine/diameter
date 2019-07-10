accessing
prepareNext: aData
	"Write the data onto the stream"

	| msg |
	aData size > 16rFFFFFF
	    ifTrue: 
		[self logError: 'Too much data' area: #diameter.
		self error: 'Too much data'].
	msg := MessageBuffer new.
	msg putByteArray: aData.
	^msg asByteArray
