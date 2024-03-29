initialize
initialize

	super initialize.
	workingDirectory := FileSystem disk workingDirectory.
	doc := self rootDocumentClass new.
	self authorMatchingString: '*'.
	localization := self localizationClass new.
	self english.
	self fieldOrder: self defaultFieldOrder.
	self doNotAllowEmptySections.
	self setFilteringOn.
	self keysOfBlackListedEntries: self defaultKeysOfBlackListedEntries.
	currentSectionLevel := 2.
	years := 1990 to: Year currentYearNumber.