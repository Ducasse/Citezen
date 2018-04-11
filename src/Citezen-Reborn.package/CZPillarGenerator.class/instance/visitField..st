visit
visitField: aField
	
	aField isURL
		ifTrue: [outputStream nextPutAll: '*PDF>'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '*DOI>http://dx.doi.org/'].	
	aField dispatchVisitor: self.
	aField isURL
		ifTrue: [outputStream nextPutAll: '*'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '*'].
