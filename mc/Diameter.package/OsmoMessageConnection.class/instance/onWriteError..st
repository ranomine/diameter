delegated
onWriteError: aSocket
	socket == aSocket ifFalse: [
		^self].

	self socketError: aSocket.