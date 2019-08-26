internal
doReceive: aMsg
	| msg |
	msg := DiameterMessage decode: aMsg.
	msg diameterNetworkServiceDispatch: self.