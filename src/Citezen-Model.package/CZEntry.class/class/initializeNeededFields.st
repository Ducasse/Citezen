currently unused
initializeNeededFields
	"no used for now."


	"self initializeNeededFields"
	neededFieldsDictionary := Dictionary new.
	"this is super boring!!!!
	With a nice hierarchy each entry would declare its fields and we would be done."
	neededFieldsDictionary 
		at: Article put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool journal.
			CZFieldPool year. };
		at: Book put: {
			CZFieldPool author .
			CZFieldPool editor .
			CZFieldPool title .
			CZFieldPool publisher .
			CZFieldPool year. };
		at: Booklet put: { CZFieldPool title };
		at: Conference put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: InBook put: {
			CZFieldPool author.
			CZFieldPool editor.
			CZFieldPool title. 
			CZFieldPool chapter.
			CZFieldPool pages.
			CZFieldPool publisher.
			CZFieldPool year. };
		at: InCollection put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: InProceedings put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: Manual put: { CZFieldPool title };
		at: MastersThesis put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool school.
			CZFieldPool year. };
		at: Misc put: #();
		at: PhDThesis  put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool school.
			CZFieldPool year. };
		at: Proceedings put: {
			CZFieldPool title. 
			CZFieldPool year. };
		at: TechReport put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool institution.
			CZFieldPool year. };
		at: Unpublished put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool note. }.

	^ neededFieldsDictionary 
		
	