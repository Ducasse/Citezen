initialization
initializeNeededFields

	title := CZTitle new.
	year := CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: title; add:year.
	
	^neededFields 