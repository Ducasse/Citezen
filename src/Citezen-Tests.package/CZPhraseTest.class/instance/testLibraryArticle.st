testing
testLibraryArticle
	renderer render: BibPhraseLibrary article for: entry.
	self assert: renderer contents = 'A. T. In J, 4.'