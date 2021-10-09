visit
visitField: aField
	
	aField key = HALID ifTrue: [ ^ self outputStream nextPutAll: (self halHrefForField: aField) ].	
	aField isURL 	
		ifTrue: [outputStream nextPutAll:  '*URL>' ].
	aField isPDF
		ifTrue: [outputStream nextPutAll: '*PDF>'].
	aField isDoi
		ifTrue: [outputStream nextPutAll: '*DOI>https://doi.org/'].	
			
	fieldEmbellishingTableStart at: aField key ifPresent: [:t | self outputStream nextPutAll: ' ', t].
	aField dispatchVisitor: self.
	fieldEmbellishingTableEnd at: aField key ifPresent: [:t | self outputStream nextPutAll: t].		

	aField isDoi | aField isPDF | aField isURL
		ifTrue: [outputStream nextPutAll: '*'].
