accessing
sessionIdAVPHeader: aString
	^AVPHeader new 
		avpCode: 263;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUTF8String encode: aString).