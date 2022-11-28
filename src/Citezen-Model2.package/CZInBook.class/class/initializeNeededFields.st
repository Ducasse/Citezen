initialization
initializeNeededFields
	
	author := CZAuthor new.
	editor := CZEditor new.
	title := CZTitle new.
	chapter := CZChapter new.
	pages := CZPages new.
	publisher := CZPublisher new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: author; add:editor; add: title; add: chapter; add:pages; add:publisher; add:year.
	
	^neededFields 