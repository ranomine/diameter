routing
selectRouteTo: calledAddress from: callingAddress

	"Do we know where to send things?"
	(calledAddress pointCode isNil not and: [callingAddress isNil not])
		ifTrue: [^Dictionary new
					at: 'dpc' put: calledAddress pointCode;
					at: 'opc' put: callingAddress pointCode;
					yourself].

	"Global Title Translation and other buzzwords here... we would need to
	look at the routing indicator for both of it. Currently we assume a default
	target."
	self flag: #todo. "See above".
	^self defaultRoute.