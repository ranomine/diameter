as yet unclassified
retrieveAvpByCode: anInteger
	self avps
		do: [ :avp | 
			avp avpCode = anInteger
				ifTrue: [ ^ avp ] ].
	^ nil