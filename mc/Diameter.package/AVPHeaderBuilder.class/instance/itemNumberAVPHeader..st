as yet unclassified
itemNumberAVPHeader: anInteger
	^ AVPHeader new 
		avpCode: 1419;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPUnsigned32 encode: anInteger).