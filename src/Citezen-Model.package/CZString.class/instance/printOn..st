printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: '  '.
	aStream nextPutAll: value