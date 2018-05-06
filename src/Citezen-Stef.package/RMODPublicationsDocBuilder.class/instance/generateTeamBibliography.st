building
generateTeamBibliography
	"with this we will be able to do a nocite{*} and get all the references in our lovely report"

	| docBuilder builder |
	docBuilder := CZBblDocBuilder new
		bibset: self class query20122016 workingBibSet;
		bodySpecification: #(PhDAndHabilitation internationalJournal nationalJournal topConference internationalConference  nationalConference  invitedPaper bookChapter book editor internationalWorkshop  toolDemo vulgarisation ) ;
		noHeader; 
		"we cancel the main header since we will have one for each for the raweb"
		setFilteringOn.
	docBuilder generate 