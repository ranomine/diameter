private
handlePing: aMsg
	muxer nextPut: (ByteArray with: IPAConstants msgPong)
