tests
testIsNotEditorBecauseAuthorOfArticle
	"self debug: #testIsNotEditor"

	| builder |
	builder := CZAuthorFocusedDocBuilder new 
						authorMatchingString: '*Ducasse*';
						bibset: self class Rieg98a.
	self assert: builder workingBibSet size equals: 1.
	
	self assert: (builder workingBibSet select: builder editorQuery) size equals: 0