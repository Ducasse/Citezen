initialize
initializeEnglishEntries
	"self initialize"
	
	English := Dictionary new.
	English at: InternationalReviewedJournal put: 'Refereed Articles in International Journals'.
	English at: TopConferences put: 'Refereed Articles in Top Conferences'.
	English at: NationalReviewedJournal put:  'Refereed Articles in French Journals'.
	English at: InternationalConference put: 'Refereed Articles in International Conferences'.
	English at: NationalReviewedConference put: 'Refereed Articles in National Conferences'.
 	English at: Book put: 'Books'.
	English at: Booklet put: 'Booklets'.
	English at: HandBook put: 'Handbooks'.
	English at: BookChapter put: 'Book Chapters'.
	English at: InvitedPaper put: 'Invited Articles'.
	English at: #editor put: 'Editor'.
	English at: InternationalReviewedWorkshop put: 'Refereed Articles in International Workshops'.
	English at: NationalWorkshop put: 'Articles in National Workshops'.
	English at: PhD put: 'PhD'.
	English at: HDR put: 'Habilitation'.
	English at: PHDAndHdr put: 'PhD and Habilitation'.
	English at: Deliverable put: 'Project Deliverables'.
	English at: TechnicalReport put: 'Technical Reports'.
	English at: ToolDemo put: 'Tool Demos'.
	English at: Periodical put: 'Periodicals and Magazines'.
	English at: Vulgarisation put: 'Vulgarisation Articles'.
	