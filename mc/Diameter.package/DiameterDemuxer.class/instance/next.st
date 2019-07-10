reading
next
	"Return a tuple of stream and bytearray"
	"   0                   1                   2                   3
       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |    Version    |                 Message Length                |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      | Command Flags |                  Command Code                 |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                         Application-ID                        |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                      Hop-by-Hop Identifier                    |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                      End-to-End Identifier                    |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"

	| commandCode size applicationId data flags version endToEndId hopByHopId |
	version := socket nextByte.
	size := socket nextUint24.
	flags := socket nextByte.
	commandCode := socket nextUint24.
	applicationId := socket nextUint32.
	hopByHopId := socket nextUint32.
	endToEndId := socket nextUint32.
	data := socket next: ( size - 20 ).

	"I know about extensions. Check if this is..."
	applicationId = DiameterConstants applicationBase
	    ifTrue: 
		[applicationId := Array with: applicationId with: data first asInteger.
		data := data allButFirst].
	^Array with: applicationId with: data
