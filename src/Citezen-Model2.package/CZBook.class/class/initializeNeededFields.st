initialization
initializeNeededFields

	author := CZAuthor new.
	editor := CZEditor new.
	title := CZTitle new.
	publisher := CZPublisher new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add:editor; add: title; add:publisher; add:year.
	
	^neededFields 