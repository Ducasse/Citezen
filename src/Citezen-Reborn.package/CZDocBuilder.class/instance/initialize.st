initialize
initialize
	super initialize.
	doc := CZDoc new.
	self authorMatchingString: '*'.
	localization := CZLocalisation new.
	self fieldOrder: #(#author #title #chapter #journal #booktitle #volume #pages #publisher #school #year #url #doi).
	self doNotAllowEmptySections.
	self setFilteringOn.
	self keysOfBlackListedEntries: self defaultKeysOfBlackListedEntries