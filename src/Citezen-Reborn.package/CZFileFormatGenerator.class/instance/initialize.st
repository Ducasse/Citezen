initialize
initialize
	
	super initialize.
	"by default we write to a simple in memory stream"
	self outputStream:  String new writeStream.
	self fieldSeparatorString: self defaultFieldSeparatorString