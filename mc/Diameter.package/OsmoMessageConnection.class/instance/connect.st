private
connect
	| tcpSocket |
	tcpSocket := (SocketStream openConnectionToHostNamed: hostname port: port)
					binary; noTimeout; yourself.
	socket := self class osmoMessageSocket new
					errorDelegate: self;
					readDelegate: readDelegate;
					socket: tcpSocket;
					yourself.
	readDelegate onNewConnection: socket.
	socket startHandling.