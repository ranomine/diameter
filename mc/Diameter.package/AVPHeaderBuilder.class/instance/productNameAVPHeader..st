accessing
productNameAVPHeader: aString
	^AVPHeader new 
		avpCode: 269;
		avpFlagMandatory: false;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUTF8String encode: aString).