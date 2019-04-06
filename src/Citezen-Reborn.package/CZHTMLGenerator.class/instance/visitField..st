visiting
visitField: aField

	self outputStream nextPutAll: '<span class="',aField key,'">'.
	
	aField isURL
		ifTrue: [outputStream nextPutAll: '<a href="'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '<a href="https://doi.org/'].	
	aField dispatchVisitor: self.
	aField isURL
		ifTrue: [outputStream nextPutAll: '">PDF</a>'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '">DOI</a>'].
	outputStream nextPutAll: '</span>'.

