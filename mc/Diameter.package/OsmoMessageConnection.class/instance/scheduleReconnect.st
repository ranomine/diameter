private
scheduleReconnect
	reconnectTimer := TimerScheduler instance scheduleInSeconds: reconnectTimeout block: [ self reconnect]