reading
next
	"Return a tuple of stream and bytearray"

	| size stream data |
	size := socket nextUshort swap16.
	stream := socket nextByte.
	data := socket next: size.

	"I know about extensions. Check if this is..."
	stream = DiameterConstants applicationBase
	    ifTrue: 
		[stream := Array with: stream with: data first asInteger.
		data := data allButFirst].
	^Array with: stream with: data
