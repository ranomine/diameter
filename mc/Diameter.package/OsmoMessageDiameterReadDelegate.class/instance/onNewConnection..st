as yet unclassified
onNewConnection: aSocket
	| handler |
	super onNewConnection: aSocket.

	"Initialize the muxer/demuxer"
	demuxer := DiameterDemuxer initOn: aSocket.
	muxer := DiameterMuxer initOn: aSocket writeQueue.

	"Initialize the dispatcher and proto handler"
 	dispatcher := DiameterDispatcher new.
	dispatcher initialize.
	
	handler := DiameterProtoHandler new
		    registerOn: dispatcher;
		    muxer: muxer;
		    yourself.

	connect_block ifNotNil: [connect_block value: dispatcher].
