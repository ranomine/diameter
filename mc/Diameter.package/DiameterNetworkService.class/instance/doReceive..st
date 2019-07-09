internal
doReceive: aMsg
	| msg |
	msg := DiameterMessage decode: aMsg.
	"double dispatch to the UDT message"
	msg diameterNetworkServiceDispatch: self.