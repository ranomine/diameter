external-configuration
toExternalDictionary
	^{
		'connectionName' -> connectionName.
		'connectionType' -> 'server'.
		'systemType' -> systemType.
		'allowedRemoteAddress' -> (allowedRemoteAddress ifNotNil: ['.' join: allowedRemoteAddress]).
		'allowedRemotePort' -> allowedRemotePort. 
		'port' -> port } asDictionary