phrases-entries
article
	^ (BibSequencePhrase new)
		addBlockWithField: #author;
		addBlockWithField: #title;
		add: ((BibAlternativePhrase rules: { 
							([:e | e hasField: #crossref] -> ((BibSequencePhrase new)
										add: (BibLiteralPhrase text: 'CROSSREF');
										add: self pagination;
										separatorText: ', ';
										yourself))}
					default: ((BibSequencePhrase new)
							add: (self containmentIn: #journal);
							add: self locationMonthYear;
							initiatorText: 'In ';
							separatorText: ', ';
							yourself)) 
						blockNamed: 'publishing');
		addBlockWithField: #note;
		separatorText: '. ';
		terminatorText: '.'