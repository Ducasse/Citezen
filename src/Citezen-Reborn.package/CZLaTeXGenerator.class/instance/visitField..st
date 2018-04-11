visiting
visitField: aField
	"We should probably use phrases instead of doing everything ourselves."
	
	aField key = CZPool volume ifTrue: [self outputStream nextPutAll: 'Volume '].
	aField key = CZPool pages ifTrue: [self outputStream nextPutAll: 'pp. '].

	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: ' ', t].
	aField dispatchVisitor: self.
	"One day I have to think about this dispatch ugly point"
	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: '}'].
	aField key = CZPool editor
		ifTrue: [ self outputStream nextPutAll: ' ed.'].