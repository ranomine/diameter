encoding
nextPut: aData
	socket nextPut: (self prepareNext: aData)
