building
generateTeamBibliography
	"with this we will be able to do a nocite{*} and get all the references in our lovely report"

	| docBuilder |
	docBuilder := CZBblDocBuilder new
		keysOfBlackListedEntries: #(Denk18a Denk19a Denk20a Denk21a Anqu17a Cost20c);
		bibset: self class query20162021 workingBibSet;
		bodySpecification: #(PhDAndHabilitation internationalJournal nationalJournal topConference internationalConference  nationalConference  invitedPaper bookChapter book 
		booklet internationalWorkshop toolDemo technicalReport vulgarisation ) ;
		noHeader; 
		fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi);
		"we cancel the main header since we will have one for each for the raweb"
		setFilteringOn.
	
	docBuilder generate 