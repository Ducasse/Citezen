initialization
initializeNeededFields

	author := CZAuthor new.
	title := CZTitle new.
	institution := CZInstitution new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add: title; add: institution; add:year.
	
	^neededFields 