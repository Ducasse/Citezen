visiting
visitField: aField
	"We should probably use phrases instead of doing everything ourselves."
	
	aField key = CZFieldPool volume ifTrue: [self outputStream nextPutAll: 'Volume '].
	aField key = CZFieldPool pages ifTrue: [self outputStream nextPutAll: 'pp. '].

	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: ' ', t].
	aField key =  CZFieldPool pdf
		ifTrue: [ self outputStream nextPutAll: '\href{'  ].
	aField dispatchVisitor: self.
	"One day I have to think about this dispatch ugly point"
	fieldEmbellishingTable at: aField key ifPresent: [:t | self outputStream nextPutAll: '}'].
	aField key = CZFieldPool editor
		ifTrue: [ self outputStream nextPutAll: ' ed.'].
	aField key =  CZFieldPool pdf
		ifTrue: [ self outputStream nextPutAll: '}{PDF}'  ].
			
	