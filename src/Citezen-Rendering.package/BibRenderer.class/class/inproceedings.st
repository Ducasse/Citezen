phrases-entries
inproceedings
	^ (BibSequencePhrase new)
		addBlockWithField: #author;
		addBlockWithField: #title;
		add: ((BibAlternativePhrase rules: { 
							([:e | e hasField: #crossref] -> ((BibSequencePhrase new)
										add: (BibLiteralPhrase text: 'CROSSREF');
										addField: #pages;
										separatorText: ', ';
										yourself))}
					default: ((BibSequencePhrase new)
							add: self editor;
							addField: #booktitle;
							add: (self containmentIn: #series);
							add: self publisherAddress;
							add: self locationMonthYear;
							initiatorText: 'In ';
							separatorText: ', ';
							yourself)) 
						blockNamed: 'publishing');
		addBlockWithField: #note;
		add: self acceptanceRate;
		separatorText: '. ';
		terminatorText: '.'