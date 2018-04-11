testing
testSequence
	|result|
	phrase := BibSequencePhrase new addFields: #(year author).
	result := visitor visit: phrase.
	self deny: result. "not prunable"
	
	phrase := BibSequencePhrase new addFields: #(volume number month).
	result := visitor visit: phrase.
	self assert: result "prunable"
