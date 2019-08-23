creation
handleCommand: aCommand forHandler: aHandler
	(DiameterBaseCommands allSubclasses
		detect: [ :subclass | subclass commandCode = aCommand commandCode ])
		newRequestwith: aCommand
		forHandler: aHandler