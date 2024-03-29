tests
testSequenceWithInitiator

	| p library visitor |
	library := self library.
	p := BibSequencePhrase new
		    addField: #author;
		    initiatorText: 'In ';
		     yourself.
	visitor := BibTextRenderer new.
	visitor render: p for: entry.
	self
		assert: visitor contents
		equals: 'In St\''ephane Ducasse and Damien Pollet'