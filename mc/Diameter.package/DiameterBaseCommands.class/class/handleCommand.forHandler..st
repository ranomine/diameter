creation
handleCommand: aCommand forHandler: aHandler
	DiameterBaseCommands allSubclasses
		detect: [ :subclass | 
			subclass commandCode == aCommand commandCode
				ifTrue: [ ^ subclass newRequestwith: aCommand forHandler: aHandler ] ]