printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	
	value
		do: 
			[ :each | aStream nextPutAll: (
				(each isKindOf: CZValue) 
					ifTrue: [ each expanded] 
					ifFalse: [ each ]) ]
		separatedBy: 
			[aStream nextPutAll: ' # '].
		
	aStream nextPut: $)