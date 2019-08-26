enquire-link
startWatchdog
	| command |
	watchdogTimer ifNotNil: [watchdogTimer cancel].

	command := (DiameterCommand initWith: SMPPEnquireLink new)
		setTimeout: 5;
		onTimeout: [self linkFailed];
		onError: [:err | "Should not happen?" self linkFailed];
		onResult: [:res |
			watchdogTimer := TimerScheduler instance scheduleInSeconds: watchdogTimeout block: [
				self startWatchdog]];
		yourself.
	self scheduleCommand: command.