as yet unclassified
scheduleCER
	| diameterMessage command |
	diameterMessage := (SMPPBindTransceiver new)
		    systemType: systemType;
		    version: 16r01;
		    numberingPlanIndicator: 0;
		    typeOfNumber: 0;
		    addressRange: #[];
		    yourself.
	command := DiameterCommand initWith: diameterMessage.
	command
		onResult: [:res |
			boundReceiver := true.
			boundSender := true.
			self startEnquireLink];
		onError: [:err | self linkFailed];
		onTimeout: [ self linkFailed].
	self scheduleCommand: command
