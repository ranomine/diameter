initialization
initialize
	super initialize.
	nextSeq := 1.
	transportConnected := false.
	pendingCommands := Dictionary new.

	"Timers from 7.2 Timer Definitions"
	watchdogTimeout := 2.
	inactivityTimeout := 10 * 60.
	responseTimeout := 3 * 60.
	