handler
addHandler: anApplication on: anObject with: aSelector
	handlers at: anApplication put: [:msg | anObject perform: aSelector with: msg]
