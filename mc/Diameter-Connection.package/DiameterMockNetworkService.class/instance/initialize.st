initialize-release
initialize 
	super initialize.
	autoDispatch := true.
	sentPackets := OrderedCollection new.
	receivedPackets := OrderedCollection new.
	messageQueue := OrderedCollection new.