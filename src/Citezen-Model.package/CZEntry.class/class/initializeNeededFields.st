class initialization
initializeNeededFields
	"self initializeNeededFields"
	neededFieldsDictionary := Dictionary new.
	
	neededFieldsDictionary 
		at: #article put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool journal.
			CZFieldPool year. };
		at: #book put: {
			CZFieldPool author .
			CZFieldPool editor .
			CZFieldPool title .
			CZFieldPool publisher .
			CZFieldPool year. };
		at: #booklet put: { CZFieldPool title };
		at: #conference put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: #inbook put: {
			CZFieldPool author.
			CZFieldPool editor.
			CZFieldPool title. 
			CZFieldPool chapter.
			CZFieldPool pages.
			CZFieldPool publisher.
			CZFieldPool year. };
		at: #incollection put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: #inproceedings put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool booktitle.
			CZFieldPool year. };
		at: #manual put: { CZFieldPool title };
		at: #mastersthesis put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool school.
			CZFieldPool year. };
		at: #misc put: #();
		at: #phdthesis put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool school.
			CZFieldPool year. };
		at: #proceedings put: {
			CZFieldPool title. 
			CZFieldPool year. };
		at: #techreport put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool institution.
			CZFieldPool year. };
		at: #unpublished put: {
			CZFieldPool author.
			CZFieldPool title.
			CZFieldPool note. }.

	^ neededFieldsDictionary 
		
	