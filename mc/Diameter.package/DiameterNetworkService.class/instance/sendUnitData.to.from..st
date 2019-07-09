sending
sendUnitData: aByteArray to: calledAddr from: callingAddr
	"Send data to a specified address or raise an exception if the address is
	not routable."
	"Q.711 wants us to have:
	   * Called address
	   * Calling address
	   * Sequence ControlaByteArray
	   * Return Option
	   * Importance
	   * User Data"
	| udt routing |
	udt := SCCPUDT initWith: calledAddr calling: callingAddr data: aByteArray.
	routing := self selectRouteTo: calledAddr from: callingAddr.

	"TODO: not very clever.. This routing is not really though out. There should be default
	point codes? Why is there a default route? I want to make some quick progress right now."
	self flag: #todo.
	^routing isNil
		ifTrue: [
			self doSend: udt toMessage asByteArray to: 0 from: 0]
		ifFalse: [
			self
				doSend: udt toMessage asByteArray
				to: (routing at: 'dpc')
				from: (routing at: 'opc')]