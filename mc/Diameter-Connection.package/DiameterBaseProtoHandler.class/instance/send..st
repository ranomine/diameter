initialize
send: aCommand
	| seq |
	seq := self nextSequenceNumber.
	aCommand body hopByHopId: seq.

	"Remember that we want a response. TODO add timeout handling"
	pendingCommands at: seq put: aCommand.
	muxer nextPut: aCommand body asEncodedMessage
