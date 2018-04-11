phrases-entries
unpublished
	^ BibSequencePhrase new
		addBlockWithField: #author;
		addBlockWithField: #title;
		addBlockWithField: #note;
		separatorText: '. '; terminatorText: '.'