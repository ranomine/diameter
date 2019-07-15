as yet unclassified
initialize
	super initialize.
	started := false.
	reconnectTimeout := 1.
	readDelegate := OsmoMessageReadDelegate new.