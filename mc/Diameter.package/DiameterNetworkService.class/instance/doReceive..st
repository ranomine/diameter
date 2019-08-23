internal
doReceive: aMsg
	| msg |
	msg := DiameterMessage decode: aMsg.
	"double dispatch to the Diameter message"
	msg diameterNetworkServiceDispatch: self.