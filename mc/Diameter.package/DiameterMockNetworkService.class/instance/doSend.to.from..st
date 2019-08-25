internal
doSend: aByteArray to: calledAddr from: callingAddr
	(otherService notNil & autoDispatch) 
		ifTrue: [
			sentPackets add: (DiameterMessage parseFrom: aByteArray) data.
			otherService doReceive: aByteArray ]
		ifFalse: [ messageQueue add: aByteArray ] 
