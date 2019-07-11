initialize
startWatchdog
	| command dwrBuilder dwrMessage |
	watchdogTimer ifNotNil: [ watchdogTimer cancel].
		
	dwrBuilder := DWRDiameterMessageBuilder new
		diameterFlags: 16r80;
		applicationId: 0;
		hopByHopId: 236545;
		endToEndId: 1;
		originHostAVPHeader: 'dev.rh0.sbg.epc.mnc840.mcc310.3gppnetwork.org';
		originRealmAVPHeader: 'epc.mnc840.mcc310.3gppnetwork.org';
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