creation
handleCommand: aCommand
	DiameterBaseCommands allSubclasses
		detect: [ :subclass | 
			subclass commandCode == aCommand commandCode
				ifTrue: [ ^ subclass newRequestwith: aCommand ] ]