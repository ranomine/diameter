accessing
destinationRealmAVPHeader: aString
	^AVPHeader new 
		avpCode: 283;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPOctetString encode: aString) asByteArray.