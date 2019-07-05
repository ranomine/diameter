accessing
originHostAVPHeader: aString
	^AVPHeader new 
		avpCode: 264;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPOctetString encode: aString) asByteArray.