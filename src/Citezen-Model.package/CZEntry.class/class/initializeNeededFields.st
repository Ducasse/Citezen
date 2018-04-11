metadata
initializeNeededFields
	"self initializeNeededFields"
	neededFieldsDictionary := Dictionary new.
	
	neededFieldsDictionary 
		at: #article put: {
			CZPool author.
			CZPool title.
			CZPool journal.
			CZPool year. };
		at: #book put: {
			CZPool author .
			CZPool editor .
			CZPool title .
			CZPool publisher .
			CZPool year. };
		at: #booklet put: { CZPool title };
		at: #conference put: {
			CZPool author.
			CZPool title.
			CZPool booktitle.
			CZPool year. };
		at: #inbook put: {
			CZPool author.
			CZPool editor.
			CZPool title. 
			CZPool chapter.
			CZPool pages.
			CZPool publisher.
			CZPool year. };
		at: #incollection put: {
			CZPool author.
			CZPool title.
			CZPool booktitle.
			CZPool year. };
		at: #inproceedings put: {
			CZPool author.
			CZPool title.
			CZPool booktitle.
			CZPool year. };
		at: #manual put: { CZPool title };
		at: #mastersthesis put: {
			CZPool author.
			CZPool title.
			CZPool school.
			CZPool year. };
		at: #misc put: #();
		at: #phdthesis put: {
			CZPool author.
			CZPool title.
			CZPool school.
			CZPool year. };
		at: #proceedings put: {
			CZPool title. 
			CZPool year. };
		at: #techreport put: {
			CZPool author.
			CZPool title.
			CZPool institution.
			CZPool year. };
		at: #unpublished put: {
			CZPool author.
			CZPool title.
			CZPool note. }.

	^ neededFieldsDictionary 
		
	