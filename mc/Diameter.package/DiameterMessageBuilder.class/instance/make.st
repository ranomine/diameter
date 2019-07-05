searching
make
	^DiameterMessage new
		diameterFlags: diameterFlags;
		commandCode: commandCode;
		applicationId: applicationId;
		hopByHopId: hopByHopId;
		endToEndId: endToEndId;
		addAllAvp: { 
			originHostAVPHeader . 
			originRealmAVPHeader 
		}