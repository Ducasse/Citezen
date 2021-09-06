tests
testIsNotEditor
	"self debug: #testIsNotEditor"

	| builder |
	builder := CZAuthorFocusedDocBuilder new 
						authorMatchingString: '*Ducasse*';
						bibset: self class Lanz02b.
	self assert: builder workingBibSet size equals: 1.
	
	self assert: (builder workingBibSet select: builder editorQuery) size equals: 0