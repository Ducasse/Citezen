building
generateTeamBibliography2

	| docBuilder |
	docBuilder := CZPillarDocBuilder new
		nameOfResultingFile: 'publications' ;
		perYear: true;
		years: (2007 to: Year currentYearNumber);
		withHeader;
		headerString: ' Publications';
		keysOfBlackListedEntries: self blackListedEntries;
		bibset: self workingBibSet;
		bodySpecification: #( internationalJournal  topConference internationalConference  nationalJournal nationalConference  invitedPaper bookChapter book 
		booklet PhDAndHabilitation internationalWorkshop toolDemo technicalReport vulgarisation ) ; 
		fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi #'hal-id' #pdf);
		setFilteringOn.
	docBuilder generate 