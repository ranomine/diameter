*Diameter-Connection
uint24At: index
	| byte1 byte2 byte3 |
	byte1 := (self at: index) bitShift: 16.
	byte2 := (self at: index + 1) bitShift: 8.
	byte3 := self at: index + 2.
	^ (byte3 bitOr: byte2) bitOr: byte1