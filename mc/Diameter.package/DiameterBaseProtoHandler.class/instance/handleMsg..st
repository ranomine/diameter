dispatch
handleMsg: aMsg
	| command hopByHopId |
	hopByHopId := aMsg hopByHopId.
	aMsg isAnswer
		ifTrue: [ command := pendingCommands
				removeKey: hopByHopId
				ifAbsent: [ ^ self unhandledResponse: aMsg ].
			aMsg isError
				ifTrue: [ command error: aMsg ]
				ifFalse: [ command result: aMsg ] ]
		ifFalse: [ DiameterBaseCommands handleCommand: aMsg forHandler: self ]