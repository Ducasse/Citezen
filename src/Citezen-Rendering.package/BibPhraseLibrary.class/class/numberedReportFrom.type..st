phrases-partial
numberedReportFrom: institution type: aString 
	^ (BibSequencePhrase new)
		addBlockWithField: #author;
		addBlockWithField: #title;
		add: (((BibSequencePhrase new)
					add: ((BibSequencePhrase new)
								add: (self field: #type default: aString);
								addField: #number;
								separatorText: ' ';
								yourself);
					addField: institution;
					addField: #address;
					add: self locationMonthYear;
					separatorText: ', ';
					yourself) blockNamed: #publishing);
		addBlockWithField: #note;
		separatorText: '. ';
		terminatorText: '.'