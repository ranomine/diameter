internal
doReceive: aByteArray
	| msg |
	msg := DiameterMessage decode: aByteArray.
	"Double dispatch to the Diameter Message"
	msg diameterNetworkServiceDispatch: self