handler
dispatch: anApplication with: aData
	| handler |
	handler := handlers at: anApplication
		    ifAbsent: 
			[self logError: ('DiameterDispatcher has no registered handler for <1p>' 
				    expandMacrosWith: anApplication)
			    area: #diameter.
			^false].
	handler value: aData
