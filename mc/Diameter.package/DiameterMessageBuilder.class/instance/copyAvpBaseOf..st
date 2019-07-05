instance creation
copyAvpBaseOf: aDiameterMessage
	self 
		"originHostAVPHeader: aDiameterMessage originHostAVPHeader avpData asString;
		originRealmAVPHeader: aDiameterMessage originRealmAVPHeader avpData asString;"
		diameterFlags: aDiameterMessage diameterFlags;
		commandCode: aDiameterMessage commandCode;
		applicationId: aDiameterMessage applicationId;
		hopByHopId: aDiameterMessage hopByHopId;
		endToEndId: aDiameterMessage endToEndId