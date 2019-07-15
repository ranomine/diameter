initialization
initialize
	super initialize.
	conn := OsmoMessageDirectConnection new
		reconnectTimeout: 30;
		yourself.
	delegate := OsmoMessageDiameterReadDelegate new
		localHost: self localHost;
		localRealm: self localRealm;
		yourself.
	delegate onConnect: [ :dispatcher | self registerOn: dispatcher ].
	conn readDelegate: delegate