visit
visitField: aField
	
	aField isURL
		ifTrue: [outputStream nextPutAll: '*PDF>'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '*DOI>https://doi.org/'].	
			
	fieldEmbellishingTableStart at: aField key ifPresent: [:t | self outputStream nextPutAll: ' ', t].
	aField dispatchVisitor: self.
	fieldEmbellishingTableEnd at: aField key ifPresent: [:t | self outputStream nextPutAll: t].		
	aField isURL
		ifTrue: [outputStream nextPutAll: '*'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '*'].
