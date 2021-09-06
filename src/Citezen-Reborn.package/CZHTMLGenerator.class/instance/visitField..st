visiting
visitField: aField

	self outputStream nextPutAll: '<span class="', aField key,'">'.
	(#(#pdf #url #doi) includes: aField key) ifTrue: [ Transcript show: aField; cr ]. 
	aField isPDF
			ifTrue: [outputStream nextPutAll: '<a href="'].
	aField isURL
		ifTrue: [outputStream nextPutAll: '<a href="'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '<a href="https://doi.org/'].	
	aField dispatchVisitor: self.
	aField isURL
		ifTrue: [outputStream nextPutAll: '">URL</a>'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '">DOI</a>'].
	aField isPDF
			ifTrue: [outputStream nextPutAll: '">PDF</a>'].
	outputStream nextPutAll: '</span>'.

