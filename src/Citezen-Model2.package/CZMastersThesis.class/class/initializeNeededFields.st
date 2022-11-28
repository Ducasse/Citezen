initialization
initializeNeededFields

	author := CZAuthor new.
	title := CZTitle new.
	school := CZSchool new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add: title; add: school; add:year.
	
	^neededFields 