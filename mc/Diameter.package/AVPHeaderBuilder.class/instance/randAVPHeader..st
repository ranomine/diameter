as yet unclassified
randAVPHeader: aByteArray
	^ AVPHeader new 
		avpCode: 1447;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPOctetString encode: aByteArray).