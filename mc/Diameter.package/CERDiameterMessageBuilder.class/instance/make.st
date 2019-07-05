searching
make
	^super make
		addAllAvp: { 
			hostIPAddressAVPHeader . 
			vendorIdAVPHeader . 
			productNameAVPHeader . 
			originStateIdAVPHeader . 
			supportedVendorIdAVPHeader . 
			inbandSecurityIdAVPHeader . 
			vendorSpecificApplicationIdAVPHeader . 
			firmwareRevisionAVPHeader 
		}