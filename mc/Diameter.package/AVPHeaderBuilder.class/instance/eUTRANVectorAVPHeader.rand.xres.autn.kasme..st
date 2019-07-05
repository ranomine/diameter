as yet unclassified
eUTRANVectorAVPHeader: anInteger rand: randByteArray xres: xresByteArray autn: autnByteArray kasme: kasmeByteArray
	^ AVPHeader new 
		avpCode: 1414;
			avpFlagMandatory: true;
			avpFlagProtected: false;
			avpFlagVendor: true;
			avpVendorId: 10415;
			avpData: (AVPGrouped encode: { 
				(self itemNumberAVPHeader: anInteger) . 
				(self randAVPHeader: randByteArray) . 
				(self xresAVPHeader: xresByteArray) . 
				(self autnAVPHeader: autnByteArray) . 
				(self kasmeAVPHeader: kasmeByteArray) 
			}).