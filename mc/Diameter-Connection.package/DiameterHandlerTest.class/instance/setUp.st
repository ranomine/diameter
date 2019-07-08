initialization
setUp
	"Set-up"
	connection := DiameterMockConnection new.
	handler := DiameterHandler new.
	handler connection: connection.