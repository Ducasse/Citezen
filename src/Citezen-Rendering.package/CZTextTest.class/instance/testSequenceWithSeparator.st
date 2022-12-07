tests
testSequenceWithSeparator

	| p library visitor |
	library := self library.
	p := BibSequencePhrase new
		     addField: #author;
		     addField: #title;
		     separatorText: ', ';
		     yourself.
	visitor := BibTextRenderer new.
	visitor render: p for: entry.
	self
		assert: visitor contents
		equals: 'St\''ephane Ducasse and Damien Pollet, Fingerprints'