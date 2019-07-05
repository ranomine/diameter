accessing
originRealmAVPHeader: aString
	^AVPHeader new 
		avpCode: 296;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPOctetString encode: aString) asByteArray.