as yet unclassified
checkDuplicateField: aCZField
	(fieldKeys includes: aCZField key)
		ifTrue: [ 
			errorStream 
				nextPutAll: 'Warning: Removes duplicate field: ';
				nextPutAll: aCZField key; 
				cr.
			^ false ].
	
	fieldKeys add: aCZField key.
	^ true