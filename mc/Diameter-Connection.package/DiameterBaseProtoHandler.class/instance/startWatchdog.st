initialize
startWatchdog
	| command dwrBuilder dwrMessage |
	watchdogTimer ifNotNil: [ watchdogTimer cancel ].
	dwrBuilder := DWRDiameterMessageBuilder new
		diameterFlags: 16r80;
		applicationId: DiameterConstants applicationBase;
		endToEndId: 877;
		originHostAVPHeader: diameterConnection localHost;
		originRealmAVPHeader: diameterConnection localRealm;
		originStateIdAVPHeader: 1531314099.
	dwrMessage := dwrBuilder make.
	diameterConnection diameterDialoguesMgr createLocalDialogue: dwrMessage.
	command := DiameterCommand initWith: dwrMessage.
	command
		onResult: [ :res | 
			diameterConnection diameterDialoguesMgr removeDialogue: dwrMessage.
			watchdogTimer := TimerScheduler instance
				scheduleInSeconds: watchdogTimeout
				block: [ self startWatchdog ] ];
		onError: [ :err | self linkFailed ];
		onTimeout: [ self linkFailed ];
		yourself.
	self scheduleCommand: command