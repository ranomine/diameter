initialize
nextSequenceNumber
	| seq |
	seq := nextSeq.
	nextSeq := nextSeq + 1.
	(nextSeq > 16r7FFFFFFF)
		ifTrue: [nextSeq := 1].
	^seq