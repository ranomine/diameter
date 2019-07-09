private
initializeHandlers
	(handlers := Dictionary new)
	    at: DiameterConstants cer put: #handleCER:;
	    at: DiameterConstants cea put: #handleCEA:;
	    at: DiameterConstants dwr put: #handleDwr:;
	    at: DiameterConstants dwa put: #handleDwa:
