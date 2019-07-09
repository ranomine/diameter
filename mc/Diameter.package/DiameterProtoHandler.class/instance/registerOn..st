initialize
registerOn: aDispatcher
	aDispatcher 
	    addHandler: DiameterConstants applicationBase
	    on: self
	    with: #handleMsg:
