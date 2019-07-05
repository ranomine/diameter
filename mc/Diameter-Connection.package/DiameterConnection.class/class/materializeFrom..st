materializing
materializeFrom: aDictionary
	(aDictionary at: 'connectionType') = 'client' ifFalse: [
		^nil].

	^self new
		connectionName: (aDictionary at: 'connectionName');
		systemType: (aDictionary at: 'systemType');
		hostname: (aDictionary at: 'hostname');
		port: (aDictionary at: 'port');
		yourself