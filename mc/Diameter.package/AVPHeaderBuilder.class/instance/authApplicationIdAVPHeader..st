accessing
authApplicationIdAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 258;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger).