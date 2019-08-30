as yet unclassified
dispatchMessages
	messageQueue do: [ :message |
		sentPackets add: (DiameterMessage parseFrom: message) data.
		otherService doReceive: message ]