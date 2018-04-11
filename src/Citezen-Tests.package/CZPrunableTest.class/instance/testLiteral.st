testing
testLiteral
	|result|
	phrase := BibLiteralPhrase text: 'ABCD'.
	result := visitor visit: phrase.
	self deny: result. "not prunable"