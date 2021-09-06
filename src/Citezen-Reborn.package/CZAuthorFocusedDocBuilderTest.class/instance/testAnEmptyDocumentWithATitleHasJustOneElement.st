tests
testAnEmptyDocumentWithATitleHasJustOneElement
	"self debug: #testAnEmptyDocumentWithATitleHasJustOneElement"
	
	| builder |
	builder := CZDocBuilder new bibset: bibset.
	builder addTitle: CZTitle new.
	builder document.
	self assert: builder document elements size equals: 1