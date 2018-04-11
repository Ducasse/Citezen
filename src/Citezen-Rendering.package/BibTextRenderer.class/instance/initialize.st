initialize-release
initialize
	super initialize.
	self setStream: (WriteStream on: String new)