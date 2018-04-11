phrases-partial
acceptanceRate
	^ BibAlternativePhrase new
		add: (BibSequencePhrase new
				add: (BibLiteralPhrase text: 'Acceptance rate: ');
				addField: #acceptnum;
				add: (BibLiteralPhrase text: '/');
				addField: #accepttotal;
				add: (BibLiteralPhrase text: ' = ');
				add: (BibDeferredPhrase block: [:entry | ((entry at: #acceptnum) value asNumber / (entry at: #accepttotal) value asNumber * 100) rounded]);
				add: (BibLiteralPhrase text: '%');
				yourself)
		condition: [ :anEntry | (anEntry hasField: #accepttotal) and: [ anEntry hasField: #acceptnum ] ]