accessing
inbandSecurityIdAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 299;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger).