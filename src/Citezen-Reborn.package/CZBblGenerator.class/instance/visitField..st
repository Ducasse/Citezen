visiting
visitField: aField
	"We should probably use phrases instead of doing everything ourselves."

	aField key = HALID ifTrue: [ ^ self outputStream nextPutAll: (self halHrefForField: aField) ].
	aField key = DOI ifTrue: [ ^ self outputStream nextPutAll: (self doiHrefForField: aField)].
	aField key = URL ifTrue: [ ^ self outputStream nextPutAll: (self urlHrefForField: aField)].
	"we should not proceed again these values since they are fully transformed."
	
	"for the rest this is just adding nicer information so no return"
	aField key = CZFieldPool volume ifTrue: [self outputStream nextPutAll: 'Volume '].
	aField key = CZFieldPool pages ifTrue: [self outputStream nextPutAll: 'pp. '].
	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: ' ', t].
	aField dispatchVisitor: self.
	"One day I have to think about this dispatch ugly point"
	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: '}'].
	aField key = CZFieldPool editor
		ifTrue: [ self outputStream nextPutAll: ' ed.'].