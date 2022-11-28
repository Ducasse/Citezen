initialization
initializeNeededFields

	self author: CZAuthor new.
	self title: CZTitle new.
	self bookTitle: CZBookTitle new.
	self year: CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: self author; add:self title; add: self bookTitle; add:self year.
	
	^neededFields 