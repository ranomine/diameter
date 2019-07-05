accessing
authenticationInfoAVPHeader: anInteger rand: randByteArray xres: xresByteArray autn: autnByteArray kasme: kasmeByteArray
	^AVPHeader new 
		avpCode: 1413;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: true;
		avpVendorId: 10415;
		avpData: (AVPGrouped encode: { 
			self 
				eUTRANVectorAVPHeader: anInteger 
				rand: randByteArray 
				xres: xresByteArray 
				autn: autnByteArray 
				kasme: kasmeByteArray
		}).