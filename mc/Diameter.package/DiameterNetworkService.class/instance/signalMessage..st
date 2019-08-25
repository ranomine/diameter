registration
signalMessage: msg
	<diameterMethod>
	"Inform the upper layer about data"
	on_data ifNotNil: [
		on_data cull: msg ]