tests
testVisitEntryWithNoFieldProducesEmpty

	| p library visitor |
	library := self library.
	p := BibSequencePhrase new
		     addField: #editor;
		     terminatorText: ' (Ed.)';
		     yourself.
	visitor := BibTextRenderer new.
	visitor render: p for: entry.
	self assert: visitor contents isEmpty