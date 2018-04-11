phrases-entries
misc
	^ (BibSequencePhrase new)
		addBlockWithField: #author;
		addBlockWithField: #title;
		add: (((BibSequencePhrase new)
					addField: #howpublished;
					add: self locationMonthYear;
					separatorText: ', ';
					yourself) blockNamed: 'publishing');
		addBlockWithField: #note;
		separatorText: '. ';
		terminatorText: '.'