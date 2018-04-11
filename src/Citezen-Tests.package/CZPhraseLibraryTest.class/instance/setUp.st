setup
setUp
	entry := (CZEntry type:  CZEntry article)
				key: #foobar;
				at: #url put: 'U';
				at: #keywords put: 'K';
				at: #fire put: 'F';
				at: #water put: 'W';
				yourself.
	phrase := (BibSequencePhrase new)
				addBlockWithField: #url;
				addBlockWithField: #keywords;
				add: ((BibAlternativePhrase rules: { 
									([:e | e hasField: #here] -> ((BibSequencePhrase new)
												add: (BibLiteralPhrase text: 'HERE');
												addField: #weight;
												separatorText: '/ ';
												yourself))}
							default: ((BibSequencePhrase new)
									addFields: #(#water #fire );
									separatorText: '| ';
									yourself)) 
								named: 'elements');
				addBlockWithField: #note;
				separatorText: '!? ';
				terminatorText: '...';
				named: 'nimp'.
	renderer := BibBblRenderer new