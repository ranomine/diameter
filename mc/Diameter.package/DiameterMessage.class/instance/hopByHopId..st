as yet unclassified
hopByHopId: anInteger
	"   Hop-by-Hop Identifier

      The Hop-by-Hop Identifier is an unsigned 32-bit integer field (in
      network byte order) that aids in matching requests and replies.
      The sender MUST ensure that the Hop-by-Hop Identifier in a request
      is unique on a given connection at any given time, and it MAY
      attempt to ensure that the number is unique across reboots.  The
      sender of an answer message MUST ensure that the Hop-by-Hop
      Identifier field contains the same value that was found in the
      corresponding request.  The Hop-by-Hop Identifier is normally a
      monotonically increasing number, whose start value was randomly
      generated.  An answer message that is received with an unknown
      Hop-by-Hop Identifier MUST be discarded."

	hopByHopId := anInteger