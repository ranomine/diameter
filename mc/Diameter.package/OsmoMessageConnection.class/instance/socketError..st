as yet unclassified
socketError: aSocket
	socket := nil.
	self scheduleReconnect.

	"We might not run after this statement"
	aSocket terminate.