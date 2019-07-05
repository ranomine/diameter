accessing
firmwareRevisionAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 267;
		avpFlagMandatory: false;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPUnsigned32 encode: anInteger).