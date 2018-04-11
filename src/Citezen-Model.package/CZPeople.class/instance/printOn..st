printing
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: ' ', self expanded printString.