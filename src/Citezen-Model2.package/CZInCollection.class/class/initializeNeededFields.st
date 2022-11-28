initialization
initializeNeededFields

	author := CZAuthor new.
	title := CZTitle new.
	bookTitle := CZBookTitle new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add: title; add: bookTitle; add:year.
	
	^neededFields 