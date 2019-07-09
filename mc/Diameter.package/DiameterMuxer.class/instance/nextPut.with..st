encoding
nextPut: aData with: anApplication
	socket nextPut: (self prepareNext: aData with: anApplication)
