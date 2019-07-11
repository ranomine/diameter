*Diameter
scheduleReconnect
	reconnectTimer := TimerScheduler instance scheduleInSeconds: reconnectTimeout block: [ Transcript show: 'doing self reconnect'. self reconnect]