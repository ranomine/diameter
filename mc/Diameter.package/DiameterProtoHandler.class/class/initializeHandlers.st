private
initializeHandlers
	(handlers := Dictionary new)
	    at: IPAConstants msgPing put: #handlePing:;
	    at: IPAConstants msgPong put: #handlePong:;
	    at: IPAConstants msgIdGet put: #handleIdGet:;
	    at: IPAConstants msgIdAck put: #handleIdAck:
