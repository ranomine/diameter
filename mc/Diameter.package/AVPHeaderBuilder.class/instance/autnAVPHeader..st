as yet unclassified
autnAVPHeader: aByteArray
	^ AVPHeader new 
		avpCode: 1449;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPOctetString encode: aByteArray).