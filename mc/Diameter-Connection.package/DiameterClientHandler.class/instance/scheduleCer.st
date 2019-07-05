as yet unclassified
scheduleCer
	| command body |
	body := (DiameterCer new)
		    version: 16r34;
		    numberingPlanIndicator: 0;
		    typeOfNumber: 0;
		    addressRange: #[];
		    yourself.
	command := DiameterMessage initWith: body.
	command
		onResult: [:res |
			boundReceiver := true.
			boundSender := true.
			self startEnquireLink];
		onError: [:err | self linkFailed];
		onTimeout: [ self linkFailed].
	self scheduleCommand: command
