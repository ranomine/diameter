initialize
initialize
	super initialize.
	nextSeq := 1.
	pendingCommands := Dictionary new.

	"Timers from 7.2 Timer Definitions"
	watchdogTimeout := 10.
	inactivityTimeout := 10 * 60.
	responseTimeout := 3 * 60.
	