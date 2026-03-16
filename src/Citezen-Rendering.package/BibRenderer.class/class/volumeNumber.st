phrases-partial
volumeNumber
	^ BibSequencePhrase new
		addField: #volume;
		add: (BibSequencePhrase new
			initiatorText: '(';	addField: #number; terminatorText: ')');
		yourself