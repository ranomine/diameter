private
reconnect

	[
		reconnectTimer := nil.
		self logNotice: 'Attempting to connect to ' , self targetDescription area: #osmo.
		self connect
	] on: self class connectionException do: [:e |
		e logError: 'Failed to connect to ' , self targetDescription area: #osmo.
		self scheduleReconnect
	].