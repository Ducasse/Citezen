printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self key;
		nextPut: $=.
	self rawValue printOn: aStream.
	aStream nextPut: $)