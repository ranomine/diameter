authentication
handleIdGet: aMsg
	| msg |
	msg := MessageBuffer new.
	msg putByte: IPAConstants msgIdResp.
	msg putLen16: token size + 1.
	msg putByte: IPAConstants idtagUnitName.
	msg putByteArray: token asByteArray.
	muxer nextPut: msg asByteArray
