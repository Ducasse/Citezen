API
generate
	generators do: [ :genClass | 
		| builder |
		builder := genClass new
			fileNamed: 'rmod.bib';
			authorMatchingString: '*', 'Ducasse', '*';
			fieldOrder:  #(#author #editor #title #chapter #journal #booktitle #volume #pages #publisher #collection #school #year #pdf);
			bodySpecification: #(#internationalJournal  #topConference #internationalConference #nationalJournal #nationalConference #invitedPaper #bookChapter #book #editor #internationalWorkshop #toolDemo #vulgarisation #technicalReport #PhDAndHabilitation);
			keysOfBlackListedEntries: #(Berg13b Berg16a Denk14a Denk15a Denk16a Denk18a Denk19a Denk20a Denk21a Anqu17a Denk22a);
			setFilteringOn.
		builder generate.	
		]