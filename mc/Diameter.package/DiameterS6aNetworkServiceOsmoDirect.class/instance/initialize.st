initialization
initialize
	super initialize.

	conn := OsmoMessageDirectConnection new.
	delegate := OsmoMessageDiameterReadDelegate new.
	delegate onConnect: [:dispatcher | self registerOn: dispatcher].
	conn readDelegate: delegate.