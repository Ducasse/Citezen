building
generateTeamBibliography

	| docBuilder |
	docBuilder := CZPillarDocBuilder new
		nameOfResultingFile: 'publications' ;
		withHeader;
		headerString: ' Publications';
		keysOfBlackListedEntries: self blackListedEntries;
		bibset: self workingBibSet;
		bodySpecification: #( internationalJournal  topConference internationalConference  nationalJournal nationalConference  invitedPaper bookChapter book 
		booklet PhDAndHabilitation internationalWorkshop toolDemo technicalReport vulgarisation ) ; 
		fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id');
		setFilteringOn.
	docBuilder generate 