building
buildBody
	self
		addSectionFromQuery: self internationalJournalQuery
			withTitle: localization internationalReviewedJournal;
		addSectionFromQuery: self topConferenceQuery
			withTitle: localization topConferences;
		addSectionFromQuery: self nationalJournalQuery
			withTitle: localization nationalReviewedJournal;
		addSectionFromQuery: self internationalConferenceQuery
			withTitle: localization internationalConference;
		addSectionFromQuery: self nationalConferenceQuery
			withTitle: localization nationalReviewedConference;
		addSectionFromQuery: self invitedQuery
			withTitle: localization invitedPapers;
		addSectionFromQuery: self bookChapterQuery
			withTitle: localization bookChapters;
		addSectionFromQuery: self bookQuery withTitle: localization books;
		addSectionFromQuery: self editorQuery
			withTitle: localization editor;
		addSectionFromQuery: self internationalWorkshopQuery
			withTitle: localization internationalReviewedWorkshops;
		addSectionFromQuery: self PhDAndHabilitationQuery
			withTitle: localization phdAndHdr;
		addSectionFromQuery: self toolDemoQuery
			withTitle: localization toolDemo;
		addSectionFromQuery: self vulgarisationQuery
			withTitle: localization vulgarisation