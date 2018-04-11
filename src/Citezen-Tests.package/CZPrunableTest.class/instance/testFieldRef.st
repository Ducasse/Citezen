testing
testFieldRef
	|result|
	phrase := BibFieldRef field: #author.
	result := visitor visit: phrase.
	self deny: result. "not prunable"
	
	phrase := BibFieldRef field: #notexisting.
	result := visitor visit: phrase.
	self assert: result "prunable"