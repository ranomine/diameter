accessing
hostIPAddressAVPHeader: aByteArray
	^AVPHeader new 
		avpCode: 257;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPAddress encode: aByteArray). "useless but why not"