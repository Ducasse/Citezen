API
generate
	generators do: [ :genClass | 
		| builder |
		builder := genClass new
			fileNamed: 'rmod.bib';
			authorMatchingString: '*', 'Ducasse', '*';
			bodySpecification: #( #PhDAndHabilitation #internationalJournal #nationalJournal #topConference #internationalConference  #nationalConference #invitedPaper #bookChapter #book #editor #internationalWorkshop #toolDemo #vulgarisation);
			setFilteringOn.
		builder generate.	
		]