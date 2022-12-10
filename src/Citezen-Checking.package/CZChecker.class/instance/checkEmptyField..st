as yet unclassified
checkEmptyField: aCZField
	(aCZField value = '')
		ifTrue: [ 
			errorStream 
				nextPutAll: 'Warning: Removes empty field: ';
				nextPutAll: aCZField key;
				cr.
			^ false ].
	
	^ true