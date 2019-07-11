private
scheduleCer
	| command cerBuilder cerMessage |
	
	cerBuilder := CERDiameterMessageBuilder new
		diameterFlags: 16r80;
		applicationId: 0;
		hopByHopId: 236545;
		endToEndId: 1;
		originHostAVPHeader: 'dev.rh0.sbg.epc.mnc840.mcc310.3gppnetwork.org';
		originRealmAVPHeader: 'epc.mnc840.mcc310.3gppnetwork.org';
		hostIPAddressAVPHeader: #(16r00 16r01 16r7f 16r00 16r00 16r01) asByteArray;
		vendorIdAVPHeader: 10415;
		productNameAVPHeader: 'go-diameter-s6a';
		originStateIdAVPHeader: 1531314099;
		supportedVendorIdAVPHeader: 10415;
		inbandSecurityIdAVPHeader: 0;
		vendorSpecificApplicationIdAVPHeader: 16777251 vendorId: 10415;
		firmwareRevisionAVPHeader: 1.
	cerMessage := cerBuilder make.
	
	command := DiameterCommand initWith: cerMessage.
	command
		onResult: [ :res | 
			connectionIsOpen := true.
			self startWatchdog ];
		onError: [ :err | self linkFailed ];
		onTimeout: [ self linkFailed ].
	self scheduleCommand: command