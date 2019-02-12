as yet unclassified
initialize
	super initialize.
	
	parserClass := CZBibParser.
	rules := OrderedCollection new.
	typeFieldsMatching := Dictionary new.
	warnings := true.
	self initializeTypeFieldsMatching.
	self initializeBibtexTypes.
