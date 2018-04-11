printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self lastNames
		do: [:name | aStream nextPutAll: name]
		separatedBy: [aStream space].
	aStream nextPutAll: ', '.
	self firstNames
		do: [:name | aStream nextPutAll: name]
		separatedBy: [aStream space].
	aStream nextPut: $)