internal
dispatchOne
	| msg |
	
	[
		"Check if the socket is closed?!"
		msg := DiameterMessage readFrom: socket.
		msg ifNil: [
			self scheduleReconnect].
		handler dispatchMessage: msg
	] on: Error do: [:e | 
		 e pass
	]
