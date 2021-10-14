printing
printOn: aStream

	super printOn: aStream.
	level ifNotNil: [ title level printOn: aStream ].
	title ifNotNil: [aStream nextPutAll: '('; nextPutAll: title expanded; nextPutAll: ')'].
	