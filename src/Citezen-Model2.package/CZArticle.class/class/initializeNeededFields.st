initialization
initializeNeededFields
	|author title journal year|
	self author: CZAuthor new.
	self title: CZTitle new.
	self journal: CZJournal new.
	self year: CZYear new.
	
	neededFields := OrderedCollection new.
	neededFields add: self author; add: self title; add:self journal; add:self year.
	
	^neededFields 