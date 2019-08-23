private
scheduleCer
	| command cerBuilder cerMessage |
	
	cerBuilder := CERDiameterMessageBuilder new
		diameterFlags: 16r80;
		applicationId: DiameterConstants applicationBase;
		endToEndId: 899;
		originHostAVPHeader: diameterConnection localHost;
		originRealmAVPHeader: diameterConnection localRealm;
		hostIPAddressAVPHeader: #(16r00 16r01 16r7f 16r00 16r00 16r01) asByteArray;
		vendorIdAVPHeader: 10415;
		productNameAVPHeader: 'osmo-diameter';
		originStateIdAVPHeader: 1531314099;
		supportedVendorIdAVPHeader: 10415;
		inbandSecurityIdAVPHeader: 0;
		vendorSpecificApplicationIdAVPHeader: 16777251 vendorId: 10415;
		firmwareRevisionAVPHeader: 1.
	cerMessage := cerBuilder make.
	
	diameterConnection diameterDialoguesMgr createLocalDialogue: cerMessage.
	
	command := DiameterCommand initWith: cerMessage.
	command
		onResult: [ :res | 
			diameterConnection diameterDialoguesMgr removeDialogue: cerMessage.
			connectionIsOpen := true.
			self startWatchdog ];
		onError: [ :err | self linkFailed ];
		onTimeout: [ self linkFailed ].
	self scheduleCommand: command