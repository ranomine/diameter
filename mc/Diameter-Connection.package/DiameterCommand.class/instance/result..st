result dispatch
result: aResult
   self halt.
	timeoutTimer cancel.
	onResult ifNotNil: [:block | block value: aResult]
