as yet unclassified
stop
	started := false.
	socket ifNotNil: [
		[socket terminate] ensure: [socket := nil]].
	reconnectTimer ifNotNil: [reconnectTimer cancel].
	reconnectTimer := nil.
