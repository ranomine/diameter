delegated
onReadError: aSocket
	socket == aSocket ifFalse: [
		^self].

	self socketError: aSocket.