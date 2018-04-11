setup
setUp
	entry := (CZEntry type: CZEntry article)
				key: #foobar;
				at: #author put: 'A';
				at: #title put: 'T';
				at: #journal put: 'J';
				at: #year put: '4';
				yourself.
	phrase := BibSequencePhrase with: { 
						(BibFieldRef field: #author).
						(BibFieldRef field: #title).
						(BibFieldRef field: #journal).
						(BibFieldRef field: #year)}.
	renderer := BibTextRenderer new