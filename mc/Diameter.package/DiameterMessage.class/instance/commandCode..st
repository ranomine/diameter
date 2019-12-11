as yet unclassified
commandCode: anInteger
	"   Command Code

      The Command Code field is three octets and is used in order to
      communicate the command associated with the message.  The 24-bit
      address space is managed by IANA (see Section 3.1).  Command Code
      values 16,777,214 and 16,777,215 (hexadecimal values FFFFFE-
      FFFFFF) are reserved for experimental use (see Section 11.2)."

	commandCode := anInteger