testing
testAlternative
	|result|
	phrase := BibAlternativePhrase new add: (BibLiteralPhrase text: 'foo')
			condition: [:anEntry | anEntry hasField: #author] .
	result := visitor visit: phrase.
	self deny: result. "not prunable"
	
	phrase := BibAlternativePhrase new add: (BibLiteralPhrase text: 'foo')
			condition: [:anEntry | anEntry hasField: #notexist] .
	result := visitor visit: phrase.
	self assert: result "not prunable"