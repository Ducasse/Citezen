printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	entries size printOn: aStream.
	aStream nextPutAll: ' entries, '.
	macros size printOn: aStream.
	aStream nextPutAll: ' macros)'