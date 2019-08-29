internal
doReceive: aMsg
	| msg |
	self signalMessage: aMsg
"	msg := DiameterMessage decode: aMsg.
	msg diameterNetworkServiceDispatch: self."