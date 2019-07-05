accessing
vendorIdAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 266;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger).