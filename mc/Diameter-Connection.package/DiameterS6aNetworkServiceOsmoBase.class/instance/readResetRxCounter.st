as yet unclassified
readResetRxCounter
	| res |
	res := rxCounter.
	rxCounter := 0.
	^res