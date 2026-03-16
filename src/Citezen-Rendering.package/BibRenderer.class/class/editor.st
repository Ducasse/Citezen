accessing
editor
	^ BibSequencePhrase new
		addField: #editor;
		terminatorText: ' (Ed.)';
		yourself