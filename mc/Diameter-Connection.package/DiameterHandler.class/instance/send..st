as yet unclassified
send: aCommand
	| seq  header message |
	seq := self nextHopByHopId.
	header := (SMPPPDUHeader new)
		    hopByHopId: seq;
		    commandId: aCommand commandType;
		    commandStatus: 0;
		    yourself.
	message := (SMPPMessage new)
		    header: header;
		    body: aCommand body;
		    yourself.

	"Remember that we want a response. TODO add timeout handling"
	pendingCommands at: seq put: aCommand.
	connection sendDirect: message toMessage asByteArray
