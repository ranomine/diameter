adding
avpNamed: aString
	| avp |
	avp := self avpTypeAvps findAvpInstanceByName: aString.
	^ self retrieveAvpByCode: (avp avpType avpCode).