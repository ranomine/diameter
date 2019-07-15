initialize
startWatchdog
	| command dwrBuilder dwrMessage |
	watchdogTimer ifNotNil: [ watchdogTimer cancel].
		
	dwrBuilder := DWRDiameterMessageBuilder new
		diameterFlags: 16r80;
		applicationId: DiameterConstants applicationBase;
		endToEndId: 1;
		originHostAVPHeader: self localHost;
		originRealmAVPHeader: self localRealm;
		originStateIdAVPHeader: 1531314099.
	dwrMessage := dwrBuilder make.
	
	command := DiameterCommand initWith: dwrMessage.
	command
		onResult: [ :res | 
			watchdogTimer := TimerScheduler instance scheduleInSeconds: watchdogTimeout block: [
				self startWatchdog ] ];
		onError: [ :err | self linkFailed ];
		onTimeout: [ self linkFailed ];
		yourself.
	self scheduleCommand: command