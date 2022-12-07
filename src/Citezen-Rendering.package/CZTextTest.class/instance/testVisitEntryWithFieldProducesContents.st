tests
testVisitEntryWithFieldProducesContents

	| p library visitor |
	library := self library.
	p := BibSequencePhrase new
		     addField: #author;
		     terminatorText: ' (Cool.)';
		     yourself.
	visitor := BibTextRenderer new.
	visitor render: p for: entry.
	self
		assert: visitor contents
		equals: 'St\''ephane Ducasse and Damien Pollet (Cool.)'