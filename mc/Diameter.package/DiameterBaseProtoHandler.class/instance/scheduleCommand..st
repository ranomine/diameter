initialize
scheduleCommand: aCommand
	aCommand scheduledOn: self.
	self send: aCommand