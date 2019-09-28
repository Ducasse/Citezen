API
generate
	generators do: [ :genClass | 
		| builder |
		builder := genClass new
			fileNamed: 'rmod.bib';
			authorMatchingString: '*', 'Ducasse', '*';
			fieldOrder:  #(#author #title #chapter #journal #booktitle #volume #pages #publisher #collection #school #year #pdf);
			bodySpecification: #(#internationalJournal  #topConference #internationalConference #nationalJournal #nationalConference #invitedPaper #bookChapter #book #editor #internationalWorkshop #toolDemo #vulgarisation #PhDAndHabilitation);
			setFilteringOn.
		builder generate.	
		]