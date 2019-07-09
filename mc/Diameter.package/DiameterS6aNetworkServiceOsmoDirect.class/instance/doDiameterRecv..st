as yet unclassified
doDiameterRecv: aMsg
	ModuleBoundary runSynchronous: [
		LogDataPayload value: aMsg.
		self doReceive: aMsg
	]