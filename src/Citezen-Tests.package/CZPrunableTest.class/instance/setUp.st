setup
setUp
	entry := (CZEntry type: CZEntry article)
				key: #foobar;
				at: #author put: 'A';
				at: #title put: 'T';
				at: #journal put: 'J';
				at: #year put: 'Y';
				yourself.
	visitor := BibPhrasePrunableEvaluator new entry: entry