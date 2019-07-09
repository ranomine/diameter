private
registerOn: aDispatcher
	aDispatcher addHandler: DiameterConstants applicationS6a on: [:msg | self diameterRecv: msg].