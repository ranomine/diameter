codec
decode: aDiameterMessage 
	aDiameterMessage messageType: (self findMessageType: aDiameterMessage).
	^aDiameterMessage