as yet unclassified
onConnect: aBlock
	"Call the block when the socket is being connected and the dispatcher
	 is set-up. The callback will have the dispatcher as parameter."
	connect_block := aBlock
