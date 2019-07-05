accessing
supportedVendorIdAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 265;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger)