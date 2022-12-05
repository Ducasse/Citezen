phrases-partial
containmentIn: containerField
	^ BibSequencePhrase new
		addField: containerField;
		add: self volumeNumber;
		add: self pagination;
		separatorText: ' ';
		yourself