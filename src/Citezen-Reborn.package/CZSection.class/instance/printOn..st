printing
printOn: aStream

	super printOn: aStream.
	title ifNotNil: [aStream nextPutAll: '('; nextPutAll: title expanded; nextPutAll: ')']