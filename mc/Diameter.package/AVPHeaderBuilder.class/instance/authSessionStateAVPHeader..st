accessing
authSessionStateAVPHeader: anInteger
	^AVPHeader new 
		avpCode: 277;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPEnumerated encode: anInteger).