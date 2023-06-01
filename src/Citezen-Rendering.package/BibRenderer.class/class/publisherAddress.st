phrases-partial
publisherAddress
	^ BibSequencePhrase new
		addFields: #(publisher address);
		separatorText: ', ';
		yourself