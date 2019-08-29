reading
next
	"Return a tuple of stream and bytearray"
	"   0                   1                   2                   3
       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |    Version    |                 Message Length                |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      | Command Flags |                  Command Code                 |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                         Application-ID                        |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                      Hop-by-Hop Identifier                    |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
      |                      End-to-End Identifier                    |
      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"


	| size data version applicationId flags commandCode hopByHopId endToEndId header |
	header := socket next: 20.
	version := header at: 1.
	size := header at: 2.
	size := (size bitShift: 8)	+ (header at: 3	).
	size := (size bitShift: 8) + (header at: 4).
   flags := header at: 5.
   commandCode := header uint24At: 6.
	applicationId := header unsignedLongAt: 9 bigEndian: true.
	hopByHopId := header unsignedLongAt: 13 bigEndian: true.
	endToEndId := header unsignedLongAt: 17 bigEndian: true.
	data := (socket next: size - 20) readStream.

	^Array with: applicationId with: (header, data)
