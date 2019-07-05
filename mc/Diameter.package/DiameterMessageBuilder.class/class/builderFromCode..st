as yet unclassified
builderFromCode: anInteger
	anInteger = 318 ifTrue: [ ^AIRDiameterMessageBuilder ].
	anInteger = 316 ifTrue: [ ^ULRDiameterMessageBuilder ].
	anInteger = 321 ifTrue: [ ^PURDiameterMessageBuilder ].
	anInteger = 323 ifTrue: [ ^NORDiameterMessageBuilder ].
	
	Error signal: 'Unknown commandCode'