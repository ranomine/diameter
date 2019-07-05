as yet unclassified
kasmeAVPHeader: aByteArray
	^ AVPHeader new 
		avpCode: 1450;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPOctetString encode: aByteArray).