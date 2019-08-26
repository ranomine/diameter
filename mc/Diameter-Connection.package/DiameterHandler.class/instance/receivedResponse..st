as yet unclassified
receivedResponse: aMessage
	"Search for a response"

	| seq command |
	seq := aMessage hopByHopId.
	command := pendingCommands removeKey: seq
		    ifAbsent: 
			[^self unhandledResponse: aMessage].

	aMessage isRequest
		ifTrue: [command result: aMessage]
		ifFalse: [command error: aMessage]
