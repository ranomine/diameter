accessing
originStateIdAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 278;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger).