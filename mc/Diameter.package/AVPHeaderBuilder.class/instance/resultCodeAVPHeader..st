accessing
resultCodeAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 268;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (anInteger asByteArrayOfSize: 4).
		"avpData: (AVPUnsigned32 encode: anInteger)."