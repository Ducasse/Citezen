phrases-entries
book
	^ (BibSequencePhrase new)
		addBlockWithField: #author;
		add: self editor;
		add: ((BibAlternativePhrase rules: { 
							([:e | e hasField: #crossref] -> ((BibSequencePhrase new)
										add: (BibLiteralPhrase text: 'CROSSREF');
										add: self pagination;
										separatorText: ', ';
										yourself))}
					default: ((BibSequencePhrase new)
							addField: #title;
							add: self edition;
							add: (self containmentIn: #series);
							add: self publisherAddress;
							add: self locationMonthYear;
							"initiatorText: 'In ';" "This makes sense for a chapter in a book, not a book itself -- on"
							separatorText: ', ';
							yourself)) 
						blockNamed: 'publishing');
		addBlockWithField: #note;
		separatorText: '. ';
		terminatorText: '.'