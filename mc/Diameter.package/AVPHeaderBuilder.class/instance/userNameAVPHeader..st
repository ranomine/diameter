accessing
userNameAVPHeader: aString
	^AVPHeader new 
		avpCode: 1;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUTF8String encode: aString).