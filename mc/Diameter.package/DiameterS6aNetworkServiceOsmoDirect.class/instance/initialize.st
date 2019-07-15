initialization
initialize
	super initialize.
	conn := OsmoMessageDirectConnection new
		reconnectTimeout: 30;
		yourself.
	delegate := OsmoMessageDiameterReadDelegate new
		diameterConnection: self; 
		yourself.
	delegate onConnect: [ :dispatcher | self registerOn: dispatcher ].
	conn readDelegate: delegate