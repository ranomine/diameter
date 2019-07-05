as yet unclassified
xresAVPHeader: aByteArray
	^ AVPHeader new 
		avpCode: 1448;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPOctetString encode: aByteArray).