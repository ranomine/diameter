initialization
initialize
	super initialize.
	handler := DiameterClientHandler new
					connection: self;
					yourself.