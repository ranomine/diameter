initialize
linkFailed
	connectionIsOpen := false.
	watchdogTimer ifNotNil: [ watchdogTimer cancel ].
	pendingCommands do: [ :aCommand | aCommand cancel ]