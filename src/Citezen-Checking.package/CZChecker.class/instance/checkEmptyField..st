as yet unclassified
checkEmptyField: aCZField
	(aCZField value = '')
		ifTrue: [ 
			errorStream nextPutAll: 'Warning: Removes empty field: ', aCZField key; cr.
			^ false ].
	
	^ true