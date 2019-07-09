initialization
initialize
	super initialize.
	conn := OsmoMessageDirectConnection new
		reconnectTimeout: 30;
		yourself.
	delegate := OsmoMessageDiameterReadDelegate new.
	delegate onConnect: [ :dispatcher | self registerOn: dispatcher ].
	conn readDelegate: delegate