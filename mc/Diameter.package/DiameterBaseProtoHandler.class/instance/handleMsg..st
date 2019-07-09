dispatch
handleMsg: aMsg
	| selector |
	selector := self class handlers at: aMsg first asInteger
		    ifAbsent: 
			[self 
			    logError: 'Diameter message not understood ' , aMsg first asInteger asString
			    area: #diameter.
			^false].
	self perform: selector with: aMsg
