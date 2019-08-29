as yet unclassified
dispatchStateToInternalFrom: anOrigin to: aDestination for: aTracker
	^ self isRequest
		ifTrue: [ aTracker toInternalDiameterRequestFrom: anOrigin to: aDestination withMessage: self ]
		ifFalse: [ aTracker toInternalDiameterResponseFrom: anOrigin to: aDestination withMessage: self ]