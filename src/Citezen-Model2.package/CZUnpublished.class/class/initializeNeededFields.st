initialization
initializeNeededFields

	author := CZAuthor new.
	title := CZTitle new.
	note := CZNote new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add: title; add: note.
	
	^neededFields 