as yet unclassified
vendorSpecificApplicationIdAVPHeader: authApplicationId vendorId: vendorId
	| auth vendor |
	auth := self authApplicationIdAVPHeader: authApplicationId.
	vendor := self vendorIdAVPHeader: vendorId.
	^AVPHeader new 
		avpCode: 260;
		avpFlagMandatory: true;
		avpFlagProtected: false;
		avpFlagVendor: false;
		avpData: (AVPGrouped encode: 
			{ auth . vendor }).