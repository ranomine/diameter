private
diameterRecv: aMsg

	"This atomicity is not guranteed"
	rxCounter := rxCounter + 1.
	self doDiameterRecv: aMsg.