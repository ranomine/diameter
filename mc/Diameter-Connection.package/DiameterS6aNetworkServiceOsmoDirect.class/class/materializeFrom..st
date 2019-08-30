materializing
materializeFrom: aDictionary
	^self new
		connectionName: (aDictionary at: 'connectionName');
		hostname: (aDictionary at: 'hostname') port: (aDictionary at: 'port');
		yourself