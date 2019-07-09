external-configuration
toExternalDictionary
	^{
		'class' -> self class name asString.
		'connectionName' -> connectionName.
		'hostname' -> conn hostname.
		'port' -> conn port.
	} asDictionary