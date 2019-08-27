as yet unclassified
dispatchStateToInternalOriginHost: anOriginHost for: aTracker
	^ self isRequest
		ifTrue: [ aTracker toInternalDiameterRequestFrom: anOriginHost withMessage: self ]
		ifFalse: [ aTracker toInternalDiameterResponseFrom: anOriginHost withMessage: self ]